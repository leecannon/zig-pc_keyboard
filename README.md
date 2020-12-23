# zig-pc_keyboard

A zig reimplementation of the [pc-keyboard](https://github.com/rust-embedded-community/pc-keyboard) rust crate

## How to use

Download the repo somehow then either:

### Use a package manager

* [zigmod](https://github.com/nektro/zigmod)
* [zkg](https://github.com/mattnite/zkg)

### Add as package in `build.zig`

* To `build.zig` add:
  
   ```zig
   exe.addPackagePath("pc_keyboard", "zig-pc_keyboard/src/pc_keyboard.zig"); // or whatever the path is
   ```
* Then the package is available within any zig file:
  
   ```zig
   const pc_keyboard = @import("pc_keyboard");
   ```

### Import directly

In any zig file add:
```zig
const pc_keyboard = @import("../zig-pc_keyboard/src/pc_keyboard.zig"); // or whatever the path is from *that* file
```
