# Stages 2-3 - Learning Materials and Human Review

## Metadata

- Week: L00
- Date: 2026-09-09
- Author: Ondřej Mottl (with Codex)
- Reviewer: Ondřej Mottl

## Git checkpoint

- Stage group: Stages 2-3 written materials
- Branch: `lesson/l00-skripta`
- Base branch and commit: `main` at `5ec00c5` (`Set up L00 and select Palmer Penguins (#1)`)
- Stages 0-1 PR merged: [x]
- Branch created from updated default branch: [x]
- `git status --short` reviewed before editing: [x]
- Written-materials PR: #2, merged 2026-09-11

## Intended relationship to the in-person lesson

The written material is not a transcript of the classroom performance. The in-person lesson is paced by the teacher's repeated switch from presentation to live RStudio demonstration, student repetition, checkpoint, and back to the presentation. The written material is a deeper linear explanation for absent students and a later reference for attendees. It must earn every interface term before using it and must not rely on the teacher's spoken explanation.

## Human revision request after first full draft

The first approved map produced a draft that began too far downstream and assumed knowledge students do not have. On 2026-09-09 Ondřej Mottl requested a substantial rewrite with these requirements:

- begin with what R is, why biologists use it, and a careful comparison with Excel;
- remove the Czech word `relace` from the student-facing material;
- do not ask about restarting R before explaining what a restart is and what it changes;
- replace the drawn RStudio schematic with a real RStudio screenshot and focused crops;
- explain each RStudio panel concretely rather than naming panels only;
- explain an RStudio Project through the familiar folder system;
- explicitly show how Console differs from a script and how `Ctrl + Enter` connects them;
- deepen the prose throughout so that the written guide can stand alone.

The first full draft and its internal review are retained in Git history only as development evidence. Its story map is superseded by revision 2 below. No further full-prose rewrite may begin until revision 2 receives explicit human approval.

## Inspiration re-reviewed

- Primary source: the pinned [SSoQE presentation](https://github.com/SSoQE/SSoQE-Our_Way_of_R_and_Reproducibility/blob/a4af97e9e563644da7936aa2109b927c60b9903d/Presentation/presentation.qmd), re-read in full after the revision request.
- Patterns now adopted explicitly: define R before RStudio; show the complete RStudio window; devote separate explanations and crops to Source, Console, Environment, and Files/Plots/Help; show code execution and memory only after those locations are known; explain projects first as file organization; alternate explanation with small observable actions.
- Adaptation for L00: omit alternative IDEs, `.RData` settings, `{here}`, Git/GitHub, PATs, shell, Rtools, `{usethis}`, Quarto, descriptive statistics, filtering, missing-value procedures, variable-type theory, and modelling.
- Additional motivation: compare R with Excel without portraying either as universally superior. Excel remains useful for viewing a table and small manual edits; R becomes advantageous when an analysis must be repeated, checked, shared exactly, or applied to new data.

## Screenshot decision

- Use a real RStudio screenshot, not a drawn interface diagram.
- Follow the SSoQE sequence of one full-window screenshot followed by focused panel crops.
- Prefer the recent blank-window Wikimedia Commons image `RStudio - Fresh Install.png` (11 August 2026) over the SSoQE deck's older screenshot containing advanced `dplyr` and `ggplot2` code. The recent image is less distracting for complete beginners and is published with attribution/share-alike terms.
- After approval, store the approved source image locally, create course-branded crops without changing the underlying interface, and record the author, source URL, license, modification, and attribution in the lesson repository.
- If the current lab installation differs materially, replace the image with a locally captured screenshot during the room-validation stage while preserving the same teaching sequence.

## Mandatory story map - revision 2

- Artifact: Learning materials
- Granularity: one row per major section or concept block
- Story-map status: complete and approved
- Heading-strip audit completed: [x]
- Knowledge-state audit completed: [x]
- Human story-map approval: approved
- Approved by: Ondřej Mottl
- Approval date: 2026-09-09
- Approval decision and requested revisions: Revision 2 approved without further requested changes.

The revised heading strip begins from familiar spreadsheet work, defines R and RStudio separately, then teaches the interface one panel at a time. Only after Source and Console have been contrasted does the guide ask students to run code. Projects are derived from ordinary folders. Restarting R appears only after the guide has established memory, saved files, and a complete script.

| Order | Internal role | Student-facing heading | Content and visible evidence |
|---|---|---|---|
| 1 | Start from familiar practice and establish a genuine need | Proč se učit R, když známe tabulkový procesor? | Compare one-off viewing/editing in Excel with a repeated biological workflow. Show the same five manual steps repeated for a new file versus one saved R script rerun. State that the tools complement each other. |
| 2 | Define R without assuming programming vocabulary | Co je R? | Explain R as a language for giving a computer precise text instructions and as a program that executes them. Connect it to calculations, data tables, figures, and repeatable work; define `kód` as written instructions. |
| 3 | Separate the computational engine from its interface | R a RStudio nejsou totéž | Explain that R performs commands and RStudio is the application window that helps write, send, save, inspect, and organize them. Use a simple engine/workbench analogy only after the literal distinction. |
| 4 | Give students a map before asking them to navigate | Jedno okno, čtyři pracovní oblasti | Show a real full-window RStudio screenshot with numbered overlays for Source, Console, Environment, and Files/Plots/Help. Ask students to locate the same areas on their screen. |
| 5 | Explain Source from purpose to control | Source: místo pro uložený kód | Use the Source crop. Explain an `.R` script as a saved text file, the cursor, line numbers, unsaved marker, comments, Save, and that writing a line does not execute it. |
| 6 | Explain Console from purpose to control | Console: místo, kde R čeká na příkaz | Use the Console crop. Explain the `>` prompt, where to click, Enter for an immediately typed command, where commands and results appear, command history, and why Console is not the durable record. |
| 7 | Make the Source-Console relationship explicit | Jak se příkaz dostane ze skriptu do R | Show one screenshot pair or arrow sequence: current line in Source → `Ctrl + Enter` → copied command at `>` in Console → printed result. Contrast typing with executing and saving with running. |
| 8 | Explain temporary memory after execution is understood | Environment: co si R právě pamatuje | Use the Environment crop. Explain that named results appear here after code runs, are available only while R is running, and are not a replacement for saved code or data files. Avoid data-type theory. |
| 9 | Complete the interface map through concrete actions | Files, Plots a Help: soubory, obrázky a nápověda | Use the fourth crop. Explain each relevant tab separately: Files shows folders and files, Plots displays figures, Help opens explanatory pages for R commands, and Packages lists installed extensions. |
| 10 | Ground projects in prior folder knowledge | Složka drží soubory jedné práce pohromadě | Begin with the ordinary folders students know from Windows File Explorer. Explain files, subfolders, and a folder tree using `prvni-kroky-r/`, `data/`, `vystupy/`, and `prvni_kroky.R`. |
| 11 | Add the thin RStudio layer to the familiar folder | Soubor `.Rproj` otevře složku jako projekt | Map the folder tree directly to the RStudio Files panel and have students verify it on their own screen. Explain that `.Rproj` tells RStudio to treat that folder as one work unit and provides a stable starting point for file paths. |
| 12 | Create the durable working surface | Vytvoříme projekt a první skript | Give menu-level steps to create/open the project, create `data/` and `vystupy/`, create `prvni_kroky.R`, type a comment, save, and verify every item in Files. |
| 13 | Let students control Console and repair a harmless failure | R jako kalkulačka a první oprava | Type `2 + 3` directly at `>`, run with Enter, recall it with Up, then enter an incomplete parenthesis, explain the continuation `+`, cancel with Esc, and repair it. |
| 14 | Introduce assignment through an observable interface change | Objekt dá výsledku jméno | Put `delka_lekce_min <- 90` in the script, explain the arrow in plain language, predict the Environment change, run with `Ctrl + Enter`, and compare Source, Console, and Environment. |
| 15 | Introduce functions only after students can run and store values | Funkce provede konkrétní úkol | Use `round(x = 3.14159, digits = 2)`. Explain function name, parentheses, named arguments, result, and `?round`; connect Help to the tab already introduced. |
| 16 | Explain optional extensions without endangering the core route | Balíček přidá další možnosti | Explain package as an add-on containing functions, documentation, or data. Keep both `install.packages()` and `palmerpenguins::penguins` explicitly Console-only; enforce the five-minute fallback to the committed CSV. |
| 17 | Introduce the biological data before import syntax | Jeden řádek, jeden tučňák | Show a small table. Explain one row as one observed penguin and the three recorded properties; include provenance and units but no variable-type taxonomy or statistical summaries. |
| 18 | Connect relative paths directly to the folder tree | Cesta k datům začíná ve složce projektu | Point from the folder tree to `data/palmer_penguins.csv`, read the path aloud as steps through folders, then introduce `read.csv(file = ...)`. Explicitly avoid absolute paths and working-directory manipulation. |
| 19 | Establish a bounded readiness check | Načetli jsme správnou tabulku? | Use `head()`, `names()`, and `nrow()` and explain the concrete question answered by each function. Verify expected rows and columns without teaching summaries, types, or missing-data handling. |
| 20 | Build the first data figure from one observation | Dvě měření se stanou jedním bodem | Trace one table row to its x and y coordinates before showing the full base-R scatterplot. Explain `$` as selecting a named column and each visible plotting argument in plain language. |
| 21 | Turn a displayed result into a file | Obrázek uložíme jako soubor | Explain the Plots display versus a file on disk, then show `png()`, the same `plot()`, and `dev.off()` as open → draw → close. Verify `vystupy/tucnaci.png` in Files. |
| 22 | Define restart before asking students to perform it | Co znamená restartovat R? | Explain that RStudio stays open, files remain on disk, but R's temporary memory is cleared and a fresh R process starts. Have students compare Environment on their own screen immediately before and after the restart; name the menu/shortcut only now. Never use the word `relace`. |
| 23 | Make reproducibility the earned payoff | Dokáže skript obnovit naši práci? | Save the script, restart R, observe the empty Environment, run the complete script, and verify that objects, plot, and PNG return without manual Console repair. |
| 24 | Consolidate vocabulary and actions | Co už umíme | Revisit R versus RStudio, Source versus Console, memory versus files, folder versus project, and saved script versus recreated result. Use an exit check that asks students to point to each location and explain its role. |
| 25 | Keep home setup outside the classroom core | Instalace R a RStudia na vlastním počítači | Appendix with official download links, R-before-RStudio ordering, and a minimal `1 + 1` readiness check. Exclude Rtools and alternative IDEs. |
| 26 | Provide recovery in vocabulary already earned | Když se práce zastaví | Appendix ordered by visible symptom: active panel, Console prompt/message, incomplete command, spelling, earlier object creation, project folder, relative path, and package fallback. |
| 27 | Expose only glossary concepts actually used | Slovníček pojmů | Use the standard HTML table and Typst online fallback. Wrap section-local first occurrences conservatively and avoid introducing statistical terms only to define them. |

## Knowledge-state ledger - revision 2

| Blocks | May assume before | Introduced or earned here | Must not assume yet | Evidence or experience |
|---|---|---|---|---|
| 1-2. Motivation and R | Students know spreadsheets and ordinary files; no coding knowledge | R executes precise written instructions; code records steps; repeatability is the central benefit | RStudio panels, scripts, Console, objects, functions, packages, or reproducibility jargon | A repeated Excel workflow is contrasted with rerunning one saved script; students can say when each tool is useful. |
| 3. R versus RStudio | Students know what R is | R is the computational program/language; RStudio is an interface that helps work with R | Panel names or code-execution mechanics | Students can explain why installing or opening only one of the two is not the same task. |
| 4. Whole interface | Students can open RStudio and distinguish it from R | Four named areas exist and each has a broad role | Detailed controls inside any panel | Students match four numbered screenshot regions to their own screen. |
| 5. Source | Students can locate Source | Script, `.R`, cursor, line, comment, save, and the fact that typing is not execution | Console prompt behavior or Environment state | A saved commented line remains visible in Source and Files without producing a result. |
| 6. Console | Students know Source does not execute by itself | `>` means R is ready; Enter executes Console input; output and messages appear below; Console history is temporary | Source-to-Console shortcut or named objects | A typed calculation produces a visible command-result pair. |
| 7. Source to Console | Students understand both areas separately | `Ctrl + Enter` sends the current line/selection to R; saving and executing are distinct actions | Assignment or whole-script execution | Students trace one line through Source, Console, and its result. |
| 8. Environment | Students have executed code | R can keep named results in temporary memory; Environment shows them | Formal object/data types, RAM details, `.RData`, or restart workflow | A placeholder named result appears and disappears only later when restart is explained. |
| 9. Files, Plots, Help, Packages | Students know the first three areas | Each relevant tab answers a concrete question: where is my file, where is my image, where can I find an explanation of an R command, is an extension installed | Project-relative paths, functions, or package installation | Students locate one existing file, empty/previous plot area, Help search, and Packages tab. |
| 10-11. Folder and project | Students know folders and subfolders from their operating system | Project is an ordinary folder plus `.Rproj`; it supplies one stable work boundary | `setwd()`, `{here}`, Git, or general working-directory theory | Students map the shown folder tree to the same folders and files in RStudio Files. |
| 12. First project and script | Students know what the folder and Source are | They can create/open a project, subfolders, an `.R` file, a comment, and save it | Data import or complete script | Every expected file/folder is visible and the project name appears in RStudio. |
| 13. Calculator and error | Students can choose Source or Console intentionally | Direct Console entry, Enter, Up history, continuation `+`, Esc, and local repair | Debugging taxonomy, warnings, stack traces | Broken and corrected expressions create recognizably different Console states. |
| 14. Object | Students can run a saved line and recognize Environment | `<-` gives a result a name; execution creates/updates the object | Data structures, variable types, or persistence after restart | Predict → run → observe cycle across all three panels. |
| 15. Function and Help | Students understand named values and panel navigation | Function, parentheses, named arguments, returned result, `?name`, Usage, and Arguments | Writing functions or positional-argument rules | Students identify the function and arguments and find them in Help. |
| 16. Package | Students can use a function and Help | Package as installed extension; installation differs from use; `package::name` identifies content | `library()`, dependency management, `renv`, or package development | Console-only namespace example succeeds, or the class deliberately continues with CSV. |
| 17. Penguin table | Students understand files and named objects but need no data theory | One row is one penguin; columns are recorded properties with units and provenance | Variable-type taxonomy, summaries, group comparisons, or missing-data treatment | Students identify one penguin and read its three values from a visible row. |
| 18. Relative import | Students understand the project folder tree | Relative path is a route from the project folder; `read.csv()` creates a table object | Path normalization, working-directory manipulation, or alternative import packages | Students point through `data/` to the CSV before running the import. |
| 19. Minimal inspection | Students can identify the imported object | `head()`, `names()`, and `nrow()` each answer one readiness question | `str()`, `summary()`, descriptive statistics, types, filtering, or NA operations | Visible values match the expected three-column, 342-row file. |
| 20. Base-R plot | Students know row/column meaning and function arguments | `$` selects a column; x and y map two values from one penguin to one point | Correlation, trend, causation, regression, species comparison, or graph-choice theory | One row is traced to one plotted point before the complete figure appears. |
| 21. Saved output | Students can create a plot and navigate Files | Plots is temporary display; PNG is a disk file; open → draw → close produces it | Graphics-device internals or resolution theory | `vystupy/tucnaci.png` appears and opens outside the Plots tab. |
| 22. Restart | Students distinguish temporary memory from disk files | Restart starts fresh R inside the still-open RStudio; Environment clears while saved files remain | Reproducibility test outcome | Students predict and observe what disappears and what remains. |
| 23. Full rerun | Students understand restart and have a complete saved script | Reproducibility means saved instructions can rebuild results from saved inputs | Git, environment locking, or stochastic reproducibility | Empty Environment becomes populated and the PNG is recreated from the script alone. |
| 24. Consolidation | All core concepts have been experienced | Students can contrast the five critical pairs and narrate the complete workflow | New syntax or statistical interpretation | Exit check requires pointing, explaining, and demonstrating rather than recognizing words. |
| 25-27. Appendices and glossary | Reader has followed or is preparing for the core route | Minimal installation, bounded troubleshooting, and canonical term definitions | Comprehensive system administration or additional statistics | A self-study reader can reach the same checkpoints or report the exact failed step. |

## Stage 2A - Revised structural draft

- Revision-2 story map completed: [x]
- Revision-2 knowledge-state ledger completed: [x]
- Revision-2 heading strip audited: [x]
- Revision-2 story map explicitly human-approved before rewriting prose: [x]

## Stage 2B - Revised development pass

- Full prose rewrite completed: [x]
- Real RStudio screenshot, numbered overview, and panel crops added with attribution: [x]
- Excel-to-R motivation developed: [x]
- Panel controls and Source-Console flow explained: [x]
- Folder-to-project explanation developed: [x]
- Restart introduced only after memory and files: [x]
- Word `relace` absent from student-facing prose: [x]

### Format-specific screenshot implementation

The stored SVG assets are code-native viewport or annotation wrappers around the unchanged, attributed PNG screenshot. Typst/PDF resolves their relative bitmap reference correctly. With `embed-resources: true`, HTML converts a linked SVG into a data URI, which removes the base path needed by the SVG's nested bitmap reference and leaves a blank figure. The HTML source therefore uses equivalent inline SVG viewports over the same released PNG, while PDF uses the stored SVG assets through native Quarto image syntax. Both rendered formats were inspected and show the same real interface regions; no interface content is redrawn.

### Beginner leakage audit - 2026-09-10

Ondřej Mottl requested another explicit review for instruction and knowledge leakage. The correction pass:

- establishes a single code-destination rule and labels both Console-only sections;
- explains output marker `[1]`, object naming, quoted text, package arguments, namespace syntax, `head()`, relative paths, plotting arguments, PNG, and the whole-file Source button before students must rely on them;
- replaces the web-only data route with a teacher-provided local CSV as the classroom default and retains the public download as the self-study route;
- adds button-level instructions for creating folders and saving the script;
- removes forward references to later statistics, missing-data handling, `setwd()`, Rtools, Git, terminals, alternative editors, and graphics-resolution settings;
- keeps screenshot evidence limited to real RStudio captures. Folder equivalence and the Environment change are verified on each student's actual screen, which is more faithful than inserting a screenshot from a different project or redrawing interface state.

These are sequencing and evidence clarifications within the approved conceptual route, made in direct response to the 2026-09-10 human review request; they do not add a new teaching block or change scope.

### Fresh validation and independent review

- `Rscript R/render_skripta.R` regenerated the embedded HTML and a 21-page compressed PDF successfully.
- All PDF pages were visually inspected; key HTML sections and embedded RStudio image resources were checked after rendering.
- A fresh temporary R process completed the full offline CSV → inspection → vectors → plot → PNG route with 342 rows and without using the package or network.
- `renv::status()` reported no issues; the QMD is UTF-8 without BOM; source whitespace checks passed; release-manifest paths exist; machine-specific paths and unresolved placeholders are absent.
- Quarto's automatic alternate-format links were disabled because they exposed the internal `skripta_raw.pdf` filename; the public HUB remains responsible for linking the released HTML and `skripta.pdf` resources.
- The independent vision reviewer used the available canonical `.ai/agents/vision-corrector.md`. Findings on copied computed values, the raw-PDF link, and one process-led heading were fixed and the reviewer closed the recheck with no remaining blocker.
- The independent glossary reviewer used the available canonical `.ai/agents/glossary-coverage-reviewer.md`. The required English search term *scatter plot* was added at the first introduction of `bodový graf`; the reviewer confirmed five glossary links, four unique canonical entries, and no remaining blocker.

## Previous-draft review evidence

The superseded first draft rendered to HTML and a 12-page PDF, passed a clean temporary data-to-PNG route, and received independent lesson-vision and glossary reviews. Those checks do not approve the revised artifact and must be repeated after the revision-2 map is approved and the rewrite is complete.

## Stage 3 - Human review gate

- Finished headings and transitions compared with revision-2 story map: [x]
- Heading-strip, visible-copy, and first-use audits completed: [x]
- Independent lesson-vision review completed on revised artifact: [x]
- Independent glossary-coverage review completed on revised artifact: [x]
- Credible findings resolved: [x]
- HTML/PDF rendered and visually checked: [x]
- Human review completed: [x]
- Human reviewer: Ondřej Mottl
- Human approval date: 2026-09-10
- Reviewer decision: Both independent reviewers closed their rechecks with no remaining blocker. Ondřej Mottl then read and approved the implemented written materials without requesting another revision.

## Decision

- [x] Revised written materials are review-ready
- [x] Revision-2 story-map status is `complete`
- [x] Revision-2 human story-map approval is `approved` and recorded
- [x] Final written-material human approval is `approved` and recorded
- [x] Diff contains only Stages 2-3 sources, records, media, and corresponding outputs
- [x] Written-materials PR merged
- Notes: The first full draft is superseded. The revision-2 story map incorporates the human review findings and the re-reviewed SSoQE panel-by-panel teaching sequence. Ondřej Mottl approved revision 2 on 2026-09-09, requested the additional leakage audit on 2026-09-10, and approved the resulting written materials on 2026-09-10. The correction pass, final rendering, offline route test, independent review rechecks, and final human review are complete. Commit, push, pull-request creation, and merge were subsequently authorized as separate operations; PR #2 merged on 2026-09-11.
