# Site Maintenance

Quick reference for keeping this site up to date.

## Publications

The publication list is generated from a local BibTeX file (maintained in a separate Overleaf-synced project). When entries are added or updated there:

```bash
bash bin/sync-publications.sh
```

This copies the source `.bib` into `_bibliography/papers.bib` with the required Jekyll front matter. Commit and push to deploy.

**Tip:** when adding a new paper to the source `.bib`, include `html` and/or `pdf` fields so the website renders clickable links. Entries without these fields still appear but have no link button.

## CV

`assets/json/resume.json` follows the [JSON Resume](https://jsonresume.org/schema/) schema and is rendered by the `cv` layout.

Update this file when:
- A new position, degree, or award is added.
- Professional service or certificates change.

## Projects

Each file in `_projects/` is a project card. To add one, create a new `.md` with front matter (`layout: page`, `title`, `description`, `importance`, `category: work|fun`).

Update when a new research line or side project is worth showcasing.

## News

Each file in `_news/` is a news item. To add one, create `announcement_N.md` with a `date` and `inline: true` in front matter.

Update when: a paper is posted on arXiv, a paper is accepted, a talk or service role is announced, etc.

## About Page

`_pages/about.md` contains the homepage bio and research direction summary. Review after any major shift in research focus.
