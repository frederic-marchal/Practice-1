# Directories
SRC_DIR = src/edu/ceu/programming
BIN_DIR = bin
TEST_DIR = src/test/edu/ceu/programming
JAVADOC_DIR = docs
MAIN_CLASS = edu.ceu.programming.Practice1Main

# Java compiler settings
JAVAC = javac
JAVA = java
JFLAGS = -d $(BIN_DIR)

# Finding Java source files
SOURCES := $(shell find src -name "*.java")

# Default target
all: compile javadoc test

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

# Run tests (JUnit 5 assumed)
test:
	mkdir -p $(BIN_DIR)
	javac -d $(BIN_DIR) -cp $(BIN_DIR):lib/junit-5.8.1.jar $(TEST_DIR)/Practice1Test.java
	java -cp $(BIN_DIR):lib/junit-5.8.1.jar org.junit.runner.JUnitCore edu.ceu.programming.Practice1Test

# Clean up compiled files and documentation
clean:
	rm -rf $(BIN_DIR) $(JAVADOC_DIR)

.PHONY: all compile javadoc run test clean
