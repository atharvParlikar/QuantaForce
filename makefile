CXX = g++
CXXFLAGS = -std=c++11
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS = $(SOURCES:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

# Detect the operating system
UNAME_S := $(shell uname -s)

# Platform-specific settings
ifeq ($(UNAME_S), Darwin) # macOS
    CXXFLAGS += -I./lib
    LDFLAGS = -L./lib
    LIBS = -lraylib -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo
    EXECUTABLE = $(BIN_DIR)/game
else # Windows (assumed)
    CXXFLAGS += -IC:\raylib\include
    LDFLAGS = -LC:\raylib\lib
    LIBS = -lraylib -lopengl32 -lgdi32 -lwinmm
    EXECUTABLE = $(BIN_DIR)/game.exe
endif

.PHONY: all clean

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) | $(BIN_DIR)
	$(CXX) $(LDFLAGS) $^ $(LIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
