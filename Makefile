CXX := clang++
CPPFLAGS := -std=c++14 -Wall -I. -Isrc -I/opt/homebrew/include
LDFLAGS := -L/opt/homebrew/lib
LDLIBS := -lraylib -framework OpenGL -framework Cocoa -framework IOKit

TARGET := game
SOURCES := $(shell find src -name '*.cpp' -type f)

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CPPFLAGS) $(SOURCES) $(LDFLAGS) $(LDLIBS) -o $(TARGET)

clean:
	rm -f $(TARGET)
