CAKE := ./cake

all: bust.dump.S hello.dump.S

hello.dump.S: hello
bust.dump.S: bust

$(CAKE): cake.S basis_ffi.c
	$(CC) $^ -o $@

%: %.sml $(CAKE) basis_ffi.c
	$(CAKE) <$< >$@.S
	$(CC) $@.S basis_ffi.c -o $@

%.dump.S: %
	objdump -d $< >$@
