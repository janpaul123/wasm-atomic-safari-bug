# Safari WebAssembly i32.atomic.wait bug

Steps:
* compile using `wat2wasm --enable-threads worker.wat` (or use my precompiled version)
* run `./server.py` and go to localhost:4000 in a browser
* see two messages being printed on the screen (for convenience both in the HTML and in the dev console)

Expected behavior (seen in Chrome, FF, Edge): 1 second delay in between the two messages

Actual behavior (Safari 15.2 on Big Sur; also r287554 on https://webkit.org/build-archives/#mac-bigsur-x86_64%20arm64): 1000 second delay in between the two messages (I think?)

Note that when removing three zeroes from the timeout in worker.wat that you get about 1 second. So I suspect that it's a factor 1000 off.
