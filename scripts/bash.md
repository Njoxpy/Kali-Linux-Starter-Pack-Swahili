# Bash Scripting

- [Introduction to Bash Scripting](#introduction-to-bash-scripting)
- [Getting Started with Bash](#getting-started-with-bash)
- [Variables and Expressions](#variables-and-expressions)
- [Input and Output Redirection](#input-and-output-redirection)
- [Control Flow](#control-flow)
- [Functions in Bash](#functions-in-bash)
- [File Operations](#file-operations)
- [Text Processing](#text-processing)
- [Error Handling](#error-handling)
- [Advanced Topics](#advanced-topics)
- [Best Practices](#best-practices)
- [Common Pitfalls](#common-pitfalls)

<a name="top"></a>

## Introduction to Bash Scripting

- Bash, kirefu chake ni Bourne again shell,shell ni user interface, ambayo inakuwezesha kuweza kumanage operating sytem() bila kufahamu mfumo mzima wa ndani wa Operating sytem and ugumu wake(complexity).

**Kwanini Bash**

- Bash ni scripting language ambayo ni maarufu(popular) kwa watumiaji wa Linux.Pia kwa watumiaji wa Windows na hata Mac OS wanaweza kuandika script yazo,kama unatumia windows unaweza ukatumia windows subsytem ya Linux, au unaweza kutumia Git Bash ambayo ina karbia commands zote za Linux.

**Kwanini sio Bash**

- Bash scripting haijhabase kwenye OOP Concepts(Object Orinted Concepts),lakini kuna option kadhaa ambazo unaweza ukatumia kuandika script zako akma unahitaji ambayo imebase kwenye OOP Concepts,mfano wake ni `python` au `ansible`
- Syntax(Sintaksia) zake ni ngumu kuelewa hivyo kama uatkuwa uanona ni ngumu unaweza ukatumia language zingine ili uweze kuanduika script zako mfano `python` au `ansible`.

[⬆️ Rudi Juu](#top)

## Getting Started with Bash

- Ili wueze kuandika script zako katika bash unahitaji kuwa na text editor abayo itakuwesha kuandika scripts zako.
- Katika docs hii tutatumia `vim` kama ndio text editor yetu,ila kwa jinsi ambayo muda unaenda na unaandika complex script utatuia text editor yoyote kama VS Code Sublime.
  -Kuna baadhi ya command ni muhimu kufahamu kabla hujaanza kuandika scripts zako, mfano wa commands hizo ni `echo, cat `, pia hakikisha umepitia basic commands [hapa](/docs/swahili-guide.md)
- Script yetu ya kwanza kuandika itakuwa ya `Sema Dunia` yaani `Hello World`
- Create file ambalo litakuwa na extension ya `.sh` mfano: `semadunia.sh`

![semadunia.sh](/asset/semadunia.PNG)

```
touch semadunia.sh
```

Bada ya file kuwa created hakikisha umejua pia file lako limekuwa created kwenye location gani, kwa mfano file langu limekuwa created kwenye desktop, funguo file lako kwa kutumia Vim Editor.

- Baada ya file kuwa created fungua kwa kutumia Vim editor, anza na neno vim ikifuatiwa na jina la file ambalo limetengenezwa.

```
vim semadunia.sh
```

- Baada ya kungua file type i ili uweze kuandika yaani `insert mode` baada ya hapo tutaandiak simple program ambayo itasema sema dunia.

```sh
#!/bin/bash
echo "Sema Dunia"
```

[first bash script](/scripts/first_script.sh)

![sema dunia script](/asset/vim%20echo%20Sema%20Dunia.PNG)

Ili uweze kurun script yako ya bash hakikisha umeeanza na maneno yafuatayo `!#/bin/bash` shebang,Kupitia shenbang `#!/bin/bash` hapa tunatoa maelekezo ya script kwa itumie interpter pia kupata output ya script yetu. Pia kabla ya hapo hakikisha umejua je script yako imetarget sehemu gani,kujua hilo andika command(amri) ifuatayo.

```
which bash
```

- Baada ya kuandika script yako katika vim ili uweze kusave script press `esc` button then `:` kisha type `w` ikimaanisha write na `q` ikimaanisha kuquuite.
  Vim tips.

      1. :wq (save and quit)
      2. :q (quit)
      3. :!q (Quit without saving)

- Pia kuna docs namna ya kutumia [vim Editor](/docs/swahili-guide.md#)
- Ili tuweze kupata output katika program yetu tutatumia command ifuatayo katika terminal yako.

![Output](/asset/output.PNG)

```
sh semadunia.sh
```

```
bash semadunia.sh
```

- By default script huwa hazina permisson ya kuweza kuwa execute , kuleta error ya `Permission denied` ili kuweza kuweka permisson katiak file lako,pitia nyaraka namna ya kubadili [permission](/docs/swahili-guide.md#changing-permissions)

- Hakikisha umeverify kama header ya script yako ni sahihi,kwa kutumia command hii.

```sh
echo $SHELL
```

## Variables and Expressions

- Variable ni kama box ambapo box linakuwa na kitu fulani ndani yako au tunaweza tukasema variable is the container which stores value inside it.
- Ili kuweza kutengeneza variable hakikisha unaanza na shebang then andika script zako.

```sh
JINA="Linux Trovalds"
echo $JINA
```

ouput: Linux Trovalds
![](/asset/box%20variable.PNG)

- Ili uweze kupata input kutoka kwa user tumia `read` command.Kwa kutumia mfano halishia tunaweza,kupitia bash scripting nataka njifunze automation basi unaweza read input ya user then ukaautomate kazi zako.

```sh
!#/bin/bash

echo Jina lako la kwanza ni nani?
read JINA_LA_KWANZA
echo Jina lako la mwisho ni nani?
read JINA_LA_MWISHO

echo Karibu $JINA_LA_KWANZA $JINA_LA_MWISHO
```
- Comments, comments ni line za kwenye code yako ambazo zinakuwa ignored na interpreter, comments katika bash scripting zipo za ain mbili ambazo ni singleline comments na multiline comments.Singleline comments zinaanza na # symbo katiak script.
Mfano
```sh
#!/bin/bash

# hii ni comment
echo "Working with Comments
```
[⬆️ Rudi Juu](#top)

## Input and Output Redirection
- 
[⬆️ Rudi Juu](#top)

## Control Flow

[⬆️ Rudi Juu](#top)

## Functions in Bash

[⬆️ Rudi Juu](#top)

## File Operations

[⬆️ Rudi Juu](#top)

## Text Processing

[⬆️ Rudi Juu](#top)

## Error Handling

[⬆️ Rudi Juu](#top)

## Advanced Topics

[⬆️ Rudi Juu](#top)

## Best Practices

[⬆️ Rudi Juu](#top)

## Common Pitfalls

[⬆️ Rudi Juu](#top)
