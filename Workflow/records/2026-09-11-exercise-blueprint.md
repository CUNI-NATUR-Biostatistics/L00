# L00 exercise blueprint

## Metadata

- Week: L00
- Date: 2026-09-11
- Author: Codex with course-owner direction
- Human plan approval: Ondřej Mottl approved the presentation as usable, requested that colleague feedback cover the presentation together with the classroom R script, and explicitly authorized continuation into the exercise workstream on 2026-09-11
- Branch: `lesson/l00-exercises`
- Base: `main` at merge commit `a0b3a33` (`Build L00 live RStudio code-along presentation (#3)`)
- Presentation dependency: PR #3 merged on 2026-09-11
- Status: exercise complete, validated, and approved for pull-request review

## Intended use

- Teacher-led route: `Exercises/cviceni.R` is the classroom spine for a repeated presentation → live RStudio demonstration → student action → visible checkpoint rhythm. The teacher controls transitions and does not leave the deck visible while students need to imitate an action in RStudio.
- Self-study route: the same script gives enough nearby Czech explanation, exact starting states, expected outcomes, and two progressively more concrete hints for an absent beginner to work from top to bottom without the presentation.
- Core direct-work budget: approximately 64 minutes, leaving about 26 minutes in the 90-minute lesson for demonstrations, comparison of results, transitions, and slower machines.
- Optional-practice scale: six short `NAVÍC` tasks requiring approximately 20–30 additional minutes; none is required to complete the lesson.

## Outcomes-to-task map

| Approved weekly outcome | Observable action in L00 | Core task IDs |
|---|---|---|
| Start RStudio and describe its panels | Identify Source, Console, Environment, Files, Plots, Packages, and Help and point to where code, results, objects, files, plots, and help appear | L00-U01, L00-U04, L00-U13 |
| Create projects and switch between them | Create the `prvni-kroky-r` folder as an RStudio Project, recognize the `.Rproj` file, and confirm the project name and folder structure | L00-U05, L00-U13 |
| Create, edit, and load an R script | Open the distributed script, save a working copy as `prvni_kroky.R`, add comments, run selected lines, save it, and source it from top to bottom | L00-U04, L00-U05, L00-U13 |
| Use R as a calculator | Run arithmetic in Console, retrieve and edit a previous command, and distinguish the `>` and `+` prompts | L00-U02, L00-U03 |
| Understand how functions work | Use assignment, call `round()` with named arguments, modify one argument, and consult `?round` | L00-U06, L00-U07 |
| Load and use packages | Attempt one teacher-led manual installation, use `palmerpenguins::penguins` without `library()`, and follow the visible five-minute CSV fallback | L00-U08 |
| Load a CSV and save an output | Load the committed CSV by project-relative path, verify its identity, make and save one base-R graph, restart R, and rebuild the result from the script | L00-U09 to L00-U13 |

## Assumed knowledge and prerequisite refreshers

- R knowledge already established: none. L00 is the first and voluntary technical start for students with no R or coding experience.
- Statistical knowledge already established: none is required or taught. Students only connect one row with one penguin and one plotted point; they do not interpret the relationship.
- General knowledge assumed: ordinary files and folders, clicking, typing, and keyboard shortcuts.
- Prerequisite refresher: none. The opening panel, Console, and script tasks are foundational L00 content rather than review.
- Permanent or temporary: the complete core route is permanent for L00. An experienced group may compress L00-U01 to L00-U04 after demonstrating the checkpoints, but the beginner route keeps them.
- Knowledge boundary: every technical term is defined near first use. Project precedes relative path; object precedes table object; function and argument precede package namespace; restart is defined before students perform it.

## Core route and timing

| Task | Purpose | Direct-work target |
|---|---|---:|
| L00-U01 | Locate the four RStudio regions and distinguish their roles | 2 min |
| L00-U02 | Use Console as a calculator and retrieve one prior command | 3 min |
| L00-U03 | Recognize and safely repair the continuation prompt `+` | 3 min |
| L00-U04 | Edit, save, and run code from Source; distinguish Ctrl + S from Ctrl + Enter | 6 min |
| L00-U05 | Create the RStudio Project, folders, and saved working script | 9 min |
| L00-U06 | Create an object and observe when Environment changes | 4 min |
| L00-U07 | Call `round()` with named arguments and find Usage and Arguments in Help | 5 min |
| L00-U08 | Install and use one package with a five-minute fallback | 5 min maximum |
| L00-U09 | Place and load the CSV through `data/palmer_penguins.csv` | 5 min |
| L00-U10 | Verify first rows, column names, row count, and observational unit | 4 min |
| L00-U11 | Map two named columns to the axes of a base-R point graph | 5 min |
| L00-U12 | Save the graph as `vystupy/tucnaci.png` and verify the file | 5 min |
| L00-U13 | Save, restart R, source the script, and complete the exit check | 8 min |

