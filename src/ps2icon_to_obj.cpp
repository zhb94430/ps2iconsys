/**
 * @file src/ps2icon_to_obj.cpp
 *
 * @brief A tool for converting PS2 Icons to OBJbuild_header/
 */
#include <iostream>
#include "../include/ps2_ps2icon.hpp"
#include "../include/obj_loader.hpp"
#include "../gbLib/include/gbException.hpp"
#include "../gbLib/include/gbColor.hpp"
#include "../gbLib/include/gbImageLoader.hpp"

// OpenUSD Includes
#include "pxr/pxr.h"
#include "pxr/usd/usd/stage.h"
#include "pxr/usd/usdGeom/mesh.h"
#include "pxr/usd/usdGeom/primvarsAPI.h"
#include "pxr/usd/usdShade/material.h"
#include "pxr/usd/usdShade/shader.h"
#include "pxr/usd/usdShade/materialBindingAPI.h"
#include "pxr/base/vt/array.h"
#include "pxr/base/gf/vec3f.h"

char const* ps2_input_file      = NULL;		///< path to the input file
char const* obj_output_file     = NULL;		///< path to the output file
char const* texture_output_file = NULL;		///< path to the output texture file
bool verbose_output             = false;	///< flag for verbose output

/** Print a help text on screen
 * @param[in] self Name of the executable (e.g. obtained from argv[0])
 */
void PrintHelp(char* self)
{
	std::cout << "********************************************************"    << "\n"
		      << " *** PS2Icon to OBJ Converter  V-1.0                ***"     << "\n"
		      << "  **  by Ghulbus Inc.  (http://www.ghulbus-inc.de/) **"      << "\n"
			  << "   **************************************************"       << "\n"
			  << "\n"
			  << " Usage: " << self << " [OPTION]..."                          << "\n"
			  << "Extract geometry and texture from a PS2Icon file"            << "\n"
			  << "\n"
			  << "  -h,  --help            display this help"                  << "\n"
			  << "  -f,  --input-file      PS2Icon file used as input"         << "\n"
			  << "  -o,  --output-file     Name of the OBJ destination file"   << "\n"
			  << "  -ot, --output-texture  Texture file output (TGA)"          << "\n"
			  << "  -v,  --verbose         activate verbose output"            << "\n"
			  << "\n"
			  << " Examples:"                                                             << "\n"
			  << "  " << self << " -f foo.icn"                                            << "\n"
			  << "Extracts geometry and texture info from foo.icn to default.obj and"     << "\n"
			  << "default.tga."                                                           << "\n"
			  << "\n"
			  << "  " << self << " -f foo.icn -o out.obj -ot out.tga"                     << "\n"
			  << "Extracts geometry and texture info from foo.icn and saves it out to"    << "\n"
			  << "out.obj and out.tga."                                                   << "\n"
			  << std::endl;
}

/** Parse the command line arguments and set globals accordingly
 * @param[in] argc argc
 * @param[in] argv argv
 */
void ParseCommandLine(int argc, char* argv[])
{
	for(int i=1; i<argc; i++) {
		//Flag parameters:
		if( (strcmp( argv[i], "-h" ) == 0) || (strcmp( argv[i], "--help" ) == 0) ) {
			PrintHelp(argv[0]);
			exit(0);
		} else if( (strcmp( argv[i], "-v" ) == 0) || (strcmp( argv[i], "--verbose" ) == 0) ) {
			verbose_output = true;
		} else if(i < argc-1) {
		//Parameters with 1 argument
			if( (strcmp( argv[i], "-f" ) == 0) || (strcmp( argv[i], "--input-file" ) == 0) ) {
				ps2_input_file = argv[++i];
			} else if( (strcmp( argv[i], "-o" ) == 0) || (strcmp( argv[i], "--output-file" ) == 0) ) {
				obj_output_file = argv[++i];
			} else if( (strcmp( argv[i], "-ot" ) == 0) || (strcmp( argv[i], "--output-texture" ) == 0) ) {
				texture_output_file = argv[++i];
			} else {
				std::cout << "Invalid argument.\n" << std::endl;
				PrintHelp(argv[0]);
				exit(1);
			}
		} else {
			std::cout << "Invalid argument.\n" << std::endl;
			PrintHelp(argv[0]);
			exit(1);
		}
	}
}

