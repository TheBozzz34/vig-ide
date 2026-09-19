/// Core state for the VIG IDE.
///
/// UI and platform backends will live above this type so editor, assembler,
/// linker, and compiler actions remain testable without a running window.
pub const App = struct {
    pub const name = "VIG IDE";

    pub fn init() App {
        return .{};
    }
};

test "application metadata" {
    const app = App.init();
    _ = app;
    try std.testing.expectEqualStrings("VIG IDE", App.name);
}

const std = @import("std");
