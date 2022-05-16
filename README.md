# ChaCha Implementation in Porth

This is an implementation of the [ChaCha stream
cipher](https://en.wikipedia.org/wiki/ChaCha_(cipher)#ChaCha_variant) written in
[Porth](https://gitlab.com/tsoding/porth), mostly as an experiment in the
language. Its output is correct according to [the tests](./src/test.porth), but
it should **NOT** be used for secure applications. I'm not a cryptography or
security expert. I would recommend using it for random number generation.
