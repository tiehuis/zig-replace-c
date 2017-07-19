pub use @cImport(@cInclude("compute_helper.h"));

export fn compute(a: u8) -> u8 {
    compute_helper(a) + 5
}
