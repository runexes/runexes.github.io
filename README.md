# alex.sliusarev.com

Personal site built with [Jekyll](https://jekyllrb.com/) and deployed as a **Cloudflare Worker** serving static assets from `_site`.

## Requirements

- Ruby (see `.ruby-version`)
- Bundler
- Node.js (only for Wrangler / local preview)

## Local development

```sh
bundle install
bundle exec jekyll serve --livereload   # http://localhost:4000
```

or `npm run dev`, or `make serve`.

A `Makefile` mirrors every common task: `make install`, `make build`, `make serve`, `make preview`, `make deploy`, `make clean`.

## Local production build

```sh
bundle exec jekyll build     # -> _site/
npm run preview              # serve the built Worker locally (wrangler dev)
```

## Deploy to Cloudflare Workers (build from the repository)

Workers & Pages → **Create** → **Import a repository** → pick this repo, then use:

| Setting          | Value                  |
| ---------------- | ---------------------- |
| Root directory   | `/`                    |
| Build command    | `npm run build`        |
| Deploy command   | `npx wrangler deploy`  |

Non-production branches: `npx wrangler versions upload`.

## Layout

- `index.md`, `404.md` — pages (front matter selects `_layouts/default.html`)
- `_layouts/`, `assets/css/style.scss` — template and styles
- `_config.yml` — site metadata, SEO plugin, `exclude` list
