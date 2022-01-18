# ChaCha Implementation in Porth

This is an implementation of the [ChaCha stream
cipher](https://en.wikipedia.org/wiki/ChaCha_(cipher)#ChaCha_variant) written in
[Porth](https://gitlab.com/tsoding/porth). Its output is correct according to
[the tests](./src/test.porth), but it should not be used for any applications
where runtime security is required (I am not a cybersecurity expert, and this is
written in an alpha language). I would recommend using it for random number
generation.

## Usage

This is intended for developers. If you want to use ChaCha, include
"chacha.porth". It doesn't have any explicit dependencies (it copypastes some
std.porth procs with different namespaces).

For an example of the library's usage, see [the examples](./examples).
