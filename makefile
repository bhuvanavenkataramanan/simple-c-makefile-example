TARGET = demo
cc = gcc
BUILD_DIR = ./build
SRC_DIR = ./src
INCLUDE_DIR = ./include
LIB_DIR = ./lib
#CFLAGS = -Wall

all: $(BUILD_DIR)/$(TARGET)

run: clean all
	clear
	@echo "Executing..."
	./$(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/$(TARGET): $(SRC_DIR)/*.c
	@echo "Building..."
	$(cc) $(CFLAGS) -I$(INCLUDE_DIR) -L$(LIB_DIR) $^ -o $@

clean:
	@echo "Clearing..."
	-rm ${BUILD_DIR}/*