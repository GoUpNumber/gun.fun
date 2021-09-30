# Install

## Binary Releases
    
Binary releases should be available at [the repository](https://github.com/LLFourn/gun/releases) for some architectures (right now only `linux-amd64`).
I haven't figured out how I want to go about this yet so **it's better to just compile it yourself** for now.

> ⚠️ The author of `gun` is the COVID QR code formally known as Lloyd "LLFourn" Fournier.
> He resides in Prison Island Australia and according to [new legislation] on the island he could be forced against his will to help the prison guards get access to his online accounts including GitHub.
> From there they can "alter" data to "gather evidence".
> The takeover can be granted without Lloyd being suspected of doing anything illegal.
> The target of the action can be someone else unknown to him and can even be unknown or anonymous to the guards.
>
> So please make sure you check the signatures and more importantly prefer compiling the wallet yourself until he has figured out a more robust defense against this.
> Actions that publicly modify the code maliciously are far more obvious.

### Import author key
Releases should be signed with [this public key](./llfourn-public-key.asc) with this fingerprint:

```
28EF 6BC9 14AB BA2B AB98  B796 A270 93B5 4DA1 1F65
```

To verify a binary's signature import <a href="https://twitter.com/LLFourn">@LLFourn's</a> key.

```
curl -sL https://gun.fun/llfourn.asc | gpg --import --import-options show
# ⚠️ CHECK IT MATCHES THE FINGERPRINT ABOVE
```

### Download and verify 

Download the binary and signature and verify like so:

```
curl -sL -o gun https://github.com/LLFourn/gun/releases/download/v0.3.0/gun-linux-amd64
curl -sL -o gun.asc https://github.com/LLFourn/gun/releases/download/v0.3.0/gun-linux-amd64.asc
gpg --verify gun.asc # check it verifies against the key with fingerprint above
chmod u+x gun
./gun --help
```

...verifying this is *not fun* so hopefully we'll figure out a way to do updating `gun` without doing this every time.

## Compile yourself 

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

The *minimum supported rust version* for `gun` is `1.51`.

[new legislation]: https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6623_aspassed/toc_pdf/20144b01.pdf;fileType=application%2Fpdf



