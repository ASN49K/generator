# Generator Setup and Usage Guide

This repository provides tools for generating tests and verifying code correctness using the `genn` command. Follow the instructions below to download, set up, and use the generator.

## Prerequisites

Ensure you have `git` installed and the ability to run shell scripts on your system.

## 1. Clone the Repository

To download the generator repository, run the following command:

git clone https://github.com/ASN49K/generator

## 2. Setup the Generator

Once cloned, navigate into the project directory and set up the environment by running:

cd generator
bash setup.sh

This will install the necessary dependencies and make the `genn` command available globally, so you can use it from anywhere on your system.

## 3. File Structure

To use the generator, you need three main files:

- `main.cpp`: The code you are trying to verify.
- `correct.cpp`: The reference implementation for correctness.
- `gen.cpp`: The code that generates the test cases.

These files are required for running the test verification process. 

## 4. Usage

Once the setup is complete, you can use the `genn` command to generate and verify tests.

### Basic Usage:

If the files are named exactly as `main.cpp`, `correct.cpp`, and `gen.cpp`, simply run:

genn

### Custom File Names:

If your files have different names, specify them in the following order: `main`, `correct`, and `gen`. Optionally, you can also add the number of tests to be generated:

genn main.cpp correct.cpp gen.cpp 10

In this example, `genn` will use `main.cpp`, `correct.cpp`, and `gen.cpp` and generate 10 test cases.

---

Feel free to tweak the files as needed or consult the repository for further details.

## Example:

Let's say your files are named `solution.cpp`, `reference.cpp`, and `testgen.cpp`. You can use the following command:

genn solution.cpp reference.cpp testgen.cpp

Or if you want to generate 5 tests:

genn solution.cpp reference.cpp testgen.cpp 5
