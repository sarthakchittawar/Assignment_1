#!/bin/bash

awk '!visited[$0]++' quotes.txt > temp.txt && mv temp.txt quotes.txt