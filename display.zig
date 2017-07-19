const std = @import("std");
const printf = std.io.stdout.printf;

pub fn display_char(c: u8)
{
    %%printf("{c}\n", c);
}
