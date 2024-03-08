# Bash Scripting

- [Bash Scripting](#bash-scripting)
  - [Introduction to Bash Scripting](#introduction-to-bash-scripting)
  - [Getting Started with Bash](#getting-started-with-bash)
  - [Variables and Expressions](#variables-and-expressions)
  - [Input and Output Redirection](#input-and-output-redirection)
  - [Comments](#comments)
  - [Decision Making](#decision-making)
  - [Loops](#loops)
  - [Functions in Bash](#functions-in-bash)
  - [Files and Directories](#files-and-directories)
  - [File Operations](#file-operations)
  - [Text Processing](#text-processing)
  - [Error Handling](#error-handling)
  - [Advanced Topics](#advanced-topics)
  - [Best Practices](#best-practices)
  - [Common Pitfalls](#common-pitfalls)
  - [Mistakes](#mistakes)

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
  -Kuna baadhi ya command ni muhimu kufahamu kabla hujaanza kuandika scripts zako, mfano wa commands hizo ni `echo, cat`, pia hakikisha umepitia basic commands [hapa](/docs/swahili-guide.md)
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

- Variable ni kama box ambapo box linakuwa na kitu fulani ndani yake au tunaweza tukasema variable is the container which stores value inside it.

- Ili kuweza kutengeneza variable hakikisha unaanza na shebang then andika script zako.

```sh
JINA="Linux Trovalds"
echo $JINA
# ouput: Linux Trovalds
```

![Output](/asset/box%20variable.PNG)

- Ili uweze kupata input kutoka kwa user tumia `read` command. Kwa kutumia mfano halisia tunaweza,kupitia bash scripting nataka njifunze automation basi unaweza read input ya user then ukaautomate kazi zako.

```sh
!#/bin/bash

echo Jina lako la kwanza ni nani?
read JINA_LA_KWANZA
echo Jina lako la mwisho ni nani?
read JINA_LA_MWISHO

echo Karibu $JINA_LA_KWANZA $JINA_LA_MWISHO
```

[⬆️ Rudi Juu](#top)

## Input and Output Redirection

- Output redirection, ni kitendo cha kuchukua outputbya file ambalo liko katika bash scripting ila hilo file linakuwa directed kwenda kwenye file lingine katika program yako.
- Output redirection inatumika kutuma output ya kwenye program kwenda sehemu nyingine ya kwenye programu yako na pia kuna category mbili tu za output redirection

1. **Writting to a file**

- Kuna ile situation ambayo unataka output yako iende kwenye programu fulani katika labda katika file la file.txt, yaani umenda program ya kufanya registration ya wat fulnai ila unataka kwamba wakishaibgiza majina yao then majina yao yaende kwenye file la file.tx, ila kumbuka kwa ktumia writing to a file inafuta baadhi ya vitu kwenye program yako kwamba kama user wa kwanza atajaza details zake then user wa puili akija kujaza naye details zake katika program yako then majina yake yatakua overwitten na symbol inayiotumika kwa ajili ya overwtiing katika program yako ni kw akutumia `>` symbol(greter operator symbol)
- Mfano:

```sh
echo Hello Welcome > file.txt
cat file.txt
# output: Hello Welcome
```

```sh
echo Have  a nice day > file.txt
cat file.txt
# output: Have  a nice day , the previous text in the file.tx has been overwitten
```

Kama tuantaka kuexit script uetu baada ya kumaliza kuandika tumia `ctrl + d` ili uweze kuexit baada ya hapo ndio utaona maneno ambayo umeandika yamekuwa redirected kwenye file lako.

- Kuna namna nyingine ambayo tutakuwa tunaingiza text yoyote katika script yetu then zile text ambazo zinakuwa zinapelekwa katika script yetu katika program yako. Mfano

```sh
cat > file.txt
# ingiza text yoyote ila itaenda kwenye file.txt
```

- Kma ambavyo tumeweza kufanya writting katika file letu vivyo hivyo tunaweza kufanya append kwenye script yetu.Ila kumbuka ili tuweze kufanya append tutatumia alama ya `>>`.

```sh
cat >> file.txt
# ingiza text yoyote ila itaenda kwenye file.txt
```

**2. Appending**

- Appending to a file ni kinyume na writting to a file kwa badala ya kufanya overwrtting ya existing user details ambazo ameingiza katika program yetu tutakachofanya ni tutakuwa tukaongeza details kwamba files hazitakuwa overwritten katika program yetu kwa mfano tutaka kuandika program ambyo user ataweza kujaza majina yake then baada ya hapo hayo majina mbayo atajaza tunataka yawe ndani ya file.txt, basi kama user wataingiza majina yao watakuaw ni wengi kwmba majina yao yatabaki kuwa katika program yetu ila upande wa writting to a file maina yatakuwa overwritten katika program yetu kuanzia pale ambapo user atabadili jina la kwanza then na kwenye program yetu jina la kwanza linakuwa written na jina la pili nba kuendelea ila kwa upande wa appending majina yataendelea kubaki vile vile

```sh
echo Hello Welcome >> file.txt
cat file.txt
# output: Hello Welcome
```

```sh
echo Have  a nice day >> file.txt
cat file.txt
# output: Hello Welcome Have  a nice day, the previous text has not been overwritten
```

- Input na outpt redirection inatumika katika program ili tuweze kufanya configuration za files katika program yetu

[⬆️ Rudi Juu](#top)

## Comments

- Comments ni muhimu katika programming,kuna aina mbili za comments katika bash scripting, comment yoyote katika programming language inakuwa ignored kwa sababau compiler inajua kwamba kama program inaanza na alama fulani inajua kabisa kwamba hii ni comment ila zaidi ya hapo jhiyo sio comment!
- Unaweza fuatilia why are comments important in programming [hapa](https://medium.com/@godblessnyagawa/understanding-the-significance-of-comments-in-programming-introduction-in-the-intricate-world-of-938eb4632da1)

1. `single line comments`. Single line comments zinakuwa ndani ya line moja katika script zako.Single line comments zinaanza na `#` symbol katika program yako.Mfano

```sh
# hii ni comment
echo "Hello"
<<COMMENT

hello Welcome
COMMENT
```

2. `multiline comments`.
ila multiline comments zinakuwa katika zaidi ya line moja katika script zako. Ili kuweza kutumia multiline comments utaanza na colon : ikifuatiwa na single quote na comment yako na kisha comment yako inafungwa na single qoute kwenye program yako.

```sh
# hii ni comment
echo "Hello"
<<- Welcome to bash scripting this is the comment
: ' This is multiline comment the startup directory exists so read any initialisation file.
echo "initialising file processing'
```

[⬆️ Rudi Juu](#top)

## Decision Making

- Decison making zinatumika katika bash scripting kuangalia kama statements yetu ni ukweliama sio kweli ndipo inafanya maamzui pia ili uweze kufanya descion making statements uhaitaji kuwa na operators ambazo zinakusaidia kuangalia kama kauli ni kweli au sio kweli `conditional operators` zipo conditional operators nyingi zinazotumika katika bash scripting ila zimetofautiana namna zinayoandikwa na zile za kwenye programming language nyningine, mfano wa hizo operators

| Operator           | Description                          | Example                  |
| ------------------ | ------------------------------------ | ------------------------ |
| `=`                | Equal(sawa)                                | `[[ "$a" = "$b" ]]`      |
| `!=`               | Not equal(sio sawa)                            | `[[ "$a" != "$b" ]]`     |
| `-eq`              | Equal (numeric comparison)(comparion ya namba)           | `[[ "$a" -eq "$b" ]]`    |
| `-ne`              | Not equal (numeric comparison)(sio sawa comparion ya namba)       | `[[ "$a" -ne "$b" ]]`    |
| `-lt`              | Less than (numeric comparison)(zaidi ya comparion ya namba)        | `[[ "$a" -lt "$b" ]]`    |
| `-le`              | Less than or equal to (numeric comparison)(ndogo ya au sawa na comparion ya namba) | `[[ "$a" -le "$b" ]]`   |
| `-gt`              | Greater than (numeric comparison)(zaidi ya namba)     | `[[ "$a" -gt "$b" ]]`    |
| `-ge`              | Greater than or equal to (numeric comparison)(comparion ya namba kubwa au sawa na namba) | `[[ "$a" -ge "$b" ]]`   |
| `&&`               | AND logical operator                 | `[[ condition1 && condition2 ]]` |
| `||`               | OR logical operator                  | `[[ condition1 || condition2 ]]` |
| `-z`               | Checks if a string is empty(inaangalia kama string iko tupu)          | `[[ -z "$str" ]]`        |
| `-n`               | Checks if a string is not empty(inaangalia kam string haiko tupu)      | `[[ -n "$str" ]]`        |

- Kuna condition mbili kwenye bash scripting `if` statements na `case` statement.
- If statement katika bah scripting inatumika kuangalia kama statement ni kweli au sio kweli

```sh
if [ condition ]; then
    # code to execute if the condition is true
else
    # code to execute if the condition is false
fi

```

Hiyo ndio sintaksia `if` statement katika bash scripting
example:Tengeneza program kuangalia kama miaka ya mtu ni zaidi ya 18 au ni ni chini ya 18

```sh
#!/bin/bash

#!/bin/bash

echo "Enter age"
read age
if [ $age -gt 18 ]; then
    echo "Unaruhisiwa kupiga kura"
else
    echo "Hauruhisiwi kupiga kura"
fi
```

```sh
#!/bin/bash

# Check if a file exists
if [ -e "file.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

```

- Katika bash scripting logical operators pia zinatumika kuangalia kama kauli fulani ni kweli ama sio kweli ila itaangalia upande wote, kuna logical operators tatau katika bash scripting ambazo ni `logical and &&` `logical or ||` na `logical not !`, kazi ya `logical and` Mfano

```sh
#!/bin/bash
echo "Enter username"
read un
echo "Enter password"
read pw
if [[ "$un" == "admin" && "$pw" == "superuser" ]]; then
echo "Login Successful."
fi
```

- Katika `logical or` inaangalia kam angalau satement moja katika code yako ni kweli mfano wa code hapo chini

```sh
#!/bin/bash
echo "Enter username"
read un
echo "Enter password"
read pw
if [[ "$un" == "admin" || "$pw" == "superuser" ]]; then
echo "Login Successful."
fi
```

inaangalia kama statement katika script yako pande zote kama ni kweli then script yako inakuwa executed ila kwenye upnade wa logical or inaangalia kama statetment upande mmoja ni kweli then satement inakuwa executed ila `logical not` inabadili statement ambayo ni kweli kuwa sikweli na kinyume chake(vice versa) hivyo mfano kama statement ni kweli itakuwa sio kweli na kama statement ni sio kweli itakuwa kweli.

- Hivyo kupitia conditional statement katika bash scripting tunaweza kutengeneza project ambayo ,utatengeneza folder ambapo kwenye script yetu itaangalia kama folder(directory) lipo au halipo pia hata kwa upande wa file tunaweza tukafanya hivyo.

## Matukio(Matumiz) ya Conditional Statement Katika Bash

### 1. Operesheni za Faili na Dairektori

- Kuangalia kama faili ipo kabla ya kufanya operesheni fulani.
- Kuthibitisha kama dairektori haiko tupu kabla ya kufuta.

### 2. Uthibitisho wa Ingizo

- Kuhakikisha kwamba matokeo ya mtumiaji yanakidhi vigezo fulani.
- Uthibitisho wa vigezo vya amri ya mstari wa amri.

### 3. Uchunguzi wa Hali ya Mfumo

- Kuthibitisha mali za mfumo kabla ya kutekeleza amri fulani.
- Kuangalia kama dependensi muhimu zimefungwa.

### 4. Usimamizi wa Usanidi

- Kufanya maamuzi kulingana na yaliyomo kwenye faili za usanidi.

### 5. Kazi za Kiotomatiki

- Kutumia matamshi ya masharti kutekeleza kazi kulingana na wakati fulani wa siku au hali ya mazingira.

### 6. Operesheni za Mtandao

- Kuthibitisha upatikanaji wa mtandao kabla ya kutekeleza amri za mtandao.

### 7. Uchanganuzi wa Faili ya Kumbukumbu

- Kujenga script inayochambua faili za kumbukumbu, ikitoa habari inayofaa kulingana na vigezo vilivyowekwa.

## Loops

- Control flow zinatumika katika

[⬆️ Rudi Juu](#top)

## Functions in Bash

- Function, function katika bash ni sawa na zile kwenye upande wa lugha nyingine ila syntax inaweza ikawa na utofauti kidogo kwamba function inaanza na jina keyword function ikifuatiwa na jina la function yako na mabano kisha mabano singasinga na ndani ya mabano sinagsinga ndio function body,kwamba vitu vyote ambavyo vinakuwa declared kwenye function yako vinafanywa ndani ya hayo mabano.

```sh
function greetUser(){
    echo "Habari!"
}
```

Kutoka kwenye mfano hapo juu,tumetengeneza function ambayo inaitwa `greetUser()` na ndani ya body ya function yetu kuna neno "Habari" hivyo ili function yetu iweze kutekelezwa(executed) inabidi function yetu iitwe(iwe called), na baada ya kuwa called body iliyopo ndani ya function yetu ndio itatekelezwa.

```sh
function greetUser(){
    echo "Habari!"
}

greetUser

# Output: Habari!
```

Hivyo ili uweze kutumia function yako katika program yako lazima uite function katika program yako.

- Kama ilivyo kwenye lugha zingine function lazima iwe inachukua arguments sasa kwenye bash ni tofauti kidogo kwamba ndani ya function, function body ndiyo kunakuwa na argument na wakati wa kuita funtion yako unapitisha arguments zako sawa na idadi ambayo ipo kwenye body.

```sh
#!/usr/bin/bash

function greetUser(){
    echo $1 $2 $3 $4
}

greetUser Habari Njox Karibu

# Output: Habari Njox Karibu
```

Endapo idadi ya argument itakuwa chache ukifananisha na idadi ya statement ambazo unataka zitekelezwa, program itatekeleza kutokana na idadi ya arguments,Angalia mfano:

```sh
#!/usr/bin/bash

function greetUser(){
    echo $1 $2 $3 $4
}

greetUser Habari Njox Karibu GitLit Ujifunze

# Output: Habari Njox Karibu GitLit 
```

- Kwenye function kuna concept ya local variable na global variable pia! Local variable ni ile variable ambao inawigo mdogo yaani kwamba haiwezi kuwa accessed nje ya function yako

```sh
function greetUser(){
    jina="Njox"
}

echo $jina
```

- Kutoka kwenye mfano hapo juu function `greetUser()` ndani kuna variable inaitwa jina, ukijaribu kupata output ya variable yako nje ya `greetUser()` function haitawezekana na pia output haitakuweka kwa sababu variable yetu iko katika local scope na hivyo haiwezi kuwa accessed nje ya scope.

- Global varible, ni ile variable ambayo unaweza kupata access yake ukiwa sehemu yoyote il kwenye programu yako kwa mfano:

```sh
jina="Njox"

function greetUser(){
    echo Karibu $jina
}

greetUser
# Output: Karibu Njox
```

- Variable jina katika program yako ni global kwamba kupata access ya variable yako ni popote pale nje au ndani ya function yoyote,kama kwenye mfano hapo tumeweza kupata access ya variable jina kwa sababu ni global variable.

[⬆️ Rudi Juu](#top)

## Files and Directories

- Katika section hii tutajifunza jinsi ya kutengeneza files and directories.

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

## Mistakes

- Moja kati ka kosa kubwa watu wanfanya hata mimi nlifanya  ni sehemu ya conditional statement kutokuacha nafasi ndani ya brackeks(square) moja na nyingine

```sh
echo "Enter age"
read age
if [ $age -gt 18]; then
    echo "Unaruhisiwa kupiga kura"
else
    echo "Hauruhisiwi kupiga kura"
fi

# output: decision.sh: line 10: [: missing `]' Hauruhisiwi kupiga kura
```

kwa hiyo badala ya kufanya hizo hivyo ni muhimu kuacha nafasi katika mabano nadni ya condtion yako kwa pande zote kushoto na kulia.
