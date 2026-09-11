# Licensing

Unless a file or its attribution states otherwise, this repository uses the following two licenses.

## Educational content: CC BY 4.0

Original course text, slides, original figures, and rendered teaching materials are licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0): https://creativecommons.org/licenses/by/4.0/

When reusing this material, credit:

> Biostatistika a plánování ekologických pokusů (MB120P163), Ondřej Mottl and contributors, Charles University, 2026, with a link to the source repository.

Indicate whether you made changes and retain any more specific author or attribution notice attached to an item.

## Software: MIT License

Source code, scripts, workflows, stylesheets, templates, and other software components are licensed under the MIT License:

Copyright (c) 2026 Ondřej Mottl and contributors

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Third-party material and marks

These licenses do not cover third-party datasets, photographs, illustrations, fonts, portraits, logos, trademarks, or other material identified as coming from another source. Such items remain subject to their own terms and attribution requirements. The Charles University name and marks are not licensed for endorsement or branding by this file.

### Palmer Penguins dataset

`data/palmer_penguins.csv` is derived from `palmerpenguins::penguins` version 0.1.1. The original data were collected and made available by Dr Kristen Gorman and the Palmer Station Long Term Ecological Research program. Dataset documentation, citation guidance, and source links are available from the [palmerpenguins project](https://allisonhorst.github.io/palmerpenguins/) and its [R Journal article](https://journal.r-project.org/articles/RJ-2022-020/).

The source data are released under the [CC0 1.0 Universal public-domain dedication](https://creativecommons.org/publicdomain/zero/1.0/). The lesson file preserves the source row order, retains `species`, `flipper_length_mm`, and `body_mass_g`, removes the two rows incomplete on those fields, and omits source row names. It contains 342 rows and has SHA-256 checksum `a911f303c2e55847dd81c943b3d3cf75c0d90a0d0ac7399cf6a531ed918f7560`.

### RStudio interface screenshot

`Learning_materials/figures/rstudio-fresh-install.png` is an unmodified copy of [RStudio - Fresh Install.png](https://commons.wikimedia.org/wiki/File:RStudio_-_Fresh_Install.png), created by Wikimedia Commons user Rcragun on 11 August 2026 and licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). The local copy has SHA-256 checksum `2F63D1315DC73AE5F6BA2826A80452DFA7D4E6DF27EDEB18394F0D1EEEDDCDC9`.

The adjacent `rstudio-source.svg`, `rstudio-console.svg`, `rstudio-environment.svg`, and `rstudio-tabs.svg` files are viewport crops of that screenshot. `rstudio-overview.svg` adds four numbered markers to the same screenshot. These derived files do not redraw the depicted interface and are distributed under CC BY-SA 4.0. Presentation-local PNG exports are stored in `Presentation/Materials/` so the RevealJS deck can embed self-contained screenshot crops through its supported asset path. Detailed modification and attribution notes are recorded in `Learning_materials/figures/README.md` and `Presentation/Materials/README.md`.

