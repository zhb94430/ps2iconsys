OBJECTS = obj_loader.o ps2_iconsys.o ps2_ps2icon.o \
		  gbImageLoader.o gbImageLoader_TGA.o \
		  gbImageLoader_BMP.o gbException.o
CC = g++
CFLAGS = -Wall -O2 -std=c++17
CFLAGS_DEBUG = -Wall -g -std=c++17

VPATH = src include gbLib/src gbLib/include

INC_DIR = /Users/Peter/GitRepos/OpenUSD_Install/include
CFLAGS += -I$(INC_DIR)
CFLAGS_DEBUG += -I$(INC_DIR)


all: ps2icon_tools

ps2icon_tools: obj_to_ps2 ps2_to_obj iconsys_builder

iconsys_builder: $(OBJECTS) iconsys_builder.o
	$(CC) $(CFLAGS) -o iconsys_builder $(OBJECTS) iconsys_builder.o

ps2_to_obj: $(OBJECTS) ps2icon_to_obj.o
	$(CC) $(CFLAGS) -o ps2icon_to_obj $(OBJECTS) ps2icon_to_obj.o

obj_to_ps2: $(OBJECTS) obj_to_ps2icon.o
	$(CC) $(CFLAGS) -o obj_to_ps2icon $(OBJECTS) obj_to_ps2icon.o

%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

remake: clean all

debug: CFLAGS = $(CFLAGS_DEBUG)
debug: remake

.PHONY : clean doxygen_doc
clean:
	rm $(OBJECTS) iconsys_builder.o ps2icon_to_obj.o obj_to_ps2icon.o iconsys_builder ps2icon_to_obj obj_to_ps2icon

doxygen_doc:
	doxygen DOXYGEN.cfg
