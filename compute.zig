use @import("compute_helper.zig");

pub fn compute(a: u8) -> u8 {
    compute_helper(a) + 5
}
