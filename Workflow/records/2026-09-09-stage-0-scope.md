# Stage 0 - Scope Lock

## Metadata

- Week: L00
- Date: 2026-09-09
- Author: Ondřej Mottl (with Codex)
- Reviewer: Ondřej Mottl

## Git checkpoint

- Stage group: Stages 0-1 planning
- Branch: `lesson/l00-scope-data`
- Base branch and commit: `main` at `a082d96` (`Initial commit`)
- Source template: `_L-template/main` at `c46b8cb` (`Add dormant PollsLive adapter to lesson template (#8)`)
- `git status --short` reviewed: [x]
- Previous-stage PR merged: N/A
- Planned PR: Draft planning PR #1 for Stages 0-1

## Topic sentence

Give complete beginners a safe, teacher-led first encounter with R and RStudio. The teacher repeatedly moves from a short visual cue in the presentation to a live RStudio demonstration, students immediately reproduce the action, and the group verifies a visible checkpoint before continuing. Across those cycles, students create a project and script, import a small real biological table, make and save one output, and prove reproducibility by restarting R and rerunning the script from top to bottom.

## Weekly outcomes (mapped)

- Canonical L00 outcomes 1-2 from `_internal/osnova_lekci.md`: identify the Source, Console, Environment, and Files/Plots panels and create or open an RStudio Project.
- Canonical L00 outcomes 3-5: create, edit, save, and run an annotated R script; use R as a calculator; assign an object; call a function with named arguments; consult help; and recognize one simple error.
- Canonical L00 outcome 6: install one lightweight package manually and access its content with namespace syntax, without attaching it with `library()`.
- Canonical L00 outcome 7: load a CSV through a project-relative path, inspect it, create and save one simple base-R figure or table, restart R, and reproduce the result from the saved script.
- Boundary with L01: L00 establishes a reproducible working route but does not teach descriptive statistics or variable-type theory.

## Inspiration consulted

