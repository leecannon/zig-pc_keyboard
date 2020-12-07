//! A standard Japan 106-key (or 109-key including Windows keys) keyboard.
//! Has a 2-row high Enter key, with Backslash above.

usingnamespace @import("../../pc_keyboard.zig");

const us104 = @import("us104.zig");

pub fn map_keycode(keycode: KeyCode, modifiers: Modifiers, handle_ctrl: HandleControl) DecodedKey {
    switch (keycode) {
        .BackTick => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "`" };
            } else {
                return .{ .Unicode = "@" };
            }
        },
        .Escape => return DecodedKey{ .Unicode = "\x1B" },
        .Key2 => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "\"" };
            } else {
                return .{ .Unicode = "2" };
            }
        },
        .Key6 => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "&" };
            } else {
                return .{ .Unicode = "6" };
            }
        },
        .Key7 => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "'" };
            } else {
                return .{ .Unicode = "7" };
            }
        },
        .Key8 => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "(" };
            } else {
                return .{ .Unicode = "8" };
            }
        },
        .Key9 => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = ")" };
            } else {
                return .{ .Unicode = "9" };
            }
        },
        .Key0 => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = " " };
            } else {
                return .{ .Unicode = "0" };
            }
        },
        .Minus => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "=" };
            } else {
                return .{ .Unicode = "-" };
            }
        },
        .Equals => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "+" };
            } else {
                return .{ .Unicode = ";" };
            }
        },
        .SemiColon => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "*" };
            } else {
                return .{ .Unicode = ":" };
            }
        },
        .Quote => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "~" };
            } else {
                return .{ .Unicode = "^" };
            }
        },
        else => return us104.map_keycode(keycode, modifiers, handle_ctrl),
    }
}

test "" {
    @import("std").testing.refAllDecls(@This());
}
