CC = g++
CFLAGS = -I "D:\coding\SDL2\base sdl2\SDL2\x86_64-w64-mingw32\include\SDL2" \
         -I "D:\coding\SDL2\base sdl2\SDL2_image-2.8.5\x86_64-w64-mingw32\include\SDL2" \
         -I ./Assets \
         -I ./Game \
         -I ./Imgs

LDFLAGS = -L "D:\coding\SDL2\base sdl2\SDL2\x86_64-w64-mingw32\lib" \
          -L "D:\coding\SDL2\base sdl2\SDL2_image-2.8.5\x86_64-w64-mingw32\lib" \
          -lmingw32 -lSDL2main -lSDL2 -lSDL2_image

SOURCES = $(wildcard ./Game/*.cpp) $(wildcard ./Assets/*.cpp)

EXE_NAME = main.exe

all:
	$(CC) $(CFLAGS) -o $(EXE_NAME) $(SOURCES) $(LDFLAGS)
