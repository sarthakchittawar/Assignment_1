#!/bin/bash

grep '\S' quotes.txt | awk '!visited[$0]++' > temp.txt && mv temp.txt quotes.txt
