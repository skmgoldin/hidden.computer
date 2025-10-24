# Repository Guidelines

## Project Structure & Module Organization
The repository is a pure HTML/CSS site. Root-level pages (`index.html`, `papers.html`, `videos.html`, `about.html`) map to the navigation tabs and share the global stylesheet in `styles.css`. Icons, the web manifest, and image assets live under `public/`; keep new assets there and reference them with relative paths. No build output directory is tracked, so ship only these committed files.

## Build, Test, and Development Commands
- `open index.html` (macOS) or `xdg-open index.html` (Linux) — launch the default browser against the static files.
- `python3 -m http.server 8000` — serve the repository locally when you need consistent relative-path behavior before deploying.
- `npx serve .` — optional static server with cache headers matching most CDNs; install `serve` globally if you use it frequently.

## Coding Style & Naming Conventions
Use two-space indentation in both HTML and CSS to match the existing files. Favor semantic HTML elements (`main`, `section`, `article`) and descriptive class names like `site-nav` over generic wrappers. Keep attribute order consistent with the current pages (href first on links, class before aria attributes). In `styles.css`, group related selectors and align properties alphabetically within each block when practical to keep diffs compact.

## Testing Guidelines
There is no automated test suite; rely on manual QA. After changes, load every HTML page locally and verify navigation, anchors, and external links. Check responsiveness down to 320px and confirm high-contrast legibility. If you alter icons or manifests, test favicon rendering in at least one Chromium-based browser and Safari.

## Commit & Pull Request Guidelines
Match the concise, imperative commit style already in history (`Add CNAME file`, `Typo fix`). Each commit should address one focused change to keep diffs reviewable. Pull requests should include a short summary of the motivation, the key files touched, and manual verification notes (browsers tested, assets checked). Link related issues when available and attach before/after screenshots for visual changes.

## Deployment & GitHub Pages Notes
The site deploys via `.github/workflows/static.yml` to GitHub Pages on every push to `master`. The workflow copies `index.html`, `papers.html`, `videos.html`, `about.html`, and `styles.css` into a `dist/` folder, then mirrors `public/`. If you add new top-level assets or pages, update the copy step so they reach Pages; otherwise the live site will miss them. Avoid renaming those core files without adjusting the workflow, and keep `public/` paths stable so cached icons resolve after deploys. If you add third-party embeds or fonts, document any CDN or CSP requirements in the PR description to keep future deployments frictionless.
