# ChaCha Implementation in Porth

This is an implementation of the [ChaCha stream
cipher](https://en.wikipedia.org/wiki/ChaCha_(cipher)#ChaCha_variant) written in
[Porth](https://gitlab.com/tsoding/porth). Its output is correct according to
[the tests](./src/test.porth), but it should not be used for any applications
where runtime security is required (I am not a cybersecurity expert, and this is
written in an alpha language). I would recommend using it for random number
generation.

## Usage

### As a library

This is intended for developers. If you want to use ChaCha, include
[chacha.porth](./src/chacha.porth). It depends on a few memory-related procs
from the standard library.

For an example of the library's usage, see [the examples](./examples).

### Testing

To test the implementation, compile and run [test.porth](./src/test.porth). It
compares the output from the library to the test vectors described in [RFC
7539](./res/chacha-rfc7539.txt).

Be aware that currently, type checking all of the `if` statements in
[test.porth](./src/test.porth) takes an unusually long time. This is planned to
be fixed in future versions of the compiler. For now, you can disable type
checking with the `-unsafe` flag.

```console
$ porth -unsafe com -s -r ./src/test.porth
[test_utils] passed
[test_const] passed
[2.1.1] passed
[2.2.1] passed
[2.3.2] passed
```
