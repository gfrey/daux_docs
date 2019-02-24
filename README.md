# Writing Documentation

This is based on [daux](https://daux.io).


## Quickstart

* Edit away in the `docs` folder.
* For local preview run `make serve` and open your browser to `http://localhost:8085`.
* For rendering static files for release use `make build`.

There is an additional
[processor](https://daux.io/For_Developers/Creating_a_Processor.html) that
allows for filtering files from rendering to static content. This currently
filters vim swap files (matching `/.*.swp`) and anything with the `.draft.md`
(to allow for unpublished drafts) extension.


## Why Oh Why?

Well [sphinx](http://www.sphinx-doc.org) and similar things are much more
complicated. This had pretty decent results immediately.
