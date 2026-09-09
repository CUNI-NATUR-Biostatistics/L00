# Stage 1 - Dataset Research and Recommendation

## Metadata

- Week: L00
- Date: 2026-09-09
- Author: Ondřej Mottl (with Codex)
- Reviewer: Ondřej Mottl

## Git checkpoint

- Stage group: Stages 0-1 planning
- Branch: `lesson/l00-scope-data`
- Base branch and commit: `main` at `a082d96` (`Initial commit`)
- `git status --short` reviewed: [x]
- Stage 0 record is on this branch: [x]
- Planning PR: Draft PR #1

## Inspiration consulted

- Relevant source(s) from `_internal/obecne/nove/biostatistics_course_inspiration_hub.md`: [Beginning R](https://bristol-training.github.io/intro-r-1/), [Introduction to R](https://malo-jn.quarto.pub/introduction-to-r/), and [R for Data Science 2e](https://r4ds.hadley.nz/); supplemented by the pinned [SSoQE presentation](https://github.com/SSoQE/SSoQE-Our_Way_of_R_and_Reproducibility/blob/a4af97e9e563644da7936aa2109b927c60b9903d/Presentation/presentation.qmd).
- Dataset-selection pattern worth borrowing: start with a concrete biological question, make one row and the relevant columns intelligible, and move in small visible steps from import to a simple plot.
- What to avoid from those sources: tidyverse-first code, datasets chosen only for package convenience, transformations or statistical summaries before students can run a script, and installation or version-control infrastructure that displaces the first data workflow.

## Broad discovery gate

- Dataset needs derived from the weekly outcomes: a real biological story; an obvious observational unit; few understandable columns; no blocking missingness; stable provenance and reuse terms; a useful base-R plot; and, where possible, a lightweight package that makes the teacher-led installation meaningful while the committed CSV remains sufficient offline.
- Independent sources consulted (minimum 4): SSoQE; University of Bristol beginner materials; Malo Jan's Introduction to R; R for Data Science 2e; the `palmerpenguins` project and published R Journal paper; R Core dataset documentation; and CRAN/MASS documentation.
- Credible dataset or teaching examples reviewed (minimum 8): nine distinct examples are recorded below.
- Established course/tutorial examples included: [x]
- Primary dataset documentation or domain repositories included: [x]
- If the minimum was not reached, documented reason and human-approved exception: N/A

“Keep” below means retain for the three-dataset feasibility comparison. “Reject” means reject as the main L00 story, not that the source is generally unsuitable.

| Source/tutorial | Dataset or example | Exact variables/model | Observational unit and population/sampling story | Useful pattern | Main complication | Keep/Reject |
|---|---|---|---|---|---|---|
| [Pinned SSoQE deck](https://github.com/SSoQE/SSoQE-Our_Way_of_R_and_Reproducibility/blob/a4af97e9e563644da7936aa2109b927c60b9903d/Presentation/presentation.qmd) | RStudio orientation, projects, scripts, and clean-session exercises | No fixed dataset or model required for the transferable pattern | A reproducible-workflow workshop rather than a sampled population | Panels, shortcuts, timed code-along, project-first workflow, restart thinking | Much broader tooling scope than L00 | Reject as dataset; retain teaching pattern |
| [Bristol Beginning R](https://bristol-training.github.io/intro-r-1/) | Beginner route with explanations, exercises, and solutions | Multiple introductory examples rather than one required L00 model | General software-training examples | Small steps, callouts, exercises, and self-study support | Multi-session course and tooling burden exceed 90 minutes | Reject as dataset; retain teaching pattern |
| [Malo Jan, Introduction to R](https://malo-jn.quarto.pub/introduction-to-r/) | Complete-beginner course organized by sessions | Multiple introductory examples | Political-science training rather than biological sampling | Explicit beginner framing and clear route through sessions | Domain mismatch and tidyverse-oriented expansion | Reject as dataset; retain teaching pattern |
| [`palmerpenguins::penguins`](https://allisonhorst.github.io/palmerpenguins/) and its [R Journal description](https://journal.r-project.org/articles/RJ-2022-020/) | `species`, `flipper_length_mm`, `body_mass_g` | One row per sampled adult penguin near Palmer Station; three species and three islands, 2007-2009 | Engaging real field data; clear units; package installation and offline CSV can describe the same object | Two missing rows in the intended measurement pair; species structure must be shown without teaching comparison | **Keep** |
| [R Core `iris`](https://www.stat.ethz.ch/R-manual/R-devel/library/datasets/html/iris.html) | `Species`, `Sepal.Length`, `Sepal.Width`, `Petal.Length`, `Petal.Width` | One measured iris flower; 50 flowers from each of three species | Small, complete, built into R, and easy to plot | Overused; intentionally balanced species mixture; no package-installation payoff | Reject |
| [R Core `trees`](https://stat.ethz.ch/R-manual/R-patched/library/datasets/html/trees.html) | `Girth`, `Height`, `Volume` | One felled black cherry tree in a historical sample of 31 trees | Only three complete numeric columns; very simple scatterplot | Historical imperial units; `Girth` is recorded diameter; no package-installation payoff | **Keep** |
| [R Core `PlantGrowth`](https://stat.ethz.ch/R-manual/R-patched/library/datasets/html/PlantGrowth.html) | `weight`, `group` | One plant dry-weight observation under control or one of two treatments; 30 observations | Tiny, complete, obvious columns | Immediately invites group summaries, boxplots, and inference reserved for later lessons | Reject |
| [R Core `OrchardSprays`](https://stat.ethz.ch/R-manual/R-patched/library/datasets/html/OrchardSprays.html) | `rowpos`, `colpos`, `treatment`, `decrease` | One cell in an 8 by 8 Latin-square honeybee-repellency experiment | Real biological experiment and compact data | Experimental design, coded concentrations, and response meaning are too complex for first contact | Reject |
| [`MASS::crabs`](https://search.r-project.org/CRAN/refmans/MASS/html/crabs.html) | `sp`, `sex`, `index`, `FL`, `RW`, `CL`, `CW`, `BD` | One of 200 *Leptograpsus variegatus* crabs collected near Fremantle; 50 in each colour-form-by-sex group | Complete morphology data; the package can be installed or accessed by namespace | Abbreviations and group structure add explanation before the first plot; `MASS` is normally bundled as a recommended package | **Keep** |

## Finalist comparison

| Finalist | Learning-outcome fit | Student relevance | Interpretability | Stepwise buildability | Practical feasibility | Main risks | Rank |
|---|---|---|---|---|---|---|---|
| Palmer Penguins | Excellent: package namespace, CSV import, inspection, plot, save, and rerun form one coherent route | Excellent for biology beginners | Excellent: wing length and body mass have familiar units | Excellent after distributing only the needed columns or explicitly selecting them in the prepared CSV | 344 rows; 342 complete for the intended plot; package is lightweight and data are CC0 | Species structure could tempt premature comparison; two incomplete measurement rows need removal during data preparation, not in class | 1 |
| Black cherry trees | High for CSV, plot, save, and rerun; weak for the package-installation outcome | Good biological measurements but dated | Moderate: imperial units and misleading `Girth` label need explanation | Excellent: 31 complete rows and three columns | Built into R; zero missing values | No meaningful installed package; historical provenance and units make the story less immediate | 2 |
| Leptograpsus crabs | High for namespace access, CSV, plot, save, and rerun | Excellent biological morphology | Moderate: abbreviated measurements and colour-form/sex coding must be decoded | Good after careful preparation | 200 complete rows; balanced groups; `MASS` available in standard R distributions | Package installation may be a non-event; groups encourage statistical comparisons; more columns than needed | 3 |

## Numerical and practical feasibility probes

Probes were run locally in R 4.5.1 on 2026-09-09. They verify loading, dimensions, missingness, ranges, and the intended plot variables; they are not proposed student-facing statistical analysis.

### Palmer Penguins

- Provenance, reuse conditions, and stable access: `palmerpenguins` package and project site; data collected and made available by Dr Kristen Gorman and the Palmer Station LTER; dataset released under CC0. The stable package dataset can generate a committed lesson CSV with transformation steps and attribution recorded.
- Observational unit, intended population, and sampling story: one observed adult penguin from three species near Palmer Station in the Palmer Archipelago, sampled across 2007-2009. The lesson should say “penguins in this dataset,” not claim random representation of all penguins.
- Numerical probe: 344 rows and 8 columns. `species` has no missing values; `flipper_length_mm` and `body_mass_g` each have 2 missing values; 342 rows are complete for `species`, `flipper_length_mm`, and `body_mass_g`. Counts are 152 Adelie, 68 Chinstrap, and 124 Gentoo. Flipper length ranges from 172 to 231 mm and body mass from 2700 to 6300 g.
- Teaching opportunities and complications: a scatterplot of flipper length and body mass is legible in base R; the package gives a genuine namespace example; the same prepared CSV supports the offline route. Prepare the distributed CSV with the two incomplete plotting rows removed and document that transformation so NA handling stays out of L00.

### Black cherry trees

- Provenance, reuse conditions, and stable access: base R `datasets::trees`, documented by the R Core Team with historical source references.
- Observational unit, intended population, and sampling story: one of 31 felled black cherry trees; the documentation describes diameter, height, and timber volume rather than a modern probability sample.
- Numerical probe: 31 rows and 3 columns with no missing values. `Girth` ranges 8.3-20.6 inches, `Height` 63-87 feet, and `Volume` 10.2-77.0 cubic feet.
- Teaching opportunities and complications: extremely easy to import and plot, but the lesson must explain that `Girth` is diameter and translate three imperial units. Because the data are bundled with R, they do not support the planned lightweight-package installation as naturally.

### Leptograpsus crabs

- Provenance, reuse conditions, and stable access: `MASS::crabs`, sourced to Campbell and Mahon (1974) and documented in the CRAN package manual; MASS is GPL-2 or GPL-3 and is a recommended R package.
- Observational unit, intended population, and sampling story: one *Leptograpsus variegatus* crab collected near Fremantle, Western Australia; 50 crabs in each combination of two colour forms and two sexes.
- Numerical probe: 200 rows and 8 columns, no missing values, with 50 observations in each colour-form-by-sex group. Five measurements span 7.2-23.1 mm (`FL`), 6.5-20.2 mm (`RW`), 14.7-47.6 mm (`CL`), 17.1-54.6 mm (`CW`), and 6.1-21.6 mm (`BD`).
- Teaching opportunities and complications: a morphology scatterplot is straightforward, but students must first decode five abbreviations plus species/sex codes. MASS may already be installed with R, so an “installation” may not visibly demonstrate what installing a new package changes.

## Selected dataset - approved and locked

- Name/source: `data/palmer_penguins.csv`, a provenance-preserving teaching CSV derived from `palmerpenguins::penguins` version 0.1.1, containing the species, flipper length, and body mass columns for the 342 rows complete on those fields.
- Display variables: flipper length in millimetres and body mass in grams; species retained as biological context, not as a comparison taught in L00.
- Why this one is best for this week: It unifies the package, namespace, CSV, inspection, base plot, saved output, and restart-and-rerun outcomes in one memorable real-data story. It also remains fully usable when installation or network access fails because the approved CSV will be committed.
- Derivation: preserve source row order; retain `species`, `flipper_length_mm`, and `body_mass_g`; remove the two rows incomplete on those fields; write without row names. The resulting species counts are 151 Adelie, 68 Chinstrap, and 123 Gentoo.
- Reuse terms: the source dataset is released under CC0. Provenance, transformation, source links, and reuse terms are repeated in `LICENSE.md` so they travel with the public release.
- SHA-256: `a911f303c2e55847dd81c943b3d3cf75c0d90a0d0ac7399cf6a531ed918f7560`.

## Minimal data story

- Biological question in one sentence: How are flipper length and body mass represented among the penguins recorded in this dataset?
- First figure idea: a base-R scatterplot with flipper length on the x-axis and body mass on the y-axis, saved as a PNG; species may be retained in the table but does not need a coded legend in the 60-70-minute core route.
- Bridge to next lesson: L01 can ask what each column represents and how a variable can be summarized; L00 only ensures that students can reproducibly reach and save the data display.

## Why this dataset matches the project filter

- Supports model-first teaching: L00 deliberately stops before modelling, but establishes the reproducible data-to-output workflow on which the course's later model-first sequence depends.
- Understandable for biology beginners: one row is one penguin and the plotted measurements have familiar physical units.
- Uses real data appropriately: the planned file is a transparent, attributed subset of published field data, with no claim that it is a random sample of all penguins.
- Avoids unnecessary tooling or syntax burden: three columns, base R, one relative-path import, one plot, and one namespace access are sufficient.

## Decision

- [x] At least 4 independent sources were consulted, or a human-approved exception is documented
- [x] At least 8 credible examples were reviewed without padding trivial variants, or a human-approved exception is documented
- [x] Exact variables, observational units, sampling stories, provenance, and reuse conditions were checked
- [x] Two or three finalists were compared and numerically probed
- [x] Rejection reasons and transferable teaching patterns were recorded
- [x] Human reviewer approved the selected dataset
- [x] Dataset locked for implementation
- [x] Diff contains only Stages 0-1 records and intended planning changes
- [x] Planning PR ready for human review
- Notes: Ondřej Mottl explicitly approved Palmer Penguins on 2026-09-09. The derived CSV, public provenance notice, release-manifest entry, repository overview, project rename, and reproducible environment were validated on this branch. The CSV exactly matches its documented derivation, its SHA-256 matches the recorded value, the manifest parses and includes the file, source files are UTF-8 without BOM, no absolute private paths were found, `git diff --check` passes, `renv::status()` is clean, and the supported full render completed successfully.
