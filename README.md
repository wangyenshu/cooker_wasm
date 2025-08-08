# Description
wasm version of containered https://github.com/TiddlyWiki/cooker. Converted by https://github.com/container2wasm/container2wasm.

# Example:
wasmtime --dir ./wiki::/home/wiki cooker.wasm -- sh -c "cd cooker && mkdir -p /home/wiki/split && ruby ginsu.rb /home/wiki/index.html -d /home/wiki/split"