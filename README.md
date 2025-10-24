# hidden.computer

This repository contains the static files for Mike Goldin's personal site at [https://hidden.computer](https://hidden.computer). The site is now a plain HTML/CSS build with no JavaScript framework or build tooling. Each section of the original React app lives on its own HTML page linked through the tabbed navigation.

## Working locally

Open any of the HTML files (for example `index.html`, `papers.html`, `videos.html`, or `about.html`) in your browser. No dependencies or dev server are required.

## Deploying

Upload the repository contents to any static host or CDN. Ensure the `public/` directory ships with the favicons, web manifest, and profile photo used by `index.html`.

## Project structure

- `index.html` – Code projects tab (default landing page).
- `papers.html` – writing archive.
- `videos.html` – recorded talks and appearances.
- `about.html` – bio and contact details.
- `styles.css` – global styling for the page.
- `public/` – icons, manifest, and static image assets referenced by the HTML.
