(module
  (memory (export "memory") 1 1 shared)
  (func $sleep (result i32)
    (i32.atomic.wait
      (i32.const 0)           ;; address
      (i32.const 0)           ;; expected value
      (i64.const 1000000000)) ;; timeout in nanoseconds (1,000,000,000 nanoseconds = 1 second)
    )
  (export "sleep" (func $sleep))
)
