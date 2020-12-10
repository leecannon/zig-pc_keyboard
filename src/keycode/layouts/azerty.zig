usingnamespace @import("../../pc_keyboard.zig");

pub fn mapKeycode(keycode: KeyCode, modifiers: Modifiers, handle_ctrl: HandleControl) DecodedKey {
    const map_to_unicode = handle_ctrl == .MapLettersToUnicode;
    switch (keycode) {
        .BackTick => return DecodedKey{ .Unicode = "²" },
        .Escape => return DecodedKey{ .Unicode = "\x1B" },
        .HashTilde => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "*" };
            } else {
                return DecodedKey{ .Unicode = "µ" };
            }
        },
        .Key1 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "1" };
            } else {
                return DecodedKey{ .Unicode = "&" };
            }
        },
        .Key2 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "2" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "~" };
            } else {
                return DecodedKey{ .Unicode = "é" };
            }
        },
        .Key3 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "3" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "#" };
            } else {
                return DecodedKey{ .Unicode = "\"" };
            }
        },
        .Key4 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "4" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "{" };
            } else {
                return DecodedKey{ .Unicode = "'" };
            }
        },
        .Key5 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "5" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "[" };
            } else {
                return DecodedKey{ .Unicode = "(" };
            }
        },
        .Key6 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "6" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "|" };
            } else {
                return DecodedKey{ .Unicode = "-" };
            }
        },
        .Key7 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "7" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "`" };
            } else {
                return DecodedKey{ .Unicode = "è" };
            }
        },
        .Key8 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "8" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "\\" };
            } else {
                return DecodedKey{ .Unicode = "_" };
            }
        },
        .Key9 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "9" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "^" };
            } else {
                return DecodedKey{ .Unicode = "ç" };
            }
        },
        .Key0 => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "0" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "@" };
            } else {
                return DecodedKey{ .Unicode = "à" };
            }
        },
        .Minus => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "°" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "]" };
            } else {
                return DecodedKey{ .Unicode = ")" };
            }
        },
        .Equals => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "+" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "}" };
            } else {
                return DecodedKey{ .Unicode = "=" };
            }
        },
        .Backspace => return DecodedKey{ .Unicode = "\x08" },
        .Tab => return DecodedKey{ .Unicode = "\t" },
        .Q => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0011}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "A" };
            } else {
                return DecodedKey{ .Unicode = "a" };
            }
        },
        .W => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0017}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "Z" };
            } else {
                return DecodedKey{ .Unicode = "z" };
            }
        },
        .E => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0005}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "E" };
            } else {
                return DecodedKey{ .Unicode = "e" };
            }
        },
        .R => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0012}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "R" };
            } else {
                return DecodedKey{ .Unicode = "r" };
            }
        },
        .T => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0014}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "T" };
            } else {
                return DecodedKey{ .Unicode = "t" };
            }
        },
        .Y => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0019}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "Y" };
            } else {
                return DecodedKey{ .Unicode = "y" };
            }
        },
        .U => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0015}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "U" };
            } else {
                return DecodedKey{ .Unicode = "u" };
            }
        },
        .I => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0009}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "I" };
            } else {
                return DecodedKey{ .Unicode = "i" };
            }
        },
        .O => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000F}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "O" };
            } else {
                return DecodedKey{ .Unicode = "o" };
            }
        },
        .P => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0010}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "P" };
            } else {
                return DecodedKey{ .Unicode = "p" };
            }
        },
        .BracketSquareLeft => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "¨" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "ˇ" };
            } else {
                return DecodedKey{ .Unicode = "^" };
            }
        },
        .BracketSquareRight => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "£" };
            } else if (modifiers.alt_gr) {
                return DecodedKey{ .Unicode = "¤" };
            } else {
                return DecodedKey{ .Unicode = "$" };
            }
        },
        .BackSlash => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "µ" };
            } else {
                return DecodedKey{ .Unicode = "*" };
            }
        },
        .A => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0001}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "Q" };
            } else {
                return DecodedKey{ .Unicode = "q" };
            }
        },
        .S => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0013}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "S" };
            } else {
                return DecodedKey{ .Unicode = "s" };
            }
        },
        .D => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0004}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "D" };
            } else {
                return DecodedKey{ .Unicode = "d" };
            }
        },
        .F => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0006}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "F" };
            } else {
                return DecodedKey{ .Unicode = "f" };
            }
        },
        .G => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0007}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "G" };
            } else {
                return DecodedKey{ .Unicode = "g" };
            }
        },
        .H => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0008}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "H" };
            } else {
                return DecodedKey{ .Unicode = "h" };
            }
        },
        .J => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000A}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "J" };
            } else {
                return DecodedKey{ .Unicode = "j" };
            }
        },
        .K => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000B}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "K" };
            } else {
                return DecodedKey{ .Unicode = "k" };
            }
        },
        .L => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000C}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "L" };
            } else {
                return DecodedKey{ .Unicode = "l" };
            }
        },
        .SemiColon => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "M" };
            } else {
                return DecodedKey{ .Unicode = "m" };
            }
        },
        .Quote => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "%" };
            } else {
                return DecodedKey{ .Unicode = "ù" };
            }
        },
        // Enter gives LF, not CRLF or CR
        .Enter => return DecodedKey{ .Unicode = "\n" },
        .Z => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{001A}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "W" };
            } else {
                return DecodedKey{ .Unicode = "w" };
            }
        },
        .X => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0018}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "X" };
            } else {
                return DecodedKey{ .Unicode = "x" };
            }
        },
        .C => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0003}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "C" };
            } else {
                return DecodedKey{ .Unicode = "c" };
            }
        },
        .V => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0016}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "V" };
            } else {
                return DecodedKey{ .Unicode = "v" };
            }
        },
        .B => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{0002}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "B" };
            } else {
                return DecodedKey{ .Unicode = "b" };
            }
        },
        .N => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000E}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "N" };
            } else {
                return DecodedKey{ .Unicode = "n" };
            }
        },
        .M => {
            if (map_to_unicode and modifiers.is_ctrl()) {
                return DecodedKey{ .Unicode = "\u{000D}" };
            } else if (modifiers.isCaps()) {
                return DecodedKey{ .Unicode = "?" };
            } else {
                return DecodedKey{ .Unicode = "," };
            }
        },
        .Comma => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "." };
            } else {
                return DecodedKey{ .Unicode = ";" };
            }
        },
        .Fullstop => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "/" };
            } else {
                return DecodedKey{ .Unicode = ":" };
            }
        },
        .Slash => {
            if (modifiers.isShifted()) {
                return DecodedKey{ .Unicode = "§" };
            } else {
                return DecodedKey{ .Unicode = "!" };
            }
        },
        .Spacebar => return DecodedKey{ .Unicode = " " },
        .Delete => return DecodedKey{ .Unicode = "\x7F" },
        .NumpadSlash => return DecodedKey{ .Unicode = "/" },
        .NumpadStar => return DecodedKey{ .Unicode = "*" },
        .NumpadMinus => return DecodedKey{ .Unicode = "-" },
        .Numpad7 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "7" } else return DecodedKey{ .RawKey = .Home };
        },
        .Numpad8 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "8" } else return DecodedKey{ .RawKey = .ArrowUp };
        },
        .Numpad9 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "9" } else return DecodedKey{ .RawKey = .PageUp };
        },
        .NumpadPlus => return DecodedKey{ .Unicode = "+" },
        .Numpad4 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "4" } else return DecodedKey{ .RawKey = .ArrowLeft };
        },
        .Numpad5 => return DecodedKey{ .Unicode = "5" },
        .Numpad6 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "6" } else return DecodedKey{ .RawKey = .ArrowRight };
        },
        .Numpad1 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "1" } else return DecodedKey{ .RawKey = .End };
        },
        .Numpad2 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "2" } else return DecodedKey{ .RawKey = .ArrowDown };
        },
        .Numpad3 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "3" } else return DecodedKey{ .RawKey = .PageDown };
        },
        .Numpad0 => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "0" } else return DecodedKey{ .RawKey = .Insert };
        },
        .NumpadPeriod => {
            if (modifiers.numlock) return DecodedKey{ .Unicode = "." } else return DecodedKey{ .Unicode = "\x7F" };
        },
        .NumpadEnter => return DecodedKey{ .Unicode = "\n" },
        .ShiftLeft => return DecodedKey{ .Unicode = "<" },
        else => return DecodedKey{ .RawKey = keycode },
    }
}

test "" {
    @import("std").testing.refAllDecls(@This());
}
