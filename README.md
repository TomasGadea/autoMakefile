[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)

# Description

This bash program automates the creation of a very basic Makefile 
 to compile C++ programs. Two main options are available:

1. Add a c++ program into the Makefile for gcc compilation (`O2 optimization, c++17 version, Wall flag`)

2. Add a "make clean" option in the Makefile to remove the `.exe` files

# USAGE

1. Load the bash function in the current terminal session as follows:
     
```$> source makeit.sh```

2. If you wish to add a program (e.g. "prog.cc") in the Makefile use `-a` or `-add` flag as follows:

```$> makeit -a prog```

3. If you wish to add the clean option in the Makefile use `-c` flag:

```$> makeit -c```

