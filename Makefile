.PHONY: clean build serve publish

serve:
	docker run --rm -it -w /srv -p 8085:8085 -v "$$PWD":/srv daux/daux.io daux serve --host=0.0.0.0 --no-cache -vvv

build:
	docker run --rm -it -w /build -v "$$PWD":/build -u "$$(id -u):$$(id -g)" daux/daux.io daux generate

clean:
	rm -Rf static

publish: build
	git diff-index --quiet HEAD -- || { echo "uncommitted changes"; false; }
	git branch -D gh-pages || true
	git checkout --orphan gh-pages
	cp -R static/* .
	rm Makefile README.md
	git add .
	git commit -m "Publishing"
	git checkout master
	git push -f origin gh-pages
