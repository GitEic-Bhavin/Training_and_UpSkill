#!/bin/bash

function hello() {
    echo "Hello! $1"
    now
}

function now() {
    echo "It's $(date +%r)"
}

hello $1

# Global Variables

name="bob"

myfunction() {
    name="tom"
    echo "Hi $name! This is global variables."
}
myfunction