WebAssembly.instantiateStreaming(fetch("worker.wasm")).then(wasm => {
    console.log("Sleeping for 1 second...");
    wasm.instance.exports.sleep();
    console.log("done!");
})
