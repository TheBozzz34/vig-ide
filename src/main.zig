const app = @import("app.zig");

pub fn main() void {
    // This is the stable executable entry point for the future native GUI.
    // Keeping it small lets the application core be tested headlessly.
    _ = app.App.init();
}
