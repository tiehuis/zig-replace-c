SRCS := compute.c compute_helper.c display.c main.c
OBJS := $(SRCS:%.c=build/%.o)

main: $(OBJS)
	gcc -o main $(OBJS)

$(OBJS): build/%.o: %.c | mkdirs
	gcc -std=c99 -c $< -o $@

mkdirs:
	@mkdir -p build

clean:
	rm -rf build main
