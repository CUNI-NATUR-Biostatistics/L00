# Stage 6 - Post-merge Release Readiness

## Metadata

- Week: L00
- Date: 2026-09-12
- Author: Codex with course-owner direction
- Reviewer: pending final human release review
- Status: in progress; local release package and publication infrastructure validated, preview screenshot correction awaiting redeployment, and room-route checks pending

## Git checkpoint

- Stages 4-5 presentation PR merged: [x], PR #3 merged 2026-09-11
- Exercise PR merged, or exercise explicitly omitted from this release: [x], PR #4 merged 2026-09-12
- Default branch updated locally: [x], `origin/main` at merged release-preparation commit `f14117e`
- `git status --short` reviewed before release work: [x], clean
- Release validation is read-only: [x] for the audit; this record and refreshed generated outputs are isolated on the release branch
- Release-fix branch / PR if source changes were required: `fix/l00-embedded-rstudio-images` / pending

## Inspiration check

- Which external pattern ended up most useful: the pinned SSoQE R-and-reproducibility deck supplied the panel-by-panel RStudio orientation, project-first workflow, keyboard-shortcut rhythm, and clean-session idea. L00 adapted these into short presentation -> live RStudio demonstration -> student action -> checkpoint cycles.
- Which pattern looked promising but was dropped: alternative IDEs, `{here}`, Git/GitHub, PATs, shell, Rtools, `{usethis}`, workshop setup, and a PollsLive layer were omitted because they do not serve the first 90-minute encounter with R.
- Did any imported idea feel too advanced, too technical, or too far from model-first teaching: the legacy lecture task banks extended into descriptive statistics, filtering, transformations, matrices, loops, and advanced mathematics. They were retained only as an idea archive and were not used as the L00 route.

## Review outcomes

### Written materials review

- Key findings: the initial draft assumed unexplained knowledge about R, RStudio panels, Console versus Source, projects, paths, and restarting R; it also used unnatural student-facing terminology.
- Revisions applied: the approved beginner-first rewrite begins with what R is and why a reproducible script can complement Excel, explains every RStudio region with attributed real-interface screenshots, derives projects from ordinary folders, contrasts Source and Console explicitly, and defines restart before requiring it. Independent lesson-vision and glossary reviews were resolved before human approval.

### Presentation review

- Key findings: first-use leaks affected `round()` and the first plot; the package-installation fallback was initially hidden by fragment order; the presenter needed more progressive disclosure.
- Revisions applied: definitions now precede prediction, the fallback is visible before installation, and purposeful fragments support spoken explanation without producing text-heavy slides. The 22-slide HTML/PDF deck passed independent review, whole-canvas and meaningful-fragment visual inspection, and human approval as usable for teaching and colleague feedback.

### Exercise review

- Independent reviewer: Hegel, using the canonical exercise-review prompt
- Key findings: the early script included distribution assumptions, teacher cues, first-use leaks, avoidable out-of-scope syntax, and one Czech diacritic regression.
- Revisions applied: students download the script and CSV themselves; the public script now contains lean `Zadání` blocks with stable `L00-Uxx` identifiers, direct student actions, definitions before use, a five-minute package fallback, and no teacher-only or out-of-scope commands. The diacritics were restored.
- Human approval: Ondřej Mottl, 2026-09-12

## Public allowlist

`website-release.yml` validates for `L00`, academic year `2026-27`, and the target tag `L00-v0.1.0-20260928`. The canonical packager produced one ZIP and a manifest with 16 checksummed files:

- learning: HTML, PDF, and `Learning_materials/skripta.qmd`;
- presentation: HTML, PDF, and `Presentation/presentation.qmd`;
- code: `Exercises/cviceni.R`;
- data: `data/palmer_penguins.csv`;
- extras: `LICENSE.md`, screenshot provenance, the original RStudio PNG, and five derived SVG overview/crop files.

No workflow records, answer keys, private notes, repository metadata, or unlisted files enter the public bundle.

## Provenance, privacy, and licensing

- Palmer Penguins: 342 complete rows and three selected columns derived from `palmerpenguins::penguins` 0.1.1; CC0 provenance, transformation, source links, and SHA-256 `a911f303c2e55847dd81c943b3d3cf75c0d90a0d0ac7399cf6a531ed918f7560` are recorded in `LICENSE.md`.
- RStudio image: the original Wikimedia Commons screenshot, its five course derivatives, author, download date, modification status, CC BY-SA 4.0 terms, and original-image SHA-256 are recorded in `LICENSE.md` and `Learning_materials/figures/README.md`.
- Course licences: original educational content is CC BY 4.0; software is MIT; third-party material remains under its own stated terms. `LICENSE.md` is included in the release bundle.
- Privacy and security scan: tracked text contains no absolute `C:\\Users` or `D:\\GITHUB` paths, `file://` links, private-key headers, GitHub token patterns, password/secret assignments, UTF-8 BOMs, student data, assessment answers, or restricted material.
- Repository visibility: L00 remains private. The HUB entry has `repository_link: false`, so no inaccessible repository link is presented while all approved bundle resources remain public through Pages.

## Rendering and technical validation