PS2Icon* LoadPS2Icon()
{
	PS2Icon* ret = NULL;
	if(verbose_output)
		std::cout << " * Reading PS2Icon file \"" << ps2_input_file << "\"...\n";
	try {
		ret = new PS2Icon(ps2_input_file);
	} catch( std::exception e ) {
		std::cout << "File read error: \"" << ps2_input_file << "\"" << std::endl;
		exit(1);
	}
	if(verbose_output)
		std::cout << " **  Found geometry - " << ret->GetNVertices() << " vertices, " 
			<< ret->GetNShapes() << " shapes." << std::endl;
	if(ret->GetNFrames() > 1) {
		std::cout << " **  Found animation - " << ret->GetNFrames() << " frames." << std::endl;
	}
	if(verbose_output)
		std::cout << " *  done." << std::endl;
	return ret;
}

void WriteOBJFile(PS2Icon* ps2_icon)
{
	OBJ_FileLoader obj_file;
	OBJ_Mesh obj_mesh(ps2_input_file);
	if(verbose_output)
		std::cout << " * Convert geometry data from \"" << ps2_input_file << "\"...";
	ps2_icon->BuildMesh(&obj_mesh);
	if(verbose_output)
		std::cout << "done." << std::endl;

	//WIP



	// Set up OpenUSD
	PXR_NAMESPACE_USING_DIRECTIVE
	// Initialize stage & mesh
    UsdStageRefPtr stage = UsdStage::CreateNew("default.usda");
    UsdGeomMesh mesh = UsdGeomMesh::Define(stage, SdfPath("/defaultMesh"));

	// Define data arrays to obtain mesh geometry from OBJ_Mesh
	std::vector<double> geometry(obj_mesh.GetNVertices()*3);
	std::vector<double> normals(obj_mesh.GetNVertices()*3);
	std::vector<double> texture(obj_mesh.GetNVertices()*3);
	std::vector<OBJ_Mesh::Face> faces(obj_mesh.GetNFaces());

	// Get mesh geometry from OBJ_Mesh
	obj_mesh.GetMeshGeometry(&geometry[0], &normals[0], &texture[0], &faces[0], 1.0);

    // Pass the vertex positions
    VtVec3fArray points_usd;
	points_usd.reserve(obj_mesh.GetNVertices());
	for(size_t i=0; i<obj_mesh.GetNVertices(); i++) {
		points_usd.push_back(GfVec3f(*(obj_mesh.GetVertexX(i)), -*(obj_mesh.GetVertexY(i)), *(obj_mesh.GetVertexZ(i))));
	}
	mesh.CreatePointsAttr().Set(points_usd);

	// Pass the normals
    VtVec3fArray normals_usd;
	normals_usd.reserve(obj_mesh.GetNVertices());
	for(size_t i=0; i<obj_mesh.GetNVertices(); i++) {
		normals_usd.push_back(GfVec3f(*(obj_mesh.GetNormalX(i)), *(obj_mesh.GetNormalY(i)), *(obj_mesh.GetNormalZ(i))));
	}
	mesh.CreateNormalsAttr().Set(normals_usd);

	// Pass the texture coordinates
	VtVec2fArray texture_coords_usd;
	texture_coords_usd.reserve(obj_mesh.GetNVertices());
	for(size_t i=0; i<obj_mesh.GetNVertices(); i++) {
		texture_coords_usd.push_back(GfVec2f(*(obj_mesh.GetTextureX(i)), *(obj_mesh.GetTextureY(i))));
	}

	// Create the UV primvar
	UsdGeomPrimvarsAPI primvarsAPI(mesh);
	UsdGeomPrimvar uvPrimvar = primvarsAPI.CreatePrimvar(TfToken("st"), SdfValueTypeNames->TexCoord2fArray, UsdGeomTokens->vertex);
	uvPrimvar.Set(texture_coords_usd);

	// Pass the faces
	VtIntArray faceVertexCounts(obj_mesh.GetNFaces(), 3);
	VtIntArray faceVertexIndices;
	faceVertexIndices.reserve(obj_mesh.GetNFaces()*3);
	for(size_t i=0; i<obj_mesh.GetNFaces(); i++) {
		faceVertexIndices.push_back(faces[i].vert1);
		faceVertexIndices.push_back(faces[i].vert2);
		faceVertexIndices.push_back(faces[i].vert3);
	}
	mesh.CreateFaceVertexCountsAttr().Set(faceVertexCounts);
	mesh.CreateFaceVertexIndicesAttr().Set(faceVertexIndices);

	// Setup the material
	// UsdShadeMaterial material = UsdShadeMaterial::Define(stage, SdfPath("/Root/Material"));
	// UsdShadeShader shader = UsdShadeShader::Define(stage, SdfPath("/Root/Material/Shader"));
	// shader.CreateIdAttr(VtValue("UsdPreviewSurface"));

	// UsdShadeInput diffuseColorInput = shader.CreateInput(TfToken("diffuseColor"), SdfValueTypeNames->Color3f);
	// diffuseColorInput.Set(GfVec3f(1.0f, 0.0f, 0.0f));

	// material.CreateSurfaceOutput().ConnectToSource(shader.ConnectableAPI(), TfToken("surface"));

	// UsdShadeMaterialBindingAPI shadeMaterialBindingAPI(mesh);
	// shadeMaterialBindingAPI.Bind(material);

    // Save the stage to a file
    stage->Save();
	// if (!stage->Export("./test.usd"))
	// {
	// 	std::cerr << "Failed to write USD file" << std::endl;	
	// }
	// else
	// {
	// 	std::cout << "Successfully wrote USD file" << std::endl;
	// }



	// WIP End

	if(verbose_output)
		std::cout << " * Writing geometry output to file \"" << obj_output_file << "\"...";
	obj_file.AddMesh(obj_mesh);
	try {
		obj_file.WriteFile(obj_output_file);
	} catch( Ghulbus::gbException e ) {
		std::cout << "\nError while writing to \"" << obj_output_file << "\"" << std::endl;
		exit(1);
	}
	if(verbose_output)
		std::cout << "done." << std::endl;
}

