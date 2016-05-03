CPP = g++
CPPFlags = -g -Wall

SOURCE = src/main.cpp
TARGET = bin/main
LIBS = src/jsoncpp.cpp src/jsoncpp/json.h

all: $(TARGET)

clean:
	rm -f -R bin/*

rebuild: clean all

$(TARGET): $(SOURCE) $(LIBS) makefile
	$(CPP) $(CPPFlags) -o $@ $<
