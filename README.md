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
[chacha.porth](./src/chacha.porth). It doesn't have any explicit dependencies
(it copypastes some std.porth procs with different namespaces).

For an example of the library's usage, see [the examples](./examples).

### Testing

To test the implementation, compile and run [test.porth](./src/test.porth). It
compares the output from the library to the test vectors described in [RFC
7539](./res/chacha-rfc7539.txt).

Be aware that currently, type checking takes an unusually long time. This is
planned to be fixed in future versions of the compiler. For now, you should
disable type checking with the `-unsafe` flag.

```console
$ # Where $TARGET is your preferred target.
$ porth -unsafe com -s -t $TARGET ./src/test.porth
[INFO] renaming ./src/test.tmp -> ./src/test
$ ./src/test
[test_utils] passed
[2.1.1] passed
[2.2.1] passed
[2.3.2] passed
```
