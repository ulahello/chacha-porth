default: test-run

.phony: test
test: src/test

.phony: test-run
test-run: test
	./src/test

.phony: examples
examples: examples/chacha20-stream examples/random-bytes

.phony: clean
clean: clean-examples clean-src

.phony: clean-src
clean-src:
	rm -fv src/test.asm
	rm -fv src/test

.phony: clean-examples
clean-examples:
	rm -fv examples/chacha20-stream.asm
	rm -fv examples/chacha20-stream
	rm -fv examples/random-bytes.asm
	rm -fv examples/random-bytes

src/test: src/test.porth std/* src/chacha.porth
	porth com src/test.porth

examples/chacha20-stream: examples/chacha20-stream.porth std/* src/chacha.porth
	porth com examples/chacha20-stream.porth

examples/random-bytes: examples/random-bytes.porth std/* src/chacha.porth
	porth com examples/random-bytes.porth
