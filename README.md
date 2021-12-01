# ctittel.com

Personal website, made with [Pollen (a Racket DSL)](https://docs.racket-lang.org/pollen/)

## TODO
- Add contents table to some pages
- Add texts
- Add SEO stuff
- Maybe: Add tufte CSS
- ~~Add sitemap~~

## Racket commands cheat sheet
- Rendering everything: `raco pollen render -p` (`-p` for multiprocessing)
- `raco pollen publish <source> <dest>` to copy all files not specific to Racket/Pollen to `<dest>`
- DEBUG mode: set the env variable `DEBUG` to use local paths (for testing / debugging)

## Dependencies

Racket modules:
- pollen
- gregor