Total direct-work target: 64 minutes. Teacher explanation, live demonstrations, pair comparisons, and transitions occupy the remaining lesson time. Package troubleshooting stops at five minutes and never delays the CSV route.

## Data and dependencies

- Dataset and provenance: committed `data/palmer_penguins.csv`, derived from `palmerpenguins::penguins` and released under CC0 by the Palmer Penguins project; detailed provenance remains in `LICENSE.md`.
- Observational unit: one individual penguin per row.
- Columns: `species`, `flipper_length_mm`, and `body_mass_g`; 342 complete rows; first row is Adelie, 181 mm, 3750 g.
- Packages: no package is required for the core CSV route. `palmerpenguins` is installed manually in Console as the single bounded package experience and used with `palmerpenguins::penguins` only when installation succeeds.
- Files: distributed `Exercises/cviceni.R`, prepared `data/palmer_penguins.csv`, the student's `prvni_kroky.R`, project `.Rproj`, and generated `vystupy/tucnaci.png`.
- Core objects: `delka_lekce_min` and `data_tucnaci`. The graph uses the two named columns directly so the script matches the approved live demonstration and does not pre-empt L01 vector teaching.
- Internet dependence: none after the prepared CSV and script are available. Package installation is optional to the remainder of the route.
- Private-helper dependence: none.
- GUI boundary: creating/opening an RStudio Project and restarting R are explicit L00 outcomes, so those two actions necessarily use RStudio controls. This documented lesson-specific exception is paired with exact menu paths, file-system explanations, observable checks, and a non-GUI clean-session validation of every executable code path. The exercise never requires `View()`, a working-directory chooser, `setwd()`, or a manually selected data file.

## Script structure and classroom hand-offs

1. Machine readiness and panel map.
2. Console calculator and harmless incomplete command.
3. Source, comments, saving, and Ctrl + Enter.
4. Folder-first project creation and working-script save.
5. Object, Environment, function, named arguments, and Help.
6. Teacher-led package installation with the fallback visible before participation.
7. Prepared penguin CSV, relative path, and identity checks.
8. Row-to-point graph and PNG output.
9. Defined restart, prediction, full source, and exit check.

Worked examples and tasks remain interleaved. Each new interface action begins with a short teacher demonstration and ends with a named screen, value, object, or file that students can compare with a partner.

At the course owner's request, student-visible task blocks use the single label `Úloha`, core IDs use `L00-Uxx`, and the visible prompt is headed only `Zadání`. Purpose and starting-state metadata remain in this blueprint rather than being repeated in every student task. Optional tasks use `Úloha navíc` and retain `L00-Nxx` IDs.

## Optional practice plan

- Repetition: change calculator expressions and `round()` arguments without adding new syntax.
- Transfer: inspect the last rows of the same CSV and modify only graph labels or point appearance.
- Integrated challenges: create a second PNG under a new filename and explain which files another student needs to reproduce it.
- Debugging or reflection: repair one commented `object not found` example using Environment and identify whether a missing result belongs in Source, Console, Environment, Plots, or Files.
- Scale: six tasks, L00-N01 to L00-N06, all after the complete core route.

## Out of scope

- descriptive statistics, variable-type theory, missing-value handling, filtering, transformations, matrices, indexing exercises, loops, and writing functions;
- tidyverse syntax, pipes, `library()`, `attach()`, `setwd()`, `{here}`, Rtools, Git, GitHub, Quarto, renv, and private course helpers;
- biological or statistical interpretation of the relationship in the point graph;
- models, inference, diagnostics, and any material reserved for L01 or later lessons;
- automatic package installation, network-dependent core steps, a public answer key, or restricted assessment content.

## Validation and review record

- Parse and clean-session execution: passed from a temporary project with no network dependency; on the current Windows host the validation runner selected its supported `.UTF-8` locale because the host startup configuration requests the invalid Windows locale name `C.UTF-8`; the complete script created a non-empty PNG with visually verified Czech labels.
- Complete untracked reference solution: passed for all 13 core and six optional tasks; the temporary harness was removed after validation.
- UTF-8 and prohibited-pattern checks: passed; UTF-8 without BOM, 19 unique task IDs, complete task contracts, and no active prohibited commands.
- Timed core-route result: 64-minute direct-work estimate; plausible but tight according to independent review, with classroom timing still required.
- Independent exercise reviewer: Hegel completed the final leakage-remediation review; one low-severity regression in Czech axis-label diacritics was corrected, and focused rereview returned `No findings.`
- Findings and revisions: kept data columns direct rather than introducing vectors before L01; replaced inaccurate distribution wording with direct student download links; simplified task presentation; defined R, RStudio, Source, comments, projects, and whole-script execution before use; converted teacher cues into direct student actions; removed the out-of-scope `library()` reference and Unicode escape notation; clarified multi-command execution; restored every necessary task input within its prompt; and retained ordinary correctly accented Czech graph labels.
- Human review: approved by Ondřej Mottl on 2026-09-12; approved for the exercise pull request.