void WriteTextureFile(PS2Icon* ps2_icon)
{
	unsigned int texture_data[128*128];
	if(verbose_output)
		std::cout << " * Convert texture data from \"" << ps2_input_file << "\"..." ;
	ps2_icon->GetTextureData(texture_data);
	//manual conversion required, since WriteImage() requires 
	// GBCOLOR32 data, whose bit pattern is not fix;
	for(int i=0; i<16384; i++) {
		texture_data[i] = GhulbusGraphics::GBCOLOR32::ARGB( static_cast<int>((texture_data[i] >> 24) & 0xff),
															static_cast<int>((texture_data[i] >> 16) & 0xff),
															static_cast<int>((texture_data[i] >>  8) & 0xff),
															static_cast<int>((texture_data[i])       & 0xff) );
	}
	//in addition the texture is flipped horizontally:
	for(int row=0; row<64; row++) {
		for(int i=0; i<128; i++) {
			texture_data[row*128 + i] ^= texture_data[(127-row)*128 + i] 
				^= texture_data[row*128 + i] ^= texture_data[(127-row)*128 + i];
		}
	}

	if(verbose_output)
		std::cout << "done." << std::endl;

	if(verbose_output)
		std::cout << " * Writing texture to file \"" << texture_output_file << "\"...";
	try {
		GhulbusUtil::WriteImage(texture_output_file, texture_data, 128, 128);
	} catch( Ghulbus::gbException e ) {
		std::cout << "\nError while writing to \"" << texture_output_file << "\"" << std::endl;
		exit(1);
	}
	if(verbose_output)
		std::cout << "done." << std::endl;
}

int main(int argc, char* argv[])
{
	ParseCommandLine(argc, argv);

	if(!ps2_input_file) {
		std::cout << "No input file specified.\n" << std::endl;
		PrintHelp(argv[0]);
		exit(1);
	}
	std::cout << "PS2Icon to OBJ Converter  V-1.0\n by Ghulbus Inc.  (http://www.ghulbus-inc.de/)\n" << std::endl;
	if(!obj_output_file)     { obj_output_file = "default.obj"; }
	if(!texture_output_file) { texture_output_file = "default.tga"; }

	PS2Icon* ps2_icon = LoadPS2Icon();

	WriteOBJFile(ps2_icon);

	WriteTextureFile(ps2_icon);
	
	std::cout << "Success :)" << std::endl;

	return 0;
}
