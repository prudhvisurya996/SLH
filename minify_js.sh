#!/bin/bash
 
# Minify JavaScript files using uglify-js
 
# Path to your JavaScript files
JS_DIR="SLH"
 
# Minify each JavaScript file
for file in $JS_DIR/*.js; do
    echo "Minifying $file..."
    uglifyjs $file -o $file --compress --mangle
    echo "Minification complete for $file"
done
 
echo "All JavaScript files minified successfully!"
