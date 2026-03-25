# homebrew-case-cli

Homebrew tap for [case-cli](https://github.com/sigaocaue/case-cli), a command-line tool for converting strings between 15+ case styles.

## Installation

```bash
brew tap sigaocaue/case-cli
brew install case-cli
```

## Usage

```bash
# Convert to snake_case
case-cli "Hello World" --case=snake
# hello_world

# Convert to camelCase
case-cli "Hello World" --case=camel
# helloWorld

# Convert to PascalCase
case-cli "Hello World" --case=pascal
# HelloWorld

# Set a default style
case-cli set kebab
case-cli "Hello World"
# hello-world
```

For the full list of supported styles, run:

```bash
case-cli --help
```

## Updating

```bash
brew update
brew upgrade case-cli
```

## Uninstalling

```bash
brew uninstall case-cli
brew untap sigaocaue/case-cli
```

## Alternative installation methods

```bash
# PyPI
pip install case-cli

# pipx (isolated environment)
pipx install case-cli

# uv
uv tool install case-cli
```

## License

MIT License. See [LICENSE](LICENSE) for details.
