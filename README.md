# jackwillis.github.io

A minimal personal homepage for Jack Willis.

The site is plain HTML and CSS. There is no static-site generator, package manager,
JavaScript, web font, analytics service, or build step.

## Local preview

From the repository root:

```sh
python3 -m http.server 8000
```

Open http://localhost:8000. Edit `index.html` and `style.css` directly.

## Publishing

This is the GitHub Pages **user site**. Publish the root of the `master` branch
using GitHub Pages in repository Settings. A `.nojekyll` file disables Jekyll.

No custom domain is configured in the repository (the old `CNAME` for
`www.attac.us` was intentionally retired). The intended public URL is
https://jackwillis.github.io/.

If GitHub Pages still shows a custom domain after merging, remove it from
**Settings → Pages → Custom domain**. Removing the tracked `CNAME` file alone
may not clear every Pages setting immediately.

The previous attac.us site was replaced, not rebased away: its contents remain
available in Git history.
