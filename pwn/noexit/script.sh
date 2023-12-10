#!/bin/bash
for i in {48..125}; do
        touch "$(printf \\$(printf '%03o' $i))"
done