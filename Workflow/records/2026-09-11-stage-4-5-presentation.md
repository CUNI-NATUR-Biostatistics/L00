# Stages 4-5 - Slide Storyboard, Build, and Human Review

## Metadata

- Week: L00
- Date: 2026-09-11
- Author: Ondřej Mottl (with Codex)
- Reviewer: Ondřej Mottl

## Git checkpoint

- Stage group: Stages 4-5 presentation
- Branch: `lesson/l00-presentation`
- Base branch and commit: `main` at `f7d681e` (`L00 introduction: build beginner-first R guide and visual workflow (#2)`)
- Stages 2-3 PR merged: [x]
- Branch created from updated default branch: [x]
- `git status --short` reviewed before editing: [x]
- Presentation PR: #3, merged 2026-09-11

## Intended classroom role

The presentation is not a compressed version of `Learning_materials/skripta.qmd` and is not expected to carry the lesson without the teacher. It is a visual navigation and checkpoint layer for a live 90-minute code-along. The teacher repeatedly shows one orienting image or question, switches to RStudio, demonstrates the action, gives students time to repeat it, checks one visible result, and returns to the deck.

The approved written material remains the independent self-study and reference route. It contains the fuller explanations that would overload the classroom slides. The classroom deck may therefore be text-light, but no live action may rely on an unexplained term or an invisible prerequisite.

Planned screen-time balance is approximately 25-30 minutes with the deck visible and 60-65 minutes in live RStudio or student practice. From slide 6 onward, every slide except the closing summary has an explicit RStudio hand-off, student action, or observable checkpoint.

## Inspiration consulted

