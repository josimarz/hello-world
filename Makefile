CXX					:= g++
CXX_FLAGS 	:= -std=c++20 -ggdb
LDFLAGS			:=

BIN					:= bin
SRC					:= src
INCLUDE			:= -Iinclude
LIBRARIES		:=
EXECUTABLE	:= helloworld

all: $(BIN)/$(EXECUTABLE)

run:	clean all
			clear
			./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) $(LDFLAGS) $(INCLUDE) $^ -o $@ $(LIBRARIES)

clean: -rm $(BIN)/*