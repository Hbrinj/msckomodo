#!/bin/bash

make > compile.err 2>&1
cat compile.err | grep "error"
