# VIG IDE

The VIG IDE is a native Zig GUI for editing VIG source and coordinating the
assembler, linker, compiler, and VM toolchain.

## Bazel targets

From this directory, with sibling VIG component checkouts available:

```sh
bazelisk build //:vigide
bazelisk build //:toolchain
bazelisk test //:tests
bazelisk run //:vigide
```

The project's `.bazelversion` pin selects Bazel 8.4.2.

The executable target is `//:vigide`; application logic belongs in the
`//:vig_ide` library. The initial build deliberately does not choose a GUI
backend. Add its Bazel dependency to `MODULE.bazel` and its platform setup to
`BUILD.bazel` when the backend is selected.
