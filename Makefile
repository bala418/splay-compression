TARGET = main

SRC = src
INC = include
BIN = build

SOURCE = $(wildcard $(SRC)/*.cpp)
OBJECT = $(patsubst %, $(BIN)/%, $(notdir $(SOURCE:.cpp=.o)))

CC = g++
CFLAGS = -std=c++20 -I$(INC) -Wall -Werror -Wextra

RED = $(shell echo -e "\e[31m")
NC = $(shell echo -e "\e[0m")
GREEN = $(shell echo -e "\e[32m")
YELLOW = $(shell echo -e "\e[33m")
BLUE = $(shell echo -e "\e[34m")

$(BIN)/$(TARGET): $(OBJECT)
	@echo "$(RED)Linking...$(NC)"
	$(CC) -o $@ $^
	@echo "Done."

$(BIN)/%.o: $(SRC)/%.cpp
	@echo "$(GREEN)Compiling...$(NC)"
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: help run clean

run: $(BIN)/$(TARGET)
	@echo "$(YELLOW)Running...$(NC)"
	$(BIN)/$(TARGET)
	@echo "$(BLUE)Finished.$(NC)"

clean:
	rm -f $(BIN)/$(TARGET) $(OBJECT)

help:
	@echo "src: $(SOURCE)"
	@echo "obj: $(OBJECT)"
