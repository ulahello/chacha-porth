# ChaCha Implementation in Porth

This is an implementation of the [ChaCha stream cipher](https://en.wikipedia.org/wiki/ChaCha_(cipher)#ChaCha_variant) written in [Porth](https://gitlab.com/tsoding/porth), mostly as an experiment in the language.
Its output is correct according to [the tests](./src/test.porth), but it should **NOT** be used for secure applications.
I'm not a cryptography or security expert.
This library is suitable for random number generation.

## Testing

The [test framework](./src/test.porth) compares the library's results against the ChaCha [RFC](./res/chacha-rfc7539.txt).

```console
$ make test-run
# output omitted
[add] passed
[xor] passed
[rotl] passed
[chacha_const] passed
[2.1.1] passed
[2.2.1] passed
[2.3.2-rounds] passed
[2.3.2-matrix] passed
```

## Examples

See the [examples](./examples) folder for simple example programs using the library.

To build and not run them, run the `examples` makefile target.
```console
$ make examples
# output omitted
```
**Caution when running them:** they write random bytes to `stdout` in a loop.
The executables can be found in the [same folder](./examples).