- Authoring problem to solve: How to make a voluntary 90-minute introduction genuinely useful to students who may never have written code, while leaving them with a complete reproducible workflow rather than a tour of disconnected commands.
- Relevant source(s) from `_internal/obecne/nove/biostatistics_course_inspiration_hub.md`: [Beginning R](https://bristol-training.github.io/intro-r-1/), [Introduction to R](https://malo-jn.quarto.pub/introduction-to-r/), and [R for Data Science 2e](https://r4ds.hadley.nz/); supplemented by the pinned [SSoQE presentation](https://github.com/SSoQE/SSoQE-Our_Way_of_R_and_Reproducibility/blob/a4af97e9e563644da7936aa2109b927c60b9903d/Presentation/presentation.qmd).
- Pattern(s) worth borrowing: complete-beginner framing; small code-along steps; visible RStudio orientation; keyboard shortcuts; projects and scripts as the normal workflow; prediction before execution; frequent observable checkpoints; one data-to-output arc; restart-and-rerun as the final proof.
- Pattern(s) explicitly rejected: alternative IDEs; `{here}`; Git, GitHub, PATs, shell, Rtools, `{usethis}`, Quarto authoring, tidyverse-first syntax, and workshop installation infrastructure.
- Why the selected pattern fits this course: The presentation controls the pace and makes each transition explicit, but students spend most of the meeting acting in RStudio. The teacher demonstrates every new action live before students repeat it. The written material is a separate self-study and reference route rather than a transcript of the classroom performance.

## Concrete student actions (5)

1. Identify the Source, Console, Environment, and Files/Plots panels and predict where code, output, objects, and plots will appear.
2. Create or open an RStudio Project; create, annotate, save, and run an R script with `Ctrl + Enter`.
3. Use R as a calculator, assign an object, call a function with named arguments, open help, and repair one harmless syntax error.
4. Install one lightweight package manually and use its content through `package::object` or `package::function`, without attaching the package.
5. Load a CSV through a project-relative path, inspect it, create and save one simple base-R output, restart R, and reproduce the output by rerunning the script.

## In-person teaching rhythm

The classroom spine is the teacher's repeated hand-off between the presentation and RStudio:

1. show one short visual cue or question in the presentation;
2. switch to RStudio and demonstrate the action live;
3. ask students to reproduce or adapt the action in their own project;
4. verify one visible result or partner comparison;
5. return to the presentation to orient the next cycle.

`Exercises/cviceni.R` is the students' working surface and durable record of what they do. It supports the live hand-offs but does not independently set the classroom pace. The presentation is a concise navigation and demonstration deck, not a continuous lecture. `Learning_materials/skripta.qmd` may explain the same ideas in a different order and with more context because its primary role is self-study and later reference.

## Classroom route and checkpoints

| Time | Presentation to RStudio cycle | Observable checkpoint |
|---|---|---|
| 0-7 min | Slide: purpose and readiness → teacher opens RStudio → students open it and try the Console | RStudio opens and the Console accepts `1 + 1` |
| 7-17 min | Slide: four-panel map → teacher points through a live session → students locate and predict destinations | Partner points to where a script, result, object, and plot will appear |
| 17-28 min | Slide: prediction prompt → teacher uses the Console and repairs an error → students repeat | Corrected expression returns the expected value |
| 28-42 min | Slide: Project and script route → teacher creates and saves them → students reproduce and run lines | Saved `.R` file appears in Files and selected lines run with `Ctrl + Enter` |
| 42-53 min | Slide: object-function-help cues → teacher demonstrates each in RStudio → students reproduce | Named object appears and a help page opens |
| 53-63 min | Slide: what a package adds → teacher installs from the Console and uses namespace syntax → students repeat | Package content is accessed without `library()`; troubleshooting stops after five minutes |
| 63-75 min | Slide: one row, three columns, relative path → teacher imports the committed CSV → students repeat | Imported table exists and the script contains no absolute path |
| 75-84 min | Slide: expected output → teacher creates and saves it → students reproduce | Output file exists in the project |
| 84-90 min | Slide: clean-session challenge → teacher restarts and reruns → students do the same and complete the exit check | Empty session is rebuilt and the same output is recreated |

## Out of scope this week

- Descriptive-statistics teaching, variable-type theory, missing-value handling, filtering, loops, writing functions, modelling, or statistical interpretation of the final display.
- Tidyverse syntax, Git/GitHub, Quarto, `setwd()`, `{here}`, Rtools, alternative IDEs, or package-development workflows.
- Installing R or RStudio during the classroom core; home installation belongs in a self-study appendix.
- Live collection of personal student data, Excel-mediated data entry, and long undifferentiated task banks.

## Risks and dependencies

- Risk: A package-installation or network failure could consume the meeting. Mitigation: teacher-led Console installation, a five-minute limit, a commented recovery command only, and a committed CSV that keeps the core route usable offline.
- Risk: Complete beginners can lose track of whether code belongs in the Console or Source. Mitigation: every block states the expected panel and includes a visible checkpoint.
- Risk: Frequent application switching can become disorienting or waste time. Mitigation: every slide-to-RStudio hand-off uses the same verbal cue and screen order, and the presentation includes explicit return markers rather than introducing content while windows are changing.
- Risk: The final plot can accidentally become an early statistics lesson. Mitigation: describe only what was drawn and saved; defer summaries, variable types, and interpretation to L01.
- Dependency: Stage 1 must lock a small real biological dataset with stable provenance, clear observational units, minimal missingness, and a simple base-R visual.
- Dependency: Representative lab-account testing must confirm CRAN access, a writable user library, project creation, relative paths, output creation, and restart-and-rerun.
- Inspiration risk: Existing introductory courses and legacy materials expand quickly into tooling or statistics. Borrow their orientation and practice rhythm only, not their full scope.

## Decision

- [x] Scope locked for implementation
- [x] Continue Stage 1 on this same planning branch
- Notes: The user explicitly approved the scope and implementation plan on 2026-09-09, then clarified and approved the live teaching rhythm on the same date. The in-person lesson is led by continuous switching between concise presentation cues, teacher demonstrations in RStudio, immediate student practice, and checkpoints. The exercise script is the students' workspace; the written guide is a separate self-study/reference route. Repository setup was verified with a clean `renv::status()` and a successful supported full render; generated template artefacts were not retained because their sources remain untouched pending later story-map approvals.