- Fresh R process activated `D:/GITHUB/CUNI-NATUR-Biostatistics/L00` and `renv::status()` reported no issues.
- `Rscript -e "source('R/render_all.R')"` completed on 2026-09-12 and regenerated both HTML/PDF outputs through the supported wrapper.
- Rendered presentation: 22 slides. The HTML is unchanged; the PDF was regenerated with the same byte size. The established Stage 5 whole-deck and fragment-state visual review remains applicable because presentation source and rendered HTML did not change.
- Rendered learning materials: HTML and PDF completed after the screenshot correction. The five HTML screenshot blocks now use the same SVG files as the PDF. Each SVG embeds the exact original PNG bytes, and the standalone HTML contains five embedded SVG data resources, one for each RStudio view, with zero references to `figures/rstudio-fresh-install.png`.
- Non-blocking render warnings: Windows could not apply the configured `C.UTF-8` locale; the shared presentation SCSS reported four variables before declaration. Neither warning prevented output generation.
- Canonical release-packaging dry run: passed again after the screenshot correction for `L00-v0.1.0-20260928`; the generated public manifest contains 16 checksums and the expected `code/cviceni.R` and `data/palmer_penguins.csv` routes.
- Direct browser rendering of the self-contained `rstudio-overview.svg` confirmed that the embedded screenshot and numbered panel overlays remain visible. The other four SVGs have the same embedded-image structure and passed the source/reference checks.
- Temporary validation bundles and browser captures were removed after inspection.

## Delivery-route validation

- Intended preview routes:
  - `https://cuni-natur-biostatistics.github.io/L00/preview/learning/`
  - `https://cuni-natur-biostatistics.github.io/L00/preview/presentation/`
- Intended stable routes:
  - `https://cuni-natur-biostatistics.github.io/L00/current/learning/`
  - `https://cuni-natur-biostatistics.github.io/L00/current/presentation/`
  - `https://cuni-natur-biostatistics.github.io/L00/current/code/cviceni.R`
  - `https://cuni-natur-biostatistics.github.io/L00/current/data/palmer_penguins.csv`
- Intended immutable root: `https://cuni-natur-biostatistics.github.io/L00/releases/L00-v0.1.0-20260928/`
- Pages configuration: enabled with `build_type: workflow`, public Pages output, and enforced HTTPS. Earlier preview runs failed at `actions/configure-pages` because Pages had not yet been enabled; that configuration blocker is resolved.
- Environment protection: the `github-pages` environment uses custom deployment policies with exactly two rules: branch `main` and tag pattern `L00-v*`.
- Preview deployment: manual `Publish preview` run [34712220880](https://github.com/CUNI-NATUR-Biostatistics/L00/actions/runs/34712220880) succeeded from `main` at `222ca71`. Both intended HTML routes return HTTP 200.
- Preview inspection: the learning-material page and presentation title slide were inspected from the deployed Pages site at desktop width; the learning-material page was also inspected at a narrow 500-pixel viewport. Typography, layout, table treatment, presentation controls, slide count, and responsive wrapping are readable. A later inspection deeper in the learning page found that five inline HTML SVG blocks retained relative links to `figures/rstudio-fresh-install.png`, which the preview workflow does not publish. The local correction removes those paths and embeds the screenshot bytes inside the five SVG files; deployed verification remains pending the fix merge and automatic preview run.
- Student download route: preview intentionally publishes only the two HTML review routes, so `/preview/code/` and `/preview/data/` return 404. The canonical bundle maps the script and CSV to `code/cviceni.R` and `data/palmer_penguins.csv`; real browser downloads from `/current/` remain pending the stable tag.
- Lab-account route: pending representative-room test of CRAN access, writable user library, project creation, downloads, relative paths, output creation, restart, and full rerun.
- Failure routes: the committed CSV makes the core lesson independent of package installation after download; the clean-session solution and failed-install/no-network classroom route are documented and validated in the exercise record. A room-account rehearsal remains pending.
- HUB refresh: `HUB_APP_ID` and `HUB_APP_PRIVATE_KEY` are not configured in L00. After the stable release, an authorized manual dispatch of `Publish course hub` will therefore be required.

## Final validation checklist

- Learning outcomes still aligned: [x]
- Written and slide narratives are aligned: [x]
- Exercise core tasks remain aligned with the approved lesson outcomes and sequence: [x]
- Interaction fallback wording present: [x], ordinary hands-on checkpoints and a package-installation fallback; PollsLive intentionally omitted
- Rendered outputs updated: [x]
- Release artefacts verified: [x], local package only
- `website-release.yml` validates and lists exactly the intended public files: [x]
- Every listed source, exercise, data file, and extra passed privacy, assessment-security, provenance, and reuse review: [x]
- Public README distinguishes the HUB stable release from `main` and `preview`: [x]
- Repository visibility matches the HUB repository link: [x], private repository and suppressed repository link
- Approved licensing status checked; missing license recorded as a human decision: [x], no missing licence
- Lesson Pages routes and expected HUB refresh path recorded: [x]
- Borrowed source patterns were adapted rather than copied mechanically: [x]
- GitHub Pages uses GitHub Actions: [x]
- `github-pages` permits only `main` and `L00-v*`: [x]
- Preview deployed and visually inspected: [x]
- Stable student downloads tested from `/current/`: [ ]
- Representative lab-account and failure-route rehearsal completed: [ ]
- Final human release approval recorded: [ ]

## Release summary

- Version/tag target: `L00-v0.1.0-20260928`
- Main lesson changes: a voluntary, beginner-first 90-minute R/RStudio orientation built around teacher switching between short slides, live RStudio demonstration, student action, and observable checkpoints; a standalone written guide; a 22-slide presentation; one classroom R script; and an attributed Palmer Penguins CSV.
- Known limitations: stable public downloads cannot be tested until the release tag exists; the representative computer-room rehearsal is pending; automatic HUB dispatch secrets are absent; the presentation is approved as usable but remains open to evidence-based lecturer feedback before the scheduled release.

## Decision

- [ ] Ready for release
- Notes: local content, render, licence, privacy, packaging, Pages, environment-protection, and preview checks pass. Do not create the stable tag until the representative lab rehearsal and final human approval are complete; verify `/current/` downloads immediately after the authorized tag/release workflow.
