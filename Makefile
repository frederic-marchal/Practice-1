# Directories
SRC_DIR = src/edu/ceu/programming
BIN_DIR = bin
JAVADOC_DIR = docs
MAIN_CLASS = edu.ceu.programming.Practice1Main

# Java compiler settings
JAVAC = javac
JAVA = java
JFLAGS = -d $(BIN_DIR)

# Finding Java source files
SOURCES := $(shell find src -name "*.java")

# Default target
all: compile javadoc

# Compile Java files
compile:
	mkdir -p $(BIN_DIR)
	$(JAVAC) $(JFLAGS) $(SOURCES)

# Generate Javadoc
javadoc:
	mkdir -p $(JAVADOC_DIR)
	javadoc -d $(JAVADOC_DIR) -sourcepath src -subpackages edu

# Run the program (default with 1,000,000 iterations)
run:
	java -cp $(BIN_DIR) $(MAIN_CLASS) 1000000

# Clean up compiled files and documentation
clean:
	rm -rf $(BIN_DIR) $(JAVADOC_DIR)

.PHONY: all compile javadoc run clean

