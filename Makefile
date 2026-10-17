.PHONY: install build serve preview deploy clean

install:
	bundle install
	npm install

build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve --livereload

preview:
	npx wrangler dev

deploy:
	npx wrangler deploy

clean:
	rm -rf _site .jekyll-cache
