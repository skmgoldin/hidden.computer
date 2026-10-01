# hidden.computer

This repository contains the static files for Mike Goldin's personal site at [https://hidden.computer](https://hidden.computer). The site is now a plain HTML/CSS build with no JavaScript framework or build tooling. Each section lives on its own HTML page linked through the site navigation.

## Working locally

Open any of the HTML files (for example `index.html`, `videos.html`, `code.html`, or `about.html`) in your browser. No dependencies or dev server are required.

## Deploying

Upload the repository contents to any static host or CDN. Ensure the `public/` directory ships with the favicons, web manifest, and profile photo used by `about.html`.

## Project structure

- `index.html` – redirects the homepage to `blog.html`.
- `blog.html` – blog index (default landing location), with posts in `blog/`.
- `videos.html` – recorded talks and appearances.
- `code.html` – code projects.
- `about.html` – bio and contact details.
- `styles.css` – global styling for the page.
- `public/` – icons, manifest, and static image assets referenced by the HTML.
