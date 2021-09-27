const pc_keyboard = @import("../../pc_keyboard.zig");

pub fn mapKeycode(keycode: pc_keyboard.KeyCode, modifiers: pc_keyboard.Modifiers, handle_ctrl: pc_keyboard.HandleControl) pc_keyboard.DecodedKey {
    const map_to_unicode = handle_ctrl == .MapLettersToUnicode;
    switch (keycode) {
        .BackTick => return pc_keyboard.DecodedKey{ .Unicode = "²" },
        .Escape => return pc_keyboard.DecodedKey{ .Unicode = "\x1B" },
        .HashTilde => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "*" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "µ" };
            }
        },
        .Key1 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "1" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "&" };
            }
        },
        .Key2 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "2" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "~" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "é" };
            }
        },
        .Key3 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "3" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "#" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "\"" };
            }
        },
        .Key4 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "4" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "{" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "'" };
            }
        },
        .Key5 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "5" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "[" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "(" };
            }
        },
        .Key6 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "6" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "|" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "-" };
            }
        },
        .Key7 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "7" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "`" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "è" };
            }
        },
        .Key8 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "8" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "\\" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "_" };
            }
        },
        .Key9 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "9" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "^" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "ç" };
            }
        },
        .Key0 => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "0" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "@" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "à" };
            }
        },
        .Minus => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "°" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "]" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = ")" };
            }
        },
        .Equals => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "+" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "}" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "=" };
            }
        },
        .Backspace => return pc_keyboard.DecodedKey{ .Unicode = "\x08" },
        .Tab => return pc_keyboard.DecodedKey{ .Unicode = "\t" },
        .Q => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0011}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "A" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "a" };
            }
        },
        .W => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0017}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "Z" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "z" };
            }
        },
        .E => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0005}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "E" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "e" };
            }
        },
        .R => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0012}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "R" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "r" };
            }
        },
        .T => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0014}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "T" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "t" };
            }
        },
        .Y => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0019}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "Y" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "y" };
            }
        },
        .U => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0015}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "U" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "u" };
            }
        },
        .I => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0009}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "I" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "i" };
            }
        },
        .O => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000F}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "O" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "o" };
            }
        },
        .P => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0010}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "P" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "p" };
            }
        },
        .BracketSquareLeft => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "¨" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "ˇ" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "^" };
            }
        },
        .BracketSquareRight => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "£" };
            } else if (modifiers.alt_gr) {
                return pc_keyboard.DecodedKey{ .Unicode = "¤" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "$" };
            }
        },
        .BackSlash => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "µ" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "*" };
            }
        },
        .A => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0001}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "Q" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "q" };
            }
        },
        .S => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0013}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "S" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "s" };
            }
        },
        .D => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0004}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "D" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "d" };
            }
        },
        .F => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0006}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "F" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "f" };
            }
        },
        .G => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0007}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "G" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "g" };
            }
        },
        .H => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0008}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "H" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "h" };
            }
        },
        .J => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000A}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "J" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "j" };
            }
        },
        .K => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000B}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "K" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "k" };
            }
        },
        .L => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000C}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "L" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "l" };
            }
        },
        .SemiColon => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "M" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "m" };
            }
        },
        .Quote => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "%" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "ù" };
            }
        },
        // Enter gives LF, not CRLF or CR
        .Enter => return pc_keyboard.DecodedKey{ .Unicode = "\n" },
        .Z => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{001A}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "W" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "w" };
            }
        },
        .X => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0018}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "X" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "x" };
            }
        },
        .C => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0003}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "C" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "c" };
            }
        },
        .V => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0016}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "V" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "v" };
            }
        },
        .B => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{0002}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "B" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "b" };
            }
        },
        .N => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000E}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "N" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "n" };
            }
        },
        .M => {
            if (map_to_unicode and modifiers.isCtrl()) {
                return pc_keyboard.DecodedKey{ .Unicode = "\u{000D}" };
            } else if (modifiers.isCaps()) {
                return pc_keyboard.DecodedKey{ .Unicode = "?" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "," };
            }
        },
        .Comma => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "." };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = ";" };
            }
        },
        .Fullstop => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "/" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = ":" };
            }
        },
        .Slash => {
            if (modifiers.isShifted()) {
                return pc_keyboard.DecodedKey{ .Unicode = "§" };
            } else {
                return pc_keyboard.DecodedKey{ .Unicode = "!" };
            }
        },
        .Spacebar => return pc_keyboard.DecodedKey{ .Unicode = " " },
        .Delete => return pc_keyboard.DecodedKey{ .Unicode = "\x7F" },
        .NumpadSlash => return pc_keyboard.DecodedKey{ .Unicode = "/" },
        .NumpadStar => return pc_keyboard.DecodedKey{ .Unicode = "*" },
        .NumpadMinus => return pc_keyboard.DecodedKey{ .Unicode = "-" },
        .Numpad7 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "7" } else return pc_keyboard.DecodedKey{ .RawKey = .Home };
        },
        .Numpad8 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "8" } else return pc_keyboard.DecodedKey{ .RawKey = .ArrowUp };
        },
        .Numpad9 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "9" } else return pc_keyboard.DecodedKey{ .RawKey = .PageUp };
        },
        .NumpadPlus => return pc_keyboard.DecodedKey{ .Unicode = "+" },
        .Numpad4 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "4" } else return pc_keyboard.DecodedKey{ .RawKey = .ArrowLeft };
        },
        .Numpad5 => return pc_keyboard.DecodedKey{ .Unicode = "5" },
        .Numpad6 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "6" } else return pc_keyboard.DecodedKey{ .RawKey = .ArrowRight };
        },
        .Numpad1 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "1" } else return pc_keyboard.DecodedKey{ .RawKey = .End };
        },
        .Numpad2 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "2" } else return pc_keyboard.DecodedKey{ .RawKey = .ArrowDown };
        },
        .Numpad3 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "3" } else return pc_keyboard.DecodedKey{ .RawKey = .PageDown };
        },
        .Numpad0 => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "0" } else return pc_keyboard.DecodedKey{ .RawKey = .Insert };
        },
        .NumpadPeriod => {
            if (modifiers.numlock) return pc_keyboard.DecodedKey{ .Unicode = "." } else return pc_keyboard.DecodedKey{ .Unicode = "\x7F" };
        },
        .NumpadEnter => return pc_keyboard.DecodedKey{ .Unicode = "\n" },
        .ShiftLeft => return pc_keyboard.DecodedKey{ .Unicode = "<" },
        else => return pc_keyboard.DecodedKey{ .RawKey = keycode },
    }
}

comptime {
    @import("std").testing.refAllDecls(@This());
}
