//! A standard United Kingdom 102-key (or 105-key including Windows keys) keyboard.
//! Has a 2-row high Enter key, with Backslash next to the left shift.

const pc_keyboard = @import("../../pc_keyboard.zig");

const us104 = @import("us104.zig");

pub fn mapKeycode(keycode: pc_keyboard.KeyCode, modifiers: pc_keyboard.Modifiers, handle_ctrl: pc_keyboard.HandleControl) pc_keyboard.DecodedKey {
    switch (keycode) {
        .BackTick => {
            if (modifiers.alt_gr) {
                return .{ .Unicode = "¦" };
            } else if (modifiers.isShifted()) {
                return .{ .Unicode = "¬" };
            } else {
                return .{ .Unicode = "`" };
            }
        },
        .Key2 => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "\"" };
            } else {
                return .{ .Unicode = "2" };
            }
        },
        .Quote => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "@" };
            } else {
                return .{ .Unicode = "\'" };
            }
        },
        .Key3 => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "£" };
            } else {
                return .{ .Unicode = "3" };
            }
        },
        .Key4 => {
            if (modifiers.alt_gr) {
                return .{ .Unicode = "€" };
            } else if (modifiers.isShifted()) {
                return .{ .Unicode = "$" };
            } else {
                return .{ .Unicode = "4" };
            }
        },
        .HashTilde => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "~" };
            } else {
                return .{ .Unicode = "#" };
            }
        },
        else => return us104.mapKeycode(keycode, modifiers, handle_ctrl),
    }
}

comptime {
    @import("std").testing.refAllDecls(@This());
}
