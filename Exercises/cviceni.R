#----------------------------------------------------------#
#
#               L00 — První kroky v R a RStudiu
#
#                 Praktické cvičení v R
#
#             Studenti biologie a ekologie
#
#                       O. Mottl
#                         2026
#
#----------------------------------------------------------#


#----------------------------------------------------------#
# Příprava -----
#----------------------------------------------------------#

#--------------------------------------------------#
## Jak se skriptem pracovat -----
#--------------------------------------------------#

# R je program, který provádí příkazy a počítá výsledky. RStudio je
# aplikace, ve které píšeme kód, posíláme jej do R a sledujeme výsledky.
#
# Na svůj počítač si stáhněte oba soubory:
# - skript cviceni.R:
#   https://cuni-natur-biostatistics.github.io/L00/current/code/cviceni.R
# - data palmer_penguins.csv:
#   https://cuni-natur-biostatistics.github.io/L00/current/data/palmer_penguins.csv
#
# Otevřete RStudio. Zvolte File → Open File… a otevřete stažený
# cviceni.R. Soubor se zobrazí v panelu Source v levé horní části
# okna. Source je textový editor pro kód, který chcete uchovat.
#
# Skript je textový soubor s uloženými pokyny pro R. Řádky začínající
# znakem # jsou komentáře; R je neprovádí. Ostatní řádky mohou
# obsahovat kód.
#
# 1. Postupujte shora dolů a nepřeskakujte neznámé kroky.
# 2. Kurzor umístěte na řádek kódu a spusťte jej pomocí Ctrl + Enter.
# 3. Skript ukládejte pomocí Ctrl + S.
# 4. Odpovědi nebo vlastní kód pište na vyznačená místa.
# 5. Nápovědy čtěte po jedné, až když je potřebujete.
# 6. Výsledek porovnejte s komentářem "Očekávaný výsledek".
#
# Úlohy navíc jsou dobrovolné a nepatří mezi hlavní úlohy.


#--------------------------------------------------#
## Výsledky učení a předpoklady -----
#--------------------------------------------------#

# Po dokončení hlavních úloh dokážete:
# - najít Source, Console, Environment, Files, Plots a Help;
# - vytvořit RStudio Project a uložit v něm upravený R skript;
# - použít R jako kalkulačku a bezpečně opravit neúplný příkaz;
# - uložit výsledek pod jménem a otevřít nápovědu k příkazu;
# - ručně nainstalovat doplněk a vybrat z něj konkrétní obsah;
# - načíst připravenou tabulku pomocí cesty uvnitř projektu;
# - vytvořit a uložit obrázek;
# - uloženým skriptem znovu vytvořit stejný výsledek.
#
# Nepotřebujete žádnou předchozí zkušenost s R ani programováním.
# Předpokládáme pouze běžnou práci se soubory, složkami a klávesnicí.


#--------------------------------------------------#
## Technická kontrola -----
#--------------------------------------------------#

# Console je panel, ve kterém R ukazuje výsledky a zprávy. Najděte
# v něm značku >. Ta znamená, že R čeká na příkaz. Umístěte kurzor
# na následující řádek ve Source a stiskněte Ctrl + Enter.
1 + 1

# Očekávaný výsledek: Console ukáže číslo 2 a novou značku >.


#----------------------------------------------------------#
# Hlavní úlohy -----
#----------------------------------------------------------#

#--------------------------------------------------#
## RStudio: mapa pracovního okna -----
#--------------------------------------------------#

#----------------------------------------#
### Úloha | L00-U01 -----
#----------------------------------------#

# Zadání: Ukažte místo pro uložený kód, odpověď R, pojmenované výsledky,
# které si R právě pamatuje, soubory, obrázky a nápovědu.

# Vaše odpověď:


# Očekávaný výsledek: Source obsahuje skript; Console příkazy,
# výsledky a zprávy; Environment to, co si R právě pamatuje;
# Files soubory; Plots obrázky a Help nápovědu.
# Nápověda 1: Rozlište text uložený na disku od dočasné paměti R.
# Nápověda 2: Source a Console jsou vlevo; Environment a záložky
# Files, Plots, Packages a Help jsou obvykle vpravo.
# Interpretace: Kde byste hledali kód týden po skončení práce?


#--------------------------------------------------#
## Console: rychlý výpočet a zpráva od R -----
#--------------------------------------------------#

# Console je přímé spojení s běžícím R. Značka > znamená, že R
# čeká na příkaz. Klikněte za ni, napište 2 + 3 a stiskněte Enter.


#----------------------------------------#
### Úloha | L00-U02 -----
#----------------------------------------#

# Zadání: Spusťte výpočet. Bez nového přepisování jej vraťte,
# změňte 3 na 8 a spusťte upravený příkaz.

# Vaše odpověď: Jaké dva výsledky Console ukázala?


# Očekávaný výsledek: Nejprve 5 a po úpravě 10.
# Nápověda 1: Console uchovává historii dříve zadaných příkazů.
# Nápověda 2: Enter příkaz spustí; šipka nahoru vrátí minulý příkaz.
# Interpretace: Který panel ukázal příkaz a jeho okamžitý výsledek?


# Neúplný příkaz, který si vyzkoušíte v Console:
# (2 + 3


#----------------------------------------#
### Úloha | L00-U03 -----
#----------------------------------------#

# Zadání: Napište neúplný výraz do Console. Dostaňte Console bezpečně
# zpět ke značce > a spusťte opravený výraz.

# Vaše odpověď: Co nyní vidíte úplně vlevo v Console?


# Očekávaný výsledek: Opravený výraz vrátí 5 a Console znovu ukáže >.
# Nápověda 1: Značka + na začátku řádku zde neznamená sčítání;
# R čeká, protože některý znak nemá odpovídající zakončení.
# Nápověda 2: Esc čekání zruší; výrazu chybí pravá kulatá závorka.
# Interpretace: Proč neúplný příkaz nepatří do uloženého skriptu?


#--------------------------------------------------#
## Source: uložený text a spuštěný příkaz -----
#--------------------------------------------------#

# Source je textový editor. Řádek níže zůstává ve skriptu, ale R jej
# provede pouze tehdy, když jej odešlete pomocí Ctrl + Enter.

# Ověříme cestu příkazu ze Source do Console.
2 + 3


#----------------------------------------#
### Úloha | L00-U04 -----
#----------------------------------------#

# Zadání: Přidejte nad výpočet vlastní komentář. Stiskněte Ctrl + S,
# sledujte Console, potom spusťte výpočet pomocí Ctrl + Enter.

# Vaše odpověď: Co udělalo Ctrl + S a co udělalo Ctrl + Enter?


# Očekávaný výsledek: Ctrl + S uložilo text bez nového výpočtu;
# Ctrl + Enter odeslalo řádek do Console a R vrátilo 5.
# Nápověda 1: Uložení mění soubor; spuštění mění stav běžícího R.
# Nápověda 2: Ctrl + S ukládá, Ctrl + Enter spouští aktuální řádek.
# Interpretace: Která činnost uchová postup pro příští týden?


#--------------------------------------------------#
## Projekt: jedna hlavní složka práce -----
#--------------------------------------------------#

# Project v RStudiu je běžná hlavní složka pro jednu práci doplněná
# souborem s koncovkou .Rproj. Tento soubor pomáhá RStudiu znovu
# otevřít správnou složku; samotný kód a data zůstávají v samostatných
# souborech uvnitř této složky.
#
# Soubor CSV je textový soubor s tabulkou a koncovkou .csv.


#----------------------------------------#
### Úloha | L00-U05 -----
#----------------------------------------#

# Zadání: Zvolte File → New Project… → New Directory → New Project.
# Nový projekt pojmenujte prvni-kroky-r. V něm vytvořte složky data
# a vystupy. Pokud se skript zavřel, otevřete cviceni.R přes
# File → Open File… Potom zvolte File → Save As… a uložte pracovní
# kopii jako prvni_kroky.R přímo do hlavní složky projektu. Soubor
# palmer_penguins.csv zkopírujte do složky data. Strukturu ověřte
# v panelu Files.

# Vaše odpověď: Jaký název projektu vidíte vpravo nahoře?


# Očekávaný výsledek: Hlavní složka obsahuje soubor .Rproj,
# prvni_kroky.R, data/palmer_penguins.csv a prázdnou složku vystupy.
# Soubor .Rproj pomáhá otevřít projekt; kód a data jsou v ostatních
# souborech.
# Nápověda 1: Všechny související soubory patří do jedné hlavní složky.
# Nápověda 2: New Folder vytvoří data a vystupy; Save As… uloží
# prvni_kroky.R přímo vedle souboru .Rproj.
# Interpretace: Jakou úlohu má soubor .Rproj a kde zůstávají data a kód?


#--------------------------------------------------#
## Objekt: pojmenovaný výsledek v paměti R -----
#--------------------------------------------------#

# Pojmenovanému výsledku v pracovní paměti R říkáme objekt.
# Před spuštěním dalšího řádku zkontrolujte Environment.
# Uložíme délku lekce v minutách.
delka_lekce_min <- 90

# Samostatné jméno objektu vypíše jeho hodnotu.
delka_lekce_min


#----------------------------------------#
### Úloha | L00-U06 -----
#----------------------------------------#

# Zadání: Změňte ve skriptu 90 na 80, ale řádek zatím nespouštějte.
# Předpovězte hodnotu v Environment, potom řádek spusťte.

# Vaše odpověď: Kdy se hodnota objektu skutečně změnila?


# Očekávaný výsledek: Před spuštěním zůstala stará hodnota;
# po Ctrl + Enter ukazuje Environment hodnotu 80.
# Nápověda 1: Text ve Source není totéž co objekt v paměti R.
# Nápověda 2: Přiřazení používá <- a projeví se až po Ctrl + Enter.
# Interpretace: Co najdete na disku — objekt, nebo uložený příkaz?


#--------------------------------------------------#
## Funkce: nástroj se vstupy a nastavením -----
#--------------------------------------------------#

# Funkce round() zaokrouhlí číslo. Vstupy a nastavení uvnitř závorek
# se nazývají argumenty. x je číslo a digits počet desetinných míst.
round(
  x = 3.14159,
  digits = 2
)

# Nápovědu otevře následující příkaz. Odstraňte znak # na začátku
# řádku a potom jej spusťte.
# ?round


#----------------------------------------#
### Úloha | L00-U07 -----
#----------------------------------------#

# Zadání: Změňte digits na 3, spusťte funkci a otevřete ?round.
# V Help najděte oddíly Usage a Arguments.

# Vaše odpověď: Jaký výsledek dostanete a co podle Help řídí digits?


# Očekávaný výsledek: R vrátí 3.142; digits určuje počet číslic
# za desetinnou čárkou v tomto použití round().
# Nápověda 1: Hodnoty uvnitř závorek ovlivňují práci funkce.
# Nápověda 2: Nastavte digits = 3 a na samostatném řádku spusťte ?round.
# Interpretace: Proč jsou pojmenované argumenty čitelnější než samotná čísla?


#--------------------------------------------------#
## Balíček: ruční instalace a konkrétní obsah -----
#--------------------------------------------------#

# Balíček je nainstalovaný doplněk pro R. Tabulka uspořádává data
# do řádků a sloupců. Následující dva příkazy patří do Console
# a ve skriptu zůstávají zakomentované.
#
# Ruční instalace, kterou obvykle provedeme pouze jednou:
# install.packages(pkgs = "palmerpenguins")
#
# Funkce names() ukáže jména sloupců tabulky z balíčku:
# names(x = palmerpenguins::penguins)
#
# Pokud instalace do pěti minut neskončí, pokus ukončete a přejděte
# k úloze L00-U09.


#----------------------------------------#
### Úloha | L00-U08 -----
#----------------------------------------#

# Zadání: Do Console postupně zkopírujte a spusťte oba příkazy výše.
# Pokud instalace neuspěje, pokračujte po pěti minutách úlohou L00-U09.

# Vaše odpověď: Co odděluje jméno balíčku od objektu penguins?


# Očekávaný výsledek: Při úspěchu names() vypíše názvy sloupců;
# dvojitá dvojtečka :: vybírá objekt penguins z balíčku palmerpenguins.
# Nápověda 1: Instalace mění dostupné doplňky, použití vybírá jejich obsah.
# Nápověda 2: install.packages() instaluje; zápis balíček::objekt vybírá.
# Interpretace: Který příkaz balíček instaluje a který používá jeho obsah?


#--------------------------------------------------#
## CSV: data ve složce projektu -----
#--------------------------------------------------#

# Každý řádek CSV představuje jednoho tučňáka. Sloupce obsahují druh,
# délku křídla v milimetrech a tělesnou hmotnost v gramech.
# Cesta začíná v hlavní složce otevřeného projektu.

# Načteme CSV ze složky data.
data_tucnaci <-
  read.csv(
    file = "data/palmer_penguins.csv"
  )


#----------------------------------------#
### Úloha | L00-U09 -----
#----------------------------------------#

# Zadání: Spusťte blok read.csv() a najděte data_tucnaci v Environment.

# Vaše odpověď: Které dvě části cesty odděluje znak /?


# Očekávaný výsledek: Environment obsahuje data_tucnaci s 342 řádky
# a 3 sloupci; cesta vede do složky data a k souboru CSV.
# Nápověda 1: Cestu čtěte od hlavní složky otevřeného projektu.
# Nápověda 2: Funkce je read.csv() a cesta patří do argumentu file.
# Interpretace: Proč ve skriptu nepoužíváme adresu konkrétního uživatele?


#--------------------------------------------------#
## Kontrola: otevřeli jsme správnou tabulku? -----
#--------------------------------------------------#

# Zobrazíme prvních šest řádků.
head(
  x = data_tucnaci,
  n = 6
)

# Zobrazíme jména sloupců a počet řádků.
names(x = data_tucnaci)
nrow(x = data_tucnaci)


#----------------------------------------#
### Úloha | L00-U10 -----
#----------------------------------------#

# Zadání: Zkontrolujte první řádek, tři jména sloupců a počet řádků.
# Vysvětlete, co biologicky představuje jeden řádek.

# Vaše odpověď:


# Očekávaný výsledek: První řádek je Adelie, 181 mm a 3750 g;
# sloupce jsou species, flipper_length_mm a body_mass_g; řádků je 342;
# jeden řádek představuje jednoho zaznamenaného tučňáka.
# Nápověda 1: Ověřujeme obsah, jména i velikost tabulky.
# Nápověda 2: Použijte výstupy head(), names() a nrow().
# Interpretace: Proč úspěšný read.csv() sám nepotvrzuje správný soubor?


#--------------------------------------------------#
## Obrázek: jeden řádek vytvoří jeden bod -----
#--------------------------------------------------#

# Znak $ vybírá pojmenovaný sloupec tabulky. Funkce plot() použije
# délku křídla vodorovně a tělesnou hmotnost svisle.
plot(
  x = data_tucnaci$flipper_length_mm,
  y = data_tucnaci$body_mass_g,
  xlab = "Délka křídla (mm)",
  ylab = "Tělesná hmotnost (g)",
  pch = 16,
  col = "grey40"
)


#----------------------------------------#
### Úloha | L00-U11 -----
#----------------------------------------#

# Zadání: Spusťte plot(). Najděte přibližnou polohu
# prvního tučňáka s hodnotami 181 mm a 3750 g.

# Vaše odpověď: Které měření je na vodorovné a které na svislé ose?


# Očekávaný výsledek: Vodorovně je délka křídla, svisle hmotnost;
# první bod leží přibližně na souřadnicích 181 a 3750.
# Nápověda 1: Jeden řádek dodává bodu dvě souřadnice.
# Nápověda 2: Argument x určuje vodorovnou a y svislou osu.
# Interpretace: Co představuje jeden bod? Vztah zatím nevykládejte.


#--------------------------------------------------#
## Soubor: obrázek uložený mimo Plots -----
#--------------------------------------------------#

# png() otevře cílový soubor, plot() do něj kreslí a dev.off()
# soubor dokončí. Složka vystupy už musí v projektu existovat.
png(
  filename = "vystupy/tucnaci.png"
)

plot(
  x = data_tucnaci$flipper_length_mm,
  y = data_tucnaci$body_mass_g,
  xlab = "Délka křídla (mm)",
  ylab = "Tělesná hmotnost (g)",
  pch = 16,
  col = "grey40"
)

dev.off()


#----------------------------------------#
### Úloha | L00-U12 -----
#----------------------------------------#

# Zadání: Umístěte kurzor postupně do příkazů png(), plot()
# a dev.off() a každý spusťte pomocí Ctrl + Enter. Potom v panelu
# Files otevřete složku vystupy a najděte tucnaci.png.

# Vaše odpověď: Kde vidíte zobrazený graf a kde uložený soubor?


# Očekávaný výsledek: Plots ukazuje graf; Files ukazuje soubor
# vystupy/tucnaci.png, který lze otevřít mimo RStudio.
# Nápověda 1: Zobrazení v pracovním okně není totéž co soubor na disku.
# Nápověda 2: png() otevře soubor a dev.off() jej musí dokončit.
# Interpretace: Která verze zůstane dostupná po zavření RStudia?


#----------------------------------------------------------#
# Závěrečná úloha -----
#----------------------------------------------------------#

#--------------------------------------------------#
## Restart R a spuštění celého skriptu -----
#--------------------------------------------------#

# Restart R ukončí právě běžící R uvnitř RStudia a spustí čistý běh.
# RStudio, projekt, skript, CSV a PNG zůstávají otevřené nebo na disku;
# objekty v Environment se vyčistí.
# Tlačítko Source v pravém horním rohu panelu Source spustí celý
# skript od prvního řádku. Ctrl + Enter naproti tomu spouští pouze
# příkaz, na kterém je umístěný kurzor.


#----------------------------------------#
### Úloha | L00-U13 -----
#----------------------------------------#

# Zadání: Uložte skript. Předpovězte stav čtyř položek níže. Zvolte
# Session → Restart R a spusťte celý skript tlačítkem Source.
#
# Předpověď: Zůstane, nebo zmizí?
# - prvni_kroky.R:
# - data/palmer_penguins.csv:
# - vystupy/tucnaci.png:
# - objekty v Environment:

# Vaše odpověď:
# Po restartu a spuštění skriptu porovnejte stav s předpovědí.


# Očekávaný výsledek: Soubory zůstaly; Environment se při restartu
# vyčistil; celý skript znovu vytvořil objekty, graf a PNG bez ručního
# doplňování příkazů do Console.
# Nápověda 1: Oddělte pracovní paměť běžícího R od souborů na disku.
# Nápověda 2: Ctrl + S uloží skript; Session → Restart R vyčistí
# Environment; tlačítko Source spustí soubor od začátku.
# Interpretace: Co musíte poslat spolužákovi, aby výsledek obnovil?


#----------------------------------------------------------#
# Úlohy navíc -----
#----------------------------------------------------------#

# Úlohy navíc jsou dobrovolné. Nemusíte dokončit všechny tři části:
# - L00-N01 až L00-N03 krátce opakují společnou cestu;
# - L00-N07 až L00-N13 tvoří navazující práci s hodnotami a tabulkou;
# - L00-N04 až L00-N06 procvičují obrázek, soubor a hledání chyby.
#
# V části L00-N07 až L00-N13 postupujte v uvedeném pořadí, protože
# pozdější úlohy navazují na objekty a zápis z předchozích úloh.


#--------------------------------------------------#
## Krátké opakování příkazů, funkcí a tabulky -----
#--------------------------------------------------#

#----------------------------------------#
### Úloha navíc | L00-N01 -----
#----------------------------------------#

# Zadání: Sečtěte 8 + 2 a tento součet vynásobte třemi.

# Vaše řešení:


# Očekávaný výsledek: Jedno číslo, 30.
# Nápověda 1: R bez závorek násobí před sčítáním.
# Nápověda 2: Součet uzavřete do závorek a použijte znak *.
# Interpretace: Jaký výsledek by vznikl bez závorek?


#----------------------------------------#
### Úloha navíc | L00-N02 -----
#----------------------------------------#

# Zadání: Zaokrouhlete číslo 2.71828 na jedno desetinné místo.

# Vaše řešení:


# Očekávaný výsledek: 2.7.
# Nápověda 1: Jeden argument obsahuje číslo a druhý nastavení přesnosti.
# Nápověda 2: V round() nastavte x = 2.71828 a digits = 1.
# Interpretace: Který argument jste změnili proti společné ukázce?


#----------------------------------------#
### Úloha navíc | L00-N03 -----
#----------------------------------------#

# Zadání: Zobrazte poslední tři řádky tabulky data_tucnaci.

# Vaše řešení:


# Očekávaný výsledek: Tři řádky tučňáků druhu Chinstrap;
# poslední řádek obsahuje 198 mm a 3775 g.
# Nápověda 1: Potřebujete obdobu head(), která pracuje s koncem tabulky.
# Nápověda 2: Použijte tail() a nastavte x = data_tucnaci a n = 3.
# Interpretace: Změnil se počet řádků původní tabulky?


#--------------------------------------------------#
## Od sloupce tabulky k vektoru -----
#--------------------------------------------------#

# V grafu jsme pomocí $ vybrali sloupce tabulky. Znak $ tedy znamená:
# z této tabulky vyber sloupec s uvedeným jménem. Jeden vybraný sloupec
# je posloupnost hodnot, které v R říkáme vektor.

# Vybereme sloupec s hmotností a uložíme jej jako samostatný vektor.
vec_hmotnost <-
  data_tucnaci$body_mass_g

# Zkontrolujeme prvních pět hodnot vektoru.
head(
  x = vec_hmotnost,
  n = 5
)


#----------------------------------------#
### Úloha navíc | L00-N07 -----
#----------------------------------------#

# Zadání: Pomocí $ vyberte z data_tucnaci sloupec flipper_length_mm
# a uložte jej jako vec_delka_kridla. Funkcí head() vypište jeho první
# tři hodnoty. Před spuštěním odhadněte výsledek podle prvních řádků tabulky.

# Vaše řešení:


# Očekávaný výsledek: První tři hodnoty jsou 181, 186 a 195.
# Nápověda 1: Nejprve vyberte pojmenovaný sloupec, potom uložte výsledek.
# Nápověda 2: Za data_tucnaci napište $ a jméno sloupce; v head()
# nastavte x na vytvořený vektor a n = 3.
# Interpretace: Jaký je vztah mezi sloupcem tabulky a objektem vec_delka_kridla?


# Funkce c() spojí několik jednotlivých hodnot do jednoho vektoru.
# Písmeno c zde znamená combine, tedy spojit.
vec_hmotnost_cvicka <-
  c(
    3750,
    3800,
    3250,
    3450,
    3650
  )

vec_hmotnost_cvicka


#----------------------------------------#
### Úloha navíc | L00-N08 -----
#----------------------------------------#

# Zadání: Pomocí c() vytvořte vec_delka_kridla_cvicka s hodnotami
# 181, 186, 195, 193 a 190. Objekt potom vypište.

# Vaše řešení:


# Očekávaný výsledek: R vypíše pět hodnot v zadaném pořadí.
# Nápověda 1: Všechny délky patří do jednoho pojmenovaného objektu.
# Nápověda 2: Použijte přiřazení <- a hodnoty oddělte čárkami uvnitř c().
# Interpretace: Co udělala funkce c() s pěti samostatnými čísly?


#--------------------------------------------------#
## Pozice a hranaté závorky -----
#--------------------------------------------------#

# R počítá pozice od jedničky. U vektoru jeden údaj v hranatých
# závorkách určuje, které hodnoty chceme získat:
# - [2] vybere druhou hodnotu;
# - [c(1, 3)] vybere první a třetí hodnotu.


#----------------------------------------#
### Úloha navíc | L00-N09 -----
#----------------------------------------#

# Zadání: Z vec_delka_kridla_cvicka vyberte nejprve druhou hodnotu
# a potom současně první a třetí hodnotu. Oba výsledky předpovězte,
# než příkazy spustíte.

# Vaše řešení:


# Očekávaný výsledek: Druhá hodnota je 186; první a třetí jsou 181 a 195.
# Nápověda 1: Čísla v hranatých závorkách označují pozice ve vektoru.
# Nápověda 2: Pro více pozic spojte čísla 1 a 3 pomocí c().
# Interpretace: Proč druhý výběr vrací dvě hodnoty místo jedné?


# Hranaté závorky mohou hodnotu také nahradit. Vlevo od <- určíme
# pozici a vpravo novou hodnotu. Tuto změnu provedeme jen ve cvičném
# vektoru, nikoli v původní tabulce.


#----------------------------------------#
### Úloha navíc | L00-N10 -----
#----------------------------------------#

# Zadání: Ve vec_delka_kridla_cvicka nahraďte druhou hodnotu 186
# hodnotou 187. Objekt vypište a ověřte, že ostatní hodnoty zůstaly stejné.

# Vaše řešení:


# Očekávaný výsledek: Vektor obsahuje 181, 187, 195, 193 a 190.
# Nápověda 1: Vyberte jen pozici, kterou chcete změnit.
# Nápověda 2: Vlevo od <- použijte jméno vektoru a [2];
# vpravo použijte novou hodnotu 187.
# Interpretace: Která část příkazu určila místo změny?


#--------------------------------------------------#
## Řádky a sloupce tabulky -----
#--------------------------------------------------#

# U tabulky zápis [řádek, sloupec] vybírá ve dvou směrech. Čárka
# odděluje řádky vlevo od sloupců vpravo.

# První řádek a druhý sloupec obsahují délku křídla prvního tučňáka.
data_tucnaci[1, 2]

# Prázdné místo za čárkou znamená všechny sloupce vybraného řádku.
data_tucnaci[1, ]

# Prázdné místo před čárkou znamená všechny řádky vybraného sloupce.
# Pomocí head() zobrazíme jen první tři hodnoty dlouhého sloupce.
head(
  x = data_tucnaci[, 2],
  n = 3
)


#----------------------------------------#
### Úloha navíc | L00-N11 -----
#----------------------------------------#

# Zadání: Z data_tucnaci vypište hodnotu ve druhém řádku a třetím
# sloupci. Potom vypište celý druhý řádek a pomocí head() první tři
# hodnoty celého druhého sloupce.

# Vaše řešení:


# Očekávaný výsledek: Jedna buňka obsahuje 3800; druhý řádek patří
# tučňákovi Adelie s hodnotami 186 mm a 3800 g; první tři hodnoty
# druhého sloupce jsou 181, 186 a 195.
# Nápověda 1: Přeneste ukázku prvního řádku a druhého sloupce
# na nové požadované pozice.
# Nápověda 2: Začněte výběrem [2, 3]; pro celý druhý řádek ponechte
# místo za čárkou prázdné a výběr druhého sloupce vložte do head().
# Interpretace: Co určují čísla vlevo a vpravo od čárky?


#--------------------------------------------------#
## Bezpečná úprava kopie tabulky -----
#--------------------------------------------------#

# Pro další procvičení nejprve vytvoříme kopii. Původní data_tucnaci
# tak zůstanou beze změny.
data_tucnaci_extra <-
  data_tucnaci

# Výpočet s vektorem proběhne pro každou jeho hodnotu. Převedeme si
# cvičné hmotnosti z gramů na kilogramy.
vec_hmotnost_cvicka / 1000

# Zápis tabulka$novy_sloupec <- hodnoty přidá do tabulky pojmenovaný
# sloupec. Počet nových hodnot musí odpovídat počtu řádků tabulky.


#----------------------------------------#
### Úloha navíc | L00-N12 -----
#----------------------------------------#

# Zadání: Do data_tucnaci_extra přidejte pomocí $ nový sloupec
# hmotnost_kg. Vypočítejte jej jako body_mass_g dělené 1000.
# Vypište první tři řádky kopie a porovnejte její jména sloupců
# s původním objektem data_tucnaci.

# Vaše řešení:


# Očekávaný výsledek: Kopie má nový čtvrtý sloupec; jeho první tři
# hodnoty jsou 3.75, 3.8 a 3.25. Původní data_tucnaci mají stále
# pouze tři původní sloupce.
# Nápověda 1: Znak $ může pojmenovat také nový sloupec; hodnoty
# vypočítáte z již existujícího sloupce stejné tabulky.
# Nápověda 2: Vlevo od <- spojte data_tucnaci_extra, $ a hmotnost_kg;
# vpravo vyberte body_mass_g z kopie a vydělte jej 1000.
# Interpretace: Proč jsme před úpravou vytvořili nový objekt?


#--------------------------------------------------#
## Podmínka vybírá hodnoty a řádky -----
#--------------------------------------------------#

# Porovnání každé hodnoty s číslem vytvoří hodnoty TRUE a FALSE.
vec_hmotnost_cvicka > 3500

# Stejnou podmínku můžeme vložit do hranatých závorek. Zůstanou pouze
# hodnoty na pozicích, kde podmínka vrací TRUE.
vec_hmotnost_cvicka[vec_hmotnost_cvicka > 3500]


#----------------------------------------#
### Úloha navíc | L00-N13 -----
#----------------------------------------#

