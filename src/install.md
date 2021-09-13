# Install

## Binary Releases
    
Binary releases should be available at [the repository](https://github.com/LLFourn/gun/releases) for each release for some architectures.
I haven't figured out how I want to go about this yet so **it's better to just compile it yourself** for now.

### Import author key
Releases should be signed with [this public key](./llfourn-public-key.asc) with this fingerprint:

```
28EF 6BC9 14AB BA2B AB98  B796 A270 93B5 4DA1 1F65
```

To verify a binary's signature import <a href="https://twitter.com/LLFourn">@LLFourn's</a> key.

```
curl -sL -o llfourn.asc https://gun.fun/llfourn.asc
gpg --import llfourn.asc # check it has same fingerprint as above
```
### Download and verify 

Download the binary and signature and verify like so:

```
curl -sL -o gun https://github.com/LLFourn/gun/releases/download/v0.1.0/gun-linux-amd64
curl -sL -o gun.asc https://github.com/LLFourn/gun/releases/download/v0.1.0/gun-linux-amd64.asc
gpg --verify gun.asc # check it verifies against the key with fingerprint above
chmod u+x gun
./gun --help
```

...verifying this is *not fun* so hopefully we'll figure out a way to do updating `gun` without doing this every time.

## Compiling 

Before compiling `gun` you need to [install rust](https://www.rust-lang.org/tools/install) and cargo.
Then,

```
git clone https://github.com/LLFourn/gun
cd gun
cargo install --path .
# Make sure ~/.cargo/bin is in your $PATH
```

If you have a nightly toolchain you can install it faster and download/compile less dependencies using:

```
cargo -Z avoid-dev-deps install --path .
```




