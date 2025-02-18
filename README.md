# Monte Carlo PI Approximation

## Overview
This project estimates the value of π using the Monte Carlo method in Java. The Monte Carlo method uses random sampling to approximate numerical results, and in this case, it is used to estimate the value of π by simulating random points in a unit square.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [License](#license)

## Installation
### Prerequisites
- Java 11+
- Git

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/frederic-marchal/Practice-1
   cd Practice-1
   ```

2. Compile the project:
   ```bash
   make compile
   ```

3. Generate Javadoc documentation:
   ```bash
   make javadoc
   ```

## Usage
To run the program and approximate the value of π:
```bash
make run
```
By default, this will run with `1,000,000` iterations. To run with a custom number of iterations, you can manually execute:
```bash
java -cp bin edu.ceu.programming.Practice1Main 5000000
```
(replacing `5000000` with any desired number of iterations).

## Project Structure
```
Practice-1/
│── LICENSE
│── Makefile
│── README.md
│── bin/  # Compiled Java classes
│── docs/  # Javadoc documentation
│── src/
│   ├── edu/
│   │   └── ceu/
│   │       └── programming/
│   │           ├── Practice1Main.java
│   │           └── practices/
│   │               └── Practice1.java
│   └── test/
│       └── edu/
│           └── ceu/
│               └── programming/
│                   └── Practice1Test.java
```

## License
This project is licensed under the Apache License 2.0. See the `LICENSE` file for more details.
