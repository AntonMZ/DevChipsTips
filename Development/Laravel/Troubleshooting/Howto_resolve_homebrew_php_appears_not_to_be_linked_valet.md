### Homebrew PHP appears not to be linked. - Valet

#### Fix
brew list
brew unlink php@7.3
brew link --overwrite php