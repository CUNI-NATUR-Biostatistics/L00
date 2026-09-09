# L00 — První kroky v R

**Praktický úvod do R a RStudia pro úplné začátečníky**

Tento repozitář obsahuje volitelnou nultou lekci kurzu [Biostatistika a plánování ekologických pokusů (MB120P163)](https://cuni-natur-biostatistics.github.io/) vyučovaného na Přírodovědecké fakultě Univerzity Karlovy.

Úplný přehled kurzu, rozvrh, pravidla hodnocení a materiály ostatních lekcí najdete na [veřejném HUBu kurzu](https://cuni-natur-biostatistics.github.io/).

## O této lekci

Jak se dostat od prázdné relace R k uloženému a znovu vytvořitelnému výsledku? L00 je praktické setkání pro studenty, kteří zatím nemají zkušenost s R ani s programováním.

Při prezenční výuce se opakovaně střídá krátká orientace v prezentaci, živá ukázka vyučujícího v RStudiu, vlastní krok studentů a společná kontrola výsledku. Studenti si vytvoří projekt a skript, vyzkoušejí Console, objekty, funkce a nápovědu, nainstalují jeden lehký balíček a načtou CSV pomocí relativní cesty.

Datový příběh využívá skutečná měření tučňáků z Palmerova souostroví. Jedna řádka představuje jednoho tučňáka a tabulka obsahuje druh, délku křídla a tělesnou hmotnost. Cílem není statistická interpretace, ale bezpečně projít cestu od dat k jednoduchému obrázku, uložit jej a po restartu R jej znovu vytvořit ze skriptu.

Tato pracovní rutina je základem všech dalších lekcí, ve kterých už budou studenti popisovat proměnné, formulovat modely a interpretovat biologická data.

## Výsledky učení

Po prostudování této lekce dokážete:

- rozpoznat panely Source, Console, Environment a Files/Plots a určit, kde se objeví kód, výstup, objekty a grafy;
- vytvořit nebo otevřít RStudio Project a vytvořit, komentovat, uložit a spustit R skript;
- použít R jako kalkulačku, vytvořit objekt, zavolat funkci s pojmenovanými argumenty, otevřít nápovědu a opravit jednoduchou chybu;
- ručně nainstalovat jeden balíček a použít jeho obsah pomocí zápisu `balicek::objekt` nebo `balicek::funkce` bez `library()`;
- načíst CSV relativní cestou, prohlédnout data, vytvořit a uložit jednoduchý výstup a po restartu R celý postup zopakovat ze skriptu.

## Materiály pro studenty

Následující odkazy vedou vždy na nejnovější schválené vydání L00. Rozpracovaná verze ve větvi `main` může být novější, ale není určena jako závazná studijní verze.

| Materiál | Online verze | PDF |
| --- | --- | --- |
| Skripta pro samostudium a pozdější připomenutí | [Číst online](https://cuni-natur-biostatistics.github.io/L00/current/learning/) | [Stáhnout PDF](https://cuni-natur-biostatistics.github.io/L00/current/learning/skripta.pdf) |
| Orientační prezentace pro prezenční výuku | [Otevřít slidy](https://cuni-natur-biostatistics.github.io/L00/current/presentation/) | [Stáhnout PDF](https://cuni-natur-biostatistics.github.io/L00/current/presentation/presentation.pdf) |

[R skript ke stažení](https://cuni-natur-biostatistics.github.io/L00/current/code/cviceni.R) slouží při prezenční výuce jako pracovní plocha studentů a později jako záznam praktického postupu. [Data Palmer Penguins](https://cuni-natur-biostatistics.github.io/L00/current/data/palmer_penguins.csv) jsou součástí vydání, takže základní postup funguje i bez instalace balíčku.

- [HUB kurzu](https://cuni-natur-biostatistics.github.io/) je hlavní vstup ke všem veřejným studijním materiálům.
- [Moodle kurzu](https://dl2.cuni.cz/course/view.php?id=106) slouží zapsaným studentům pro oznámení, testy, zadání, odevzdávání a individuální výsledky.

## Pro vyučující a správce

### Zdrojové a vyrenderované soubory

- `Learning_materials/skripta.qmd` je zdroj skript; výsledky jsou `Learning_materials/skripta.html` a `Learning_materials/skripta.pdf`.
- `Presentation/presentation.qmd` je zdroj slidů; výsledky jsou `Presentation/presentation.html` a `Presentation/presentation.pdf`.
- `Exercises/cviceni.R` je studentský R skript pro praktickou výuku.
- `data/` obsahuje datové soubory specifické pro tuto lekci.
- `R/` obsahuje podporované renderovací a tematické nástroje.
- `theme/` obsahuje synchronizovanou lokální kopii společné vizuální identity kurzu.
- `pollslive/` obsahuje neaktivní šablonu pro případné pozdější zapojení schváleného opakovacího kvízu; bez souborů `pollslive/config.json` a `pollslive/quiz.json` nijak nemění render lekce.
- `Workflow/` obsahuje záznamy rozhodnutí, kontrol a schválení během přípravy lekce; není součástí veřejného release balíčku.

### Reprodukovatelné prostředí

Repozitář používá `renv`. Po klonování otevřete `L00.Rproj` a v čerstvé R relaci spusťte:

```r
renv::restore()
renv::status()
```

Kompletní lokální render spustíte podporovaným wrapperem:

```r
source("R/render_all.R")
```

Samostatně lze použít `R/render_skripta.R` nebo `R/render_presentation.R`. Přímé volání `quarto render` obchází synchronizaci sdíleného tématu a nemá se používat pro release render.

### Publikování

`website-release.yml` je explicitní seznam souborů povolených ve veřejném balíčku. Větev `main` vytváří veřejný náhled, zatímco stabilní tag `L00-vMAJOR.MINOR.PATCH-YYYYMMDD` vytváří neměnné vydání a aktualizuje cestu `/L00/current/`.

Podrobný publikační postup je v [`WEBSITE_RELEASES.md`](WEBSITE_RELEASES.md). Postup tvorby a kontroly lekce je v [`Workflow/README.md`](Workflow/README.md).

Před vydáním je nutné zkontrolovat vyrenderované HTML a PDF, úplnost manifestu, provenanci a podmínky použití dat a médií a nepřítomnost neveřejných informací v celém repozitáři.

## Licence

Původní výukový obsah je licencován pod CC BY 4.0 a software pod licencí MIT. Palmer Penguins jsou uvolněni pod CC0. Přesné vymezení, doporučená citace a výjimky pro převzatá data, média, fonty, loga a další položky jsou v [`LICENSE.md`](LICENSE.md).
