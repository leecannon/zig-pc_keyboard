//! A standard United Kingdom 102-key (or 105-key including Windows keys) keyboard.
//! Has a 2-row high Enter key, with Backslash next to the left shift.

const pc_keyboard = @import("../../pc_keyboard.zig");

const us104 = @import("us104.zig");

pub fn mapKeycode(keycode: pc_keyboard.KeyCode, modifiers: pc_keyboard.Modifiers, handle_ctrl: pc_keyboard.HandleControl) pc_keyboard.DecodedKey {
    const map_to_unicode = handle_ctrl == .MapLettersToUnicode;
    switch (keycode) {
        .Minus => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "{" };
            } else {
                return .{ .Unicode = "[" };
            }
        },
        .Equals => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "}" };
            } else {
                return .{ .Unicode = "]" };
            }
        },
        .Q => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "\"" };
            } else {
                return .{ .Unicode = "'" };
            }
        },
        .W => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "<" };
            } else {
                return .{ .Unicode = "," };
            }
        },
        .E => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = ">" };
            } else {
                return .{ .Unicode = "." };
            }
        },
        .R => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0010}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "P" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "p" };
            }
        },
        .T => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0019}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "Y" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "y" };
            }
        },
        .Y => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0006}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "F" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "f" };
            }
        },
        .U => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0007}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "G" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "g" };
            }
        },
        .I => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0003}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "C" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "c" };
            }
        },
        .O => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0012}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "R" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "r" };
            }
        },
        .P => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000C}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "L" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "l" };
            }
        },
        .BracketSquareLeft => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "?" };
            } else {
                return .{ .Unicode = "/" };
            }
        },
        .BracketSquareRight => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "+" };
            } else {
                return .{ .Unicode = "=" };
            }
        },
        .S => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000F}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "O" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "o" };
            }
        },
        .D => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0005}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "E" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "e" };
            }
        },
        .F => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0015}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "U" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "u" };
            }
        },
        .G => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0009}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "I" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "i" };
            }
        },
        .H => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0004}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "D" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "d" };
            }
        },
        .J => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0008}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "H" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "h" };
            }
        },
        .K => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0014}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "T" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "t" };
            }
        },
        .L => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000E}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "N" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "n" };
            }
        },
        .SemiColon => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0013}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "S" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "s" };
            }
        },
        .Quote => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = "_" };
            } else {
                return .{ .Unicode = "-" };
            }
        },
        .Z => {
            if (modifiers.isShifted()) {
                return .{ .Unicode = ":" };
            } else {
                return .{ .Unicode = ";" };
            }
        },
        .X => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0011}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "Q" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "q" };
            }
        },
        .C => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000A}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "J" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "j" };
            }
        },
        .V => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000B}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "K" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "k" };
            }
        },
        .B => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0018}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "X" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "x" };
            }
        },
        .N => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0002}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "B" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "b" };
            }
        },
        .Comma => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0017}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "W" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "w" };
            }
        },
        .Fullstop => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0016}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "V" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "v" };
            }
        },
        .Slash => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{001A}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "Z" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "z" };
            }
        },
        else => return us104.mapKeycode(keycode, modifiers, handle_ctrl),
    }
}

comptime {
    @import("std").testing.refAllDecls(@This());
}
