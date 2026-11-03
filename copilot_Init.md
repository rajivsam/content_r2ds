# Copilot Project Bootstrap

This repository contains the source for a Jekyll website about operational
analytics, machine learning systems, and related consulting offerings.

## Project structure

- `index.markdown` is the home page.
- `essays.markdown` contains the Perspectives on AI and Analytics page.
- `methodology.markdown` contains the KMDS methodology page.
- `_layouts/`, `_includes/`, and `_plugins/` customize the Jekyll site.
- `assets/` contains source images and JavaScript used by the site.
- `_bibliography/` contains the site's scholarly references.
- `_site/` is generated output. Do not edit it directly.
- `Gemfile` and `Gemfile.lock` define the Ruby and Jekyll dependencies.

## Local build and run workflow

The supported workflow is provided by the two shell scripts in the repository
root:

```bash
./build-site.sh
./run-site.sh
```

Run `build-site.sh` from any directory. It:

1. Uses Ruby 3.2.7 from `${HOME}/.rubies/ruby-3.2.7`.
2. Installs gems into the repository's `vendor/bundle` directory.
3. Builds the Jekyll site into `/home/rajiv/programming/r2ds`.

The build script removes `vendor/bundle` and `.bundle` before installing
dependencies, so do not run it while another process is using those paths.
It also expects the Ruby installation and output path above to exist; update
the script if the local environment uses different paths.

Run `run-site.sh` after a successful build to serve the generated site with
Ruby's built-in HTTP server. The default URL is:

```text
http://localhost:8000
```

Set `PORT` to use another port:

```bash
PORT=8080 ./run-site.sh
```

## Editing guidance

- Make content changes in the source Markdown, HTML, and asset files.
- Preserve the existing Jekyll front matter, page ordering, Markdown style,
  links, and descriptive metadata.
- Do not make manual edits under `_site/`; regenerate the site instead.
- Keep changes focused on the requested page or behavior.
- When adding an external offering or repository, use a direct, descriptive
  link and briefly explain its practical purpose.
- Preserve existing Unicode typography and formatting where it is already used.

## Validation

For content-only changes, run:

```bash
git diff --check
./build-site.sh
```

For changes affecting rendered pages, start the generated site with
`./run-site.sh` and inspect the affected page in a browser. Check that links,
headings, images, and page navigation render as expected.

If the build cannot run because the configured Ruby installation is missing,
report that limitation explicitly rather than changing the build scripts or
dependency configuration as part of an unrelated content change.
