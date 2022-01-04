# Safari WebAssembly i32.atomic.wait bug

Steps:
* compile using `wat2wasm --enable-threads worker.wat` (or use my precompiled version)
* run `./server.py` and go to localhost:4000 in a browser
* open the console
* see two console messages being printed

Expected behavior (seen in Chrome, FF, Edge): 1 second delay in between the two messages

Actual behavior (Safari 15.2 on Big Sur): 1000 second delay in between the two messages (I think?)

Note that when removing three zeroes from the timeout in worker.wat that you get about 1 second. So I suspect that it's a factor 1000 off.
