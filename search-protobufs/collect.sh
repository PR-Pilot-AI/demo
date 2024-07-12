# Collect all protobuf files in the current directory and its subdirectories
find . -type f -name '*.proto' -exec sh -c 'for file; do echo "==> $file <=="; cat "$file"; echo ""; done' _ {} +
