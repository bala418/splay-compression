TARGET = main

SRC = src
INC = include
BIN = build

SOURCE = $(wildcard $(SRC)/*.cpp)
OBJECT = $(patsubst %, $(BIN)/%, $(notdir $(SOURCE:.cpp=.o)))

CC = g++
CFLAGS = -std=c++20 -I$(INC)

$(BIN)/$(TARGET): $(OBJECT)
	$(CC) -o $@ $^

$(BIN)/%.o: $(SRC)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: help run clean

run:
	$(BIN)/$(TARGET)
	$(BIN)/$(TARGET)

clean:
	rm -f $(BIN)/$(TARGET) $(OBJECT)

help:
	@echo "src: $(SOURCE)"
	@echo "obj: $(OBJECT)"
