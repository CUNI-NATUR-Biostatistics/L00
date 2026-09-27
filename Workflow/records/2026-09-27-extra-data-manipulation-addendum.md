# L00 Extra data-manipulation addendum

**Date:** 2026-09-27  
**Status:** Implemented and independently reviewed; human approval pending  
**Owner direction:** Redesign the complete Extra route so basic data manipulation is introduced in a coherent order without changing the shared core route.

## Relationship to the approved blueprint

This addendum supersedes only the optional-practice and out-of-scope statements in `2026-09-11-exercise-blueprint.md`. The thirteen core tasks, their 64-minute direct-work estimate, distribution route, approved dataset, and shared classroom route remain unchanged.

The course owner explicitly approved adding vectors, `c()`, `$`, square-bracket access, safe modification, and a final logical-selection challenge to `Úlohy navíc`. These concepts remain optional preparation rather than new L00 core outcomes.

## Optional routes and timing

Students do not need to complete every optional route.

| Route | Tasks | Purpose | Direct-work target |
|---|---|---|---:|
| Short revision | L00-N01 to L00-N03 | Revisit expressions, function arguments, and table inspection | 5–7 min |
| Data manipulation | L00-N07 to L00-N13 | Move from a familiar table column to vectors, positional access, safe modification, and logical selection | 20–25 min for faster students |
| Output and debugging | L00-N04 to L00-N06 | Revisit plot customization, file output, and object-name debugging | 10–12 min |

The published identities and purposes of L00-N01 to L00-N06 remain stable. Their position in the script is organized by conceptual route rather than numeric ID.

## Knowledge progression

The data-manipulation route uses only the approved `data_tucnaci` story:

1. connect the already-seen `data_tucnaci$column` expression to the idea that one table column is a vector;
2. construct a short vector with `c()`;
3. select one or several vector positions with square brackets;
4. replace one position in a practice vector;
5. transfer square-bracket access to a table cell, row, and column;
6. copy the table before adding one unit-conversion column;
7. observe a logical vector before using it for whole-row selection.

Worked examples precede transfers, and every active example can run from a clean session without relying on an answer workspace.

## Dependencies and boundaries

- Dataset: the existing prepared `data/palmer_penguins.csv`; no new file or package.
- Worked-example objects created by the distributed script: `vec_hmotnost`, `vec_hmotnost_cvicka`, and `data_tucnaci_extra`.
- Sequential student-created dependencies: L00-N07 creates `vec_delka_kridla`; L00-N08 creates `vec_delka_kridla_cvicka` for L00-N09 and L00-N10; L00-N12 adds `hmotnost_kg` to `data_tucnaci_extra` for L00-N13.
- The original `data_tucnaci` object is not modified.
- The synthetic plant table and `data.frame()` constructor are removed.
- Still out of scope: lists, `[[ ]]`, negative or named indexing, factors, missing-value handling, general data-cleaning workflows, tidyverse syntax, loops, functions, models, and inferential interpretation.
- Logical row selection appears only as the final optional challenge and is not assumed by the shared core route.

## Validation record

- Parse and clean-session execution: passed in a temporary project containing the distributed script and prepared CSV.
- Complete untracked reference solutions: passed for L00-N01 to L00-N13, including the three non-empty PNG outputs.
- UTF-8 and public-content checks: passed; both changed files are UTF-8 without BOM or replacement characters, all thirteen optional tasks retain complete task contracts, and no prohibited active session or package calls were introduced.
- Focused diff check: passed; the shared core route is unchanged, published task identities L00-N01 to L00-N06 retain their purposes, and the synthetic plant table plus `data.frame()` detour are absent.
- Independent read-only exercise review: initial findings on N11 first use, N12 first use, Czech naming, and dependency recording were corrected; focused rereview returned `No findings.`
- Timing: L00-N07 to L00-N13 is plausibly 20–25 minutes for faster students; a complete beginner may need 25–30 minutes.
- Residual environment note: the Windows host emits its pre-existing invalid `C.UTF-8` startup warnings; direct `Rscript` execution and all assertions passed.
- Residual visual gap: regenerated PNG files were confirmed non-empty but were not visually re-inspected because the existing plotting code was not substantively changed.
- Human review: pending.
