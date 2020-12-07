//! A standard United Kingdom 102-key (or 105-key including Windows keys) keyboard.
//! Has a 2-row high Enter key, with Backslash next to the left shift.

usingnamespace @import("../../pc_keyboard.zig");

const us104 = @import("us104.zig");

pub fn map_keycode(keycode: KeyCode, modifiers: Modifiers, handle_ctrl: HandleControl) DecodedKey {
    const map_to_unicode = handle_ctrl == .MapLettersToUnicode;
    switch (keycode) {
        .Minus => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "{" };
            } else {
                return .{ .Unicode = "[" };
            }
        },
        .Equals => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "}" };
            } else {
                return .{ .Unicode = "]" };
            }
        },
        .Q => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "\"" };
            } else {
                return .{ .Unicode = "'" };
            }
        },
        .W => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "<" };
            } else {
                return .{ .Unicode = "," };
            }
        },
        .E => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = ">" };
            } else {
                return .{ .Unicode = "." };
            }
        },
        .R => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0010}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "P" };
            } else {
                return DecodedKey{ .Unicode = "p" };
            }
        },
        .T => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0019}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "Y" };
            } else {
                return DecodedKey{ .Unicode = "y" };
            }
        },
        .Y => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0006}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "F" };
            } else {
                return DecodedKey{ .Unicode = "f" };
            }
        },
        .U => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0007}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "G" };
            } else {
                return DecodedKey{ .Unicode = "g" };
            }
        },
        .I => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0003}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "C" };
            } else {
                return DecodedKey{ .Unicode = "c" };
            }
        },
        .O => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0012}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "R" };
            } else {
                return DecodedKey{ .Unicode = "r" };
            }
        },
        .P => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000C}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "L" };
            } else {
                return DecodedKey{ .Unicode = "l" };
            }
        },
        .BracketSquareLeft => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "?" };
            } else {
                return .{ .Unicode = "/" };
            }
        },
        .BracketSquareRight => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "+" };
            } else {
                return .{ .Unicode = "=" };
            }
        },
        .S => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000F}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "O" };
            } else {
                return DecodedKey{ .Unicode = "o" };
            }
        },
        .D => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0005}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "E" };
            } else {
                return DecodedKey{ .Unicode = "e" };
            }
        },
        .F => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0015}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "U" };
            } else {
                return DecodedKey{ .Unicode = "u" };
            }
        },
        .G => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0009}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "I" };
            } else {
                return DecodedKey{ .Unicode = "i" };
            }
        },
        .H => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0004}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "D" };
            } else {
                return DecodedKey{ .Unicode = "d" };
            }
        },
        .J => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0008}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "H" };
            } else {
                return DecodedKey{ .Unicode = "h" };
            }
        },
        .K => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0014}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "T" };
            } else {
                return DecodedKey{ .Unicode = "t" };
            }
        },
        .L => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000E}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "N" };
            } else {
                return DecodedKey{ .Unicode = "n" };
            }
        },
        .SemiColon => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0013}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "S" };
            } else {
                return DecodedKey{ .Unicode = "s" };
            }
        },
        .Quote => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = "_" };
            } else {
                return .{ .Unicode = "-" };
            }
        },
        .Z => {
            if (modifiers.is_shifted()) {
                return .{ .Unicode = ":" };
            } else {
                return .{ .Unicode = ";" };
            }
        },
        .X => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0011}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "Q" };
            } else {
                return DecodedKey{ .Unicode = "q" };
            }
        },
        .C => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000A}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "J" };
            } else {
                return DecodedKey{ .Unicode = "j" };
            }
        },
        .V => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000B}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "K" };
            } else {
                return DecodedKey{ .Unicode = "k" };
            }
        },
        .B => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0018}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "X" };
            } else {
                return DecodedKey{ .Unicode = "x" };
            }
        },
        .N => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0002}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "B" };
            } else {
                return DecodedKey{ .Unicode = "b" };
            }
        },
        .Comma => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0017}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "W" };
            } else {
                return DecodedKey{ .Unicode = "w" };
            }
        },
        .Fullstop => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0016}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "V" };
            } else {
                return DecodedKey{ .Unicode = "v" };
            }
        },
        .Slash => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{001A}" };
            } else if (modifiers.is_caps()) {
                return DecodedKey{ .Unicode = "Z" };
            } else {
                return DecodedKey{ .Unicode = "z" };
            }
        },
        else => return us104.map_keycode(keycode, modifiers, handle_ctrl),
    }
}

test "" {
    @import("std").testing.refAllDecls(@This());
}
