# Lyternum

Lyternum is a simple terminal application written in Bash. It allows users to quickly convert Roman numerals into Arabic numbers directly from the command line.

## Features

- Converts Roman numeral strings (e.g., `xxv`) into Arabic numbers (e.g., `25`)
- Lightweight and easy to use
- No dependencies beyond Bash

## Usage

Simply type `lrnum` in your terminal followed by a Roman numeral string, for example:

```bash
lrnum xxv
```

**Output:**
```
25
```

## Example

```bash
$ lrnum iv
4

$ lrnum XLII
42

$ lrnum mcmxcix
1999
```

## Installation Guide

Follow the instructions below to install and uninstall the program.

### Installation

1. **Open a terminal.**
2. **Navigate to the `lyternum` folder:**
   ```
   cd lyternum
   ```
3. **Make the install script executable:**
   ```
   chmod +x install.sh
   ```
4. **Run the install script:**
   ```
   ./install.sh
   ```
   This will install the program.

### Uninstallation

To remove the program, follow the same steps as the `install.sh` file but for the `uninstall.sh` file instead; run the uninstall script from the folder:
```
./uninstall.sh
```
This will clean up installed files.

## Notes

- Input is case-insensitive (`XXV`, `xxv`, and `XxV` all work).
- Only valid Roman numerals will be converted; invalid input may result in an error or incorrect output.
