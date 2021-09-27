//! A standard Japan 106-key (or 109-key including Windows keys) keyboard.
//! Has a 2-row high Enter key, with Backslash above.

const pc_keyboard = @import("../../pc_keyboard.zig");

const us104 = @import("us104.zig");

pub fn mapKeycode(keycode: pc_keyboard.KeyCode, modifiers: pc_keyboard.Modifiers, handle_ctrl: pc_keyboard.HandleControl) pc_keyboard.DecodedKey {
    switch (keycode) {
        .BackTick => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "`" };
            } else {
                return .{ .Unicode = "@" };
            }
        },
        .Escape => return pc_keyboard.DecodedKey{ .Unicode = "\x1B" },
        .Key2 => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "\"" };
            } else {
                return .{ .Unicode = "2" };
            }
        },
        .Key6 => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "&" };
            } else {
                return .{ .Unicode = "6" };
            }
        },
        .Key7 => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "'" };
            } else {
                return .{ .Unicode = "7" };
            }
        },
        .Key8 => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "(" };
            } else {
                return .{ .Unicode = "8" };
            }
        },
        .Key9 => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = ")" };
            } else {
                return .{ .Unicode = "9" };
            }
        },
        .Key0 => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = " " };
            } else {
                return .{ .Unicode = "0" };
            }
        },
        .Minus => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "=" };
            } else {
                return .{ .Unicode = "-" };
            }
        },
        .Equals => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "+" };
            } else {
                return .{ .Unicode = ";" };
            }
        },
        .SemiColon => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "*" };
            } else {
                return .{ .Unicode = ":" };
            }
        },
        .Quote => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "~" };
            } else {
                return .{ .Unicode = "^" };
            }
        },
        else => return us104.mapKeycode(keycode, modifiers, handle_ctrl),
    }
}

comptime {
    @import("std").testing.refAllDecls(@This());
}
