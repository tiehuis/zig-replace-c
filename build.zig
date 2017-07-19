const Builder = @import("std").build.Builder;

pub fn build(b: &Builder) {
    const exe = b.addCExecutable("main");
    exe.addCompileFlags([][]const u8 {
        "-std=c99"
    });

    const source_files = [][]const u8 {
        "compute.c",
        "compute_helper.c",
        "display.c",
        "main.c"
    };

    for (source_files) |source| {
        exe.addSourceFile(source);
    }

    exe.setOutputPath("./main");
    b.default_step.dependOn(&exe.step);
}