- Relevant source(s) from `_internal/obecne/nove/biostatistics_course_inspiration_hub.md`: Beginning R, Introduction to R, and R for Data Science 2e for small-step orientation and reproducible workflow structure.
- Primary presentation pattern: the pinned [SSoQE presentation](https://github.com/SSoQE/SSoQE-Our_Way_of_R_and_Reproducibility/blob/a4af97e9e563644da7936aa2109b927c60b9903d/Presentation/presentation.qmd), re-read in full before this story map.
- Visual or data-storytelling pattern worth borrowing: one full RStudio screenshot followed by focused panel views; keyboard shortcuts attached to a visible action; projects introduced through files and folders; short practical interruptions; clean-session thinking as the final proof of a saved workflow.
- How the pattern is being adapted to this course's slide rules: retain the panel-by-panel orientation and repeated practical rhythm, but replace the SSoQE section-divider lecture structure with small presentation-to-RStudio cycles. Use Czech beginner language, the approved Palmer Penguins CSV, base-R code, real RStudio screenshots, and ordinary partner checks rather than timers or polling technology.
- What from the source is intentionally not being reused: alternative IDEs, interface customization, `.RData` configuration, `{here}`, Git/GitHub, PATs, shell, Rtools, `{usethis}`, Quarto setup, workshop infrastructure, and package-heavy code.

## Classroom hand-off contract

Each practical cycle follows the same teacher routine:

1. Keep the presentation visible only long enough to orient the task or ask the prediction.
2. Switch to a cleanly arranged RStudio window and demonstrate one new action without introducing the following action early.
3. Give students time to reproduce or adapt that action in their own project.
4. Check a named screen location, file, value, or partner explanation.
5. Return to the next presentation slide only after the checkpoint is visible.

The teacher names the current screen location before giving a command. Console-only commands are explicitly identified before they are typed. Code intended for the durable workflow is typed into Source and saved. No slide asks about restarting R before the slide has defined what a restart does.

## Mandatory story map

- Artifact: Presentation
- Granularity: one row per slide, including intentionally blank or repeated headings
- Story-map status: complete
- Heading-strip audit completed: [x]
- Knowledge-state audit completed: [x]
- Human story-map approval: approved
- Approved by: Ondřej Mottl
- Approval date: 2026-09-11
- Approval decision and requested revisions: Approved without requested revisions; proceed to the complete presentation build.

| Order | Internal role | Student-facing heading | Speaker note |
|---|---|---|---|
| 1 | Title and machine-readiness start, 0-1 min | Jak vytvoříme obrázek z měření tučňáků a uchováme jeho postup? | Keep the title visually minimal. While it remains visible, ask everyone to open RStudio. The only checkpoint is that the application window opens; do not ask students to type into an unexplained panel yet. |
| 2 | Biological and reproducibility hook, 1-4 min | Jak vytvoříme obrázek z měření tučňáků a uchováme jeho postup? | Show a small real CSV excerpt beside the final base-R image as the destination, without interpreting the relationship. Ask pairs what would need to be kept if the same task arrived with a new table next week. |
| 3 | Plain-language destination, 4-5 min | Výsledky učení | Use four concise actions: orient in RStudio; save and run written instructions; open a CSV and create an image; recover the result after a clean start. Avoid `objekt`, `funkce`, `relativní cesta`, and `restart` here because they have not been earned. |
| 4 | Motivation and balanced Excel comparison, 5-7 min | Kdy je užitečnější uložit postup než opakovat klikání? | Contrast a repeated mouse-driven task with a saved text procedure. Explain that Excel remains useful for opening and manually inspecting a small table. The checkpoint is a show of hands for which route is easier to repeat exactly. |
| 5 | Define R and distinguish it from RStudio, 7-9 min | R provádí zapsané příkazy, RStudio poskytuje pracovní okno | Define `kód` as precise written instructions. Switch briefly to RStudio, point to the window, and say explicitly that R is the program performing the command. Students only watch this distinction. |
| 6 | First full interface map and prediction, 9-12 min | Kde hledat zapsané příkazy, odpověď R, paměť a obrázek? | Use the real numbered RStudio screenshot. Students point with a partner before panel names are revealed. Switch to live RStudio and identify the four regions in the same order as the screenshot. |
| 7 | Source and Console contrast, 12-15 min | Source uchovává skript, Console ukazuje odpověď R | Use two focused crops from the same real screenshot. Define a script as a saved text file containing code, define the `>` prompt, then type `1 + 1` in Console for the delayed readiness check. Students repeat and compare where the command and result appear. |
| 8 | Explain the two right-hand regions, 15-17 min | Co ukazují dvě pravé oblasti RStudia? | Use focused real screenshot crops. Explain Environment as the current memory of the running R, and show that Files, Plots, Packages, and Help are tabs sharing one region. Students click each tab and point to where a file, picture, and help page would appear. Do not introduce object types. |
| 9 | Connect saved code to execution, 17-23 min | Jak se řádek ze skriptu dostane k R? | Open an unsaved R script live, type a comment and `2 + 3`, save the text once, then use Ctrl + Enter. Students reproduce the action and state the difference between Ctrl + S and Ctrl + Enter. Return to the slide for the Source, key, Console checkpoint. |
| 10 | Harmless error encounter and repair, 23-28 min | Co znamená značka `+` na začátku řádku? | In Console, demonstrate `(2 + 3`, pause at the continuation prompt, define what R is waiting for, cancel with Esc, and run the corrected expression. Students reproduce the error and repair. Check that everyone has returned to `>`. |
| 11 | Folder-first project model and saved script, 28-42 min | Projekt je jedna složka práce otevřená v RStudiu | Show the target folder tree with `data`, `vystupy`, the `.Rproj` file, and `prvni_kroky.R`. Create the project and folders live, then save the existing script in the project. Students follow. The checkpoint is the same structure in Files and the project name at the top of RStudio. Do not teach relative paths yet. |
| 12 | Assignment and Environment before-after comparison, 42-47 min | Kdy se pojmenovaný výsledek objeví v Environment? | Show `delka_lekce_min <- 90` in Source but do not run it. Students predict whether the right-hand memory has changed. Run it with Ctrl + Enter, introduce the word `objekt` only after it appears, then have students change 90 to 80 and explain why execution is required. |
| 13 | Concrete function call, named arguments, and help, 47-53 min | Co změní nastavení `digits`? | Present `round(x = 3.14159, digits = 2)` as a concrete question before naming its parts. In RStudio, identify the function and named arguments, let students change `digits`, then open `?round` and find Usage and Arguments in Help. The checkpoint is a changed result and an open help page. |
| 14 | Package concept, teacher-led installation, and fallback, 53-63 min | Odkud se v R berou další možnosti? | Explain a package as an installed addition only after students have used built-in functions. Type `install.packages(pkgs = "palmerpenguins")` in Console, then use `names(x = palmerpenguins::penguins)` without `library()`. Students repeat if installation succeeds. Stop troubleshooting after five minutes and continue with the committed CSV in every case. |
| 15 | Return to the opening data story and ground the observational unit, 63-66 min | Jeden řádek patří jednomu tučňákovi | Show a small real table from the approved CSV and visually isolate one row and its three values. Restate the opening question verbatim. Students identify what one row represents and what each column records. Do not teach variable-type classification or descriptive statistics. |
| 16 | Relative path through the known folder model and CSV import, 66-71 min | Cesta k datům začíná ve složce projektu | Reuse the folder tree and focus on `data/palmer_penguins.csv`. Copy or verify the prepared CSV in `data`, then type the `read.csv(file = ...)` call into Source. Students repeat. The checkpoint is `data_tucnaci` in Environment and no computer-specific absolute path in the script. |
| 17 | Immediate import verification, 71-75 min | Jak poznáme, že jsme otevřeli správnou tabulku? | Ask the three visible questions before showing the commands: first rows, column names, and row count. Demonstrate `head()`, `names()`, and `nrow()` in Source, and have students compare the output with the displayed expectations. Avoid summaries, missing values, and data-type language. |
| 18 | Row-to-point bridge and first base-R graph, 75-80 min | Jeden tučňák vytvoří jeden bod | Keep the first table row visible beside its intended horizontal and vertical position. Students first locate the displayed penguin, then reveal that `$` selects a named column and that `x` and `y` set the horizontal and vertical axes. Type the minimal direct `plot(x = data_tucnaci$flipper_length_mm, y = data_tucnaci$body_mass_g)` call live. Students reproduce it. Name `bodový graf` only after the mapping is visible; do not interpret the biological relationship. |
| 19 | Distinguish a displayed plot from a saved output, 80-84 min | Plots ukazuje obrázek, PNG zůstává jako soubor | Show the same real output in Plots and as `vystupy/tucnaci.png` in Files. Demonstrate `png()`, the same `plot()`, and `dev.off()` in Source. Students reproduce and verify the PNG in Files. The checkpoint is the file, not a statistical conclusion. |
| 20 | Define restart, predict persistence, and run the clean-session test, 84-88 min | Co se při restartu R změní? | Begin the slide body with the explicit definition: restarting R ends only the running R process and starts a clean one while RStudio and files stay open. Students predict the fate of the script, CSV, PNG, and Environment. Save the script, restart R, compare with predictions, then use the Source button to run the complete script. |
| 21 | Evidence-based key-ideas summary, 88-89 min | Co už umíme | Confirm the observed result before summarizing four distinctions: R and RStudio; Source and Console; Environment and files; displayed and saved output. Include that the saved script rebuilt the result from the saved CSV after the restart. |
| 22 | Closing conceptual question and exit check, 89-90 min | Co byste poslali spolužákovi, aby výsledek obnovil? | Students answer to a neighbour and point to the relevant items in Files. Accept the complete project folder containing the script and input data as the practical answer; the PNG alone shows the result but not how it was produced. End only after students can show their script, CSV, Environment object, Plots image, and PNG. |

## Knowledge-state ledger

| Concept block | May assume before | Introduced or earned here | Must not assume yet | Evidence or experience |
|---|---|---|---|---|
| Slides 1-4: purpose and motivation | Students recognize ordinary files, folders, tables, mouse actions, and the idea of repeating a task. | A saved text procedure can preserve how a result was made; R is useful when work must be repeated, checked, shared, or applied to a new table; Excel and R have overlapping but different strengths. | No knowledge of code, scripts, RStudio panels, reproducibility terminology, or statistics. | Real penguin-table excerpt and final image; comparison of repeated clicking with retained written steps; students identify which route is easier to repeat exactly. |
| Slides 5-10: R, RStudio, panels, and executing one line | The purpose of retaining instructions is established. | Code means precise text instructions; R performs them; RStudio organizes the work; Source, Console, Environment, Files, Plots, Packages, and Help have distinct roles; Ctrl + Enter sends code; `>` means ready and leading `+` means R is waiting for completion. | Do not assume students know objects, functions, projects, relative paths, package installation, or what a restart does. | Licensed real RStudio screenshot and crops; live `1 + 1` and `2 + 3`; visible movement from Source to Console; deliberate incomplete-parenthesis repair. |
| Slide 11: folder and project | Students know normal folders and files and can save a script. | An RStudio Project is a normal main folder opened as one work unit through a small `.Rproj` file; `data` and `vystupy` separate inputs and outputs. | Do not assume why a relative path works or that `.Rproj` contains the data and code. | Target folder tree matched against Files and the Windows folder system; live project creation and saved `prvni_kroky.R`. |
| Slides 12-13: objects, functions, arguments, and help | Students can distinguish Source from Console, run a line, and inspect Environment and Help. | A named result becomes an object only after execution; assignment stores it in the current R memory; a function performs a task with inputs or settings in parentheses; named arguments expose their roles; `?round` opens help. | Do not assume data frames, vectors, object classes, package namespaces, or function-writing knowledge. | Before-after Environment comparison; changed but unexecuted source line; concrete `round()` result with altered `digits`; Usage and Arguments found in Help. |
| Slide 14: package | Students understand a concrete function call and direct Console use. | A package adds functions, documentation, or data; installation and use are separate; `package::object` selects content without attaching a package; package installation is not required for the remaining CSV route. | Do not assume `library()`, dependency management, repositories, renv, or successful network access. | Teacher-led Console installation; `names(x = palmerpenguins::penguins)` output when available; timed failure route continuing with the committed CSV. |
| Slides 15-19: table, path, import, graph, and saved output | Students know the project folder, saved script, objects, functions, named arguments, and visible panel roles. | One row represents one penguin; three columns contain species, flipper length, and body mass; a relative path starts at the project folder; `read.csv()` creates the table object; `head()`, `names()`, and `nrow()` verify identity; `$` selects a named table column; `x` and `y` map those columns to the horizontal and vertical axes; one row maps to one plotted point; Plots and a PNG file are different. | Do not assume variable-type theory, missing-value handling, filtering, statistical summaries, association, causation, modelling, or biological interpretation of the point cloud. | Real approved CSV excerpt; folder tree and live import; three verification outputs; first-row coordinates linked to one point; base-R plot; PNG verified in Files. |
| Slides 20-22: clean session and reproducibility | Students can distinguish R memory from files on disk and have a complete saved script. | Restarting R replaces the running R process with a clean one but does not close RStudio or delete files; rerunning the saved script rebuilds the working objects and output from saved inputs; the complete project folder preserves both the result and how it was made. | Do not assume `.RData`, session restoration settings, Git, Quarto, or formal definitions of reproducible research. | Prediction checked against empty Environment and persistent Source/Files; complete script rerun; recreated Plots image and PNG; final partner explanation naming what must be shared. |

## Heading-strip audit

The 22 headings were read without bodies. The sequence begins with the real task, earns the reason for R, defines R before RStudio, introduces interface locations before asking students to use them, moves from familiar folders to projects, introduces objects and functions through visible changes, returns to the penguin table before import and plotting, defines restart before the prediction, and closes with a practical sharing question. No heading uses development-stage labels, repository codes, generic sequencing words, or a statistical term before its evidence.

## Visual workflow checks

- Story map completed and explicitly human-approved before full slide copy: [x]
- Text-light slides (no dense walls): [x]
- Staged reveal via fragments/incremental: [x]; meanings needed for each prediction are visible before commitment, while results and follow-up actions are revealed afterward
- Figures generated locally near slide blocks: [x], using the committed CSV and slide-local hidden chunks
- Immediate interpretation after key visuals: [x], as an observable interface or file checkpoint rather than statistical interpretation
- Interaction cadence present: [x], hands-on or partner checkpoint every 3-10 minutes

## Slide-role rhythm

- Main interaction slide form used: real screenshot or output with one prediction, followed by pointing, partner explanation, or immediate reproduction in RStudio. No PollsLive integration is planned because the frequent hands-on checkpoints already provide the required interaction and adding another interface would consume beginner attention.
- Main evidence reveal form used: licensed real RStudio screenshot and focused crops; live RStudio state changes; small real CSV excerpt; first-row-to-point mapping; actual base-R plot and saved PNG.
- Main interpretation form used: direct comparison of two concrete states, such as Source versus Console, before versus after execution, Environment versus Files, and Plots versus PNG.
- Where the bridge to the next concept happens: each checkpoint leaves one concrete practical need. The empty Environment motivates an object, the project folder motivates a relative path, the imported table motivates verification, the displayed plot motivates a saved file, and accumulated memory motivates the clean-session test.

## Planned visual vocabulary after story-map approval

- Keep the title and the most important questions visually sparse.
- Reuse the approved real RStudio screenshot and its focused crops from the written materials. Copy the required assets into `Presentation/Materials/` during the build, retain item-level CC BY-SA 4.0 attribution, and do not replace the interface with a drawn mock-up.
- Use one recurring compact `Úkol v RStudiu` cue for the hand-off, but vary slide composition so it does not become repeated component furniture.
- Keep code on the left and the expected screen location or output on the right when both appear together.
- Use grey for existing screen or data context, indigo for the current saved or computed result, orange for the question or action that needs attention, and red only for the incomplete-command warning.
- Use no decorative stock images or animations. The real RStudio interface, real penguin table, and real generated plot provide the visual anchors.
- Do not use drawn arrows in student-visible copy. Represent the Source, Ctrl + Enter, and Console relationship through aligned labelled regions and progressive reveal.

## Risks and fixes

- Visual rhythm risk: Repeated RStudio screenshots could feel like a software manual. Planned fix: alternate full-window orientation, focused crop comparisons, sparse questions, live state changes, a folder tree, a real table, and the final plot while keeping the live application as the dominant surface.
- Content pacing risk: Twenty-two slides exceed the original rough 12-18 estimate. Planned fix: most slides are short hand-off or checkpoint cues rather than exposition; only 25-30 minutes are expected with slides visible. If rehearsal exceeds 90 minutes, combine slides 8 and 9 or slides 16 and 17 without deleting their knowledge prerequisites.
- Knowledge-leakage risk: Panel names, object, function, relative path, and restart can appear before students know what they mean. Planned fix: the ledger fixes the first-use order, the story notes define each term before the task, and Stage 5 will include a first-use audit of all visible copy.
- Technology risk: Package installation can fail or consume the lesson. Planned fix: teacher-led Console installation, five-minute limit, no `library()`, and a committed CSV route that works without the package or network.
- Scope risk: The point cloud can invite a statistics lecture. Planned fix: discuss only how rows become points and how the output is saved; defer variable types, summaries, association, causation, and modelling.

## Build and validation evidence

- Complete deck: 22 slides with one `.notes` block per slide and headings matching the approved story map exactly.
- Classroom rhythm: approximately 25-30 minutes on slides and 60-65 minutes in live RStudio or student practice, with explicit hand-offs and observable checkpoints.
- Render: repository wrapper completed for live HTML and static PDF; `Presentation/presentation.html` and `docs/index.html` have identical SHA-256 hashes; the PDF contains 22 pages.
- Human feedback iteration: Ondřej Mottl described the complete deck as "pretty good" and requested more progressive disclosure so the presenter can talk through each idea before a text-complete slide appears. The 22-slide sequence and approved content were preserved while purposeful reveals were added to slides 2, 4, 5, 7-9, 11, 13-16, 19, and 20.
- Visual QA: every final slide canvas was inspected; live initial, intermediate, and final fragment states were captured and inspected for every slide changed in the pacing pass. A focused post-review check confirmed that slide 14 keeps the five-minute installation fallback visible in every state while revealing the package definition and commands in three steps.
- Independent review: the canonical read-only vision review found first-use leaks on slides 13 and 18 in the initial build; both were corrected and confirmed resolved. The post-fragment review found one credible participation-timing issue on slide 14: the installation fallback was initially hidden. It is now visible from the start, and the corrected states were rerendered and visually checked. No other blocking or credible findings remained. A final visible-language audit found no prohibited sequencing terms.
- Media: real RStudio screenshot crops are self-contained PNG assets; source, derivative status, CC BY-SA 4.0 terms, and item-level attribution are recorded in `Presentation/Materials/README.md` and `LICENSE.md`.
- Environment: unused template dependencies were removed from `renv.lock`; a fresh `Rscript -e "renv::status()"` reports no issues.
- Non-blocking render warnings: Windows could not apply the requested `C.UTF-8` locale, and the canonical brand SCSS reports four variables before declaration. Neither warning prevents HTML/PDF output or affects the inspected slide canvases.
## Stage 5 - Human review gate

- Finished slide headings compared with the story map: [x]
- Heading-strip, visible-copy, and first-use audits completed: [x]
- Lesson-vision review completed: [x]
- Human review completed: [x]
- Credible findings resolved: [x]
- Presentation rendered and checked: [x]
- Reviewer decision: Ondřej Mottl accepted the revised deck as usable on 2026-09-11 and requested feedback from the other lecturers. Independent vision reviews identified and resolved first-use leaks on slides 13 and 18 and a fragment-order issue on slide 14; no other blocking or credible findings remained.
- Usability status: usable for teaching and colleague review. The presentation is not frozen: evidence-based corrections from lecturer feedback may be incorporated before release.

## Decision

- [x] Slides ready for review
- [x] Story-map status is `complete`
- [x] Human story-map approval is `approved` and recorded
- [x] Diff is limited to presentation source, attributed media, rendered outputs, workflow status updates, and the required `renv.lock` cleanup
- [x] Revised deck approved as usable for teaching and colleague feedback
- [x] Presentation PR merged
- Notes: Ondřej Mottl explicitly approved the presentation story map and knowledge-state ledger on 2026-09-11. The 22-slide deck was built, rendered, checked across every final slide canvas and the meaningful initial/intermediate fragment states, and independently reviewed. Human feedback then prompted a purposeful fragment-pacing pass without changing the approved sequence or scope. Slide 13 defines `round`, `x`, and `digits` before prediction; slide 18 explains `$` and the `x`/`y` axis roles before students reproduce `plot()`; slide 14 keeps the installation fallback visible before the technology-dependent action. HTML and PDF render successfully, `Presentation/presentation.html` matches `docs/index.html`, and a fresh `renv::status()` reports no issues. The revised deck is approved as usable. Feedback from other lecturers will be requested using a bundle that contains both the presentation and the completed classroom R script, so that they can review the intended slide-to-RStudio rhythm rather than the deck in isolation. Commit, push, PR creation, and merge were subsequently authorized as separate operations; PR #3 merged on 2026-09-11.

## Issue #5 title-screen retrofit (2026-09-16)

Ondřej Mottl approved sketch A for the template and L00–L02 on 2026-09-16. For L00 this is a title-only visual retrofit: the first slide now leads with the approved row-2 penguin-data question while retaining the formal lesson title as secondary text. The original story-map approval and teaching sequence remain historical and unchanged; this is not approval of a broader deck rewrite or the Issue #6 illustrations.
