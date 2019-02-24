.PHONY: clean build serve

serve:
	docker run --rm -it -w /srv -p 8085:8085 -v "$$PWD":/srv daux/daux.io daux serve --host=0.0.0.0 --no-cache -vvv

build:
	docker run --rm -it -w /build -v "$$PWD":/build -u "$$(id -u):$$(id -g)" daux/daux.io daux generate

clean:
	rm -Rf static