# Zadání: Z data_tucnaci_extra vyberte celé řádky tučňáků s hodnotou
# body_mass_g větší než 6000. Podmínku sestavte ze sloupce vybraného
# pomocí $ a za čárkou ponechte všechny sloupce.

# Vaše řešení:


# Očekávaný výsledek: Výběr obsahuje dva tučňáky druhu Gentoo
# s hmotnostmi 6050 g a 6300 g a všechny čtyři sloupce kopie.
# Nápověda 1: Porovnání celého sloupce vytvoří jednu hodnotu TRUE
# nebo FALSE pro každý řádek tabulky.
# Nápověda 2: Podmínku se sloupcem body_mass_g vložte před čárku;
# místo za čárkou ponechte prázdné.
# Interpretace: Co určilo vybrané řádky a proč zůstaly všechny sloupce?


#--------------------------------------------------#
## Obrázek, soubor a hledání chyby -----
#--------------------------------------------------#

#----------------------------------------#
### Úloha navíc | L00-N04 -----
#----------------------------------------#

# Zadání: Vytvořte z původního data_tucnaci graf s modrými body
# a vlastním hlavním titulkem.

# Vaše řešení:


# Očekávaný výsledek: Plots ukáže stejných 342 bodů modře
# a nad grafem bude váš titulek.
# Nápověda 1: Neměňte objekty předané do x a y.
# Nápověda 2: V plot() změňte col a přidejte pojmenovaný argument main.
# Interpretace: Co určují data a co jste zvolili vy?


#----------------------------------------#
### Úloha navíc | L00-N05 -----
#----------------------------------------#

# Zadání: Uložte upravený graf jako vystupy/tucnaci_modry.png.

# Vaše řešení:


# Očekávaný výsledek: Files ukazuje tucnaci.png i tucnaci_modry.png.
# Nápověda 1: Nový soubor potřebuje jiné jméno v téže složce.
# Nápověda 2: Změňte filename v png(), vložte upravený plot()
# a blok zakončete dev.off().
# Interpretace: Který řádek rozhodl, že původní PNG zůstal zachovaný?


# Záměrně chybný příkaz zůstává zakomentovaný:
# plot(x = data_tucnak$flipper_length_mm,
#      y = data_tucnak$body_mass_g)


#----------------------------------------#
### Úloha navíc | L00-N06 -----
#----------------------------------------#

# Zadání: Najděte překlep, napište opravený příkaz a spusťte jej.

# Vaše řešení:


# Očekávaný výsledek: Příkaz používá existující data_tucnaci
# a vytvoří bodový graf bez chyby "object not found".
# Nápověda 1: Porovnejte jméno v příkazu se jmény v Environment.
# Nápověda 2: Chybí poslední písmeno i ve jménu data_tucnaci.
# Interpretace: Proč je přesné jméno objektu součástí postupu?


# Extra část jste zvládli, pokud dokážete vlastními slovy vysvětlit:
# - jak spolu souvisejí sloupec tabulky a samostatně uložený vektor;
# - co vybírá $ a co určují pozice uvnitř hranatých závorek;
# - proč upravujeme kopii tabulky místo původních dat;
# - jak hodnoty TRUE a FALSE rozhodují o výběru.


#----------------------------------------------------------#
# Shrnutí a sebekontrola -----
#----------------------------------------------------------#

# Hlavní úlohy jste dokončili, pokud dokážete ukázat:
# - pracovní skript v Source a jeho řádek spuštěný v Console;
# - data_tucnaci v Environment;
# - palmer_penguins.csv ve Files;
# - bodový graf v Plots;
# - tucnaci.png ve složce vystupy.
#
# Vlastními slovy vysvětlete:
# 1. Jaký je rozdíl mezi R a RStudiem?
# 2. Jaký je rozdíl mezi Source a Console?
# 3. Jaký je rozdíl mezi Ctrl + S a Ctrl + Enter?
# 4. Co ukazuje Environment a co Files?
# 5. Jak se cesta data/palmer_penguins.csv vztahuje k projektu?
# 6. Co se při restartu R vyčistí a co zůstane?
# 7. Proč spolužák potřebuje skript i vstupní data, ne pouze PNG?
#
# Pokud některou odpověď ještě neumíte vysvětlit, vraťte se
# k příslušné úloze nebo využijte jednu z úloh navíc.
