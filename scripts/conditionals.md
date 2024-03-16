# Decision Making

- [Introduction](#introduction)
- [Bash Conditional Expressions](#bash-conditional-expressions)
  - [File expressions](#file-expressions)
  - [String expressions](#string-expressions)
  - [Arithmetic operators](#arithmetic-operators)
- [If Else statement](#if-else-statement)
- [elif statement](#elif-statement)
- [Switch case statements](#switch-case-statements)

## Introduction

- Decision making statements zinatuwezesha katika program zenu kuweza kuandika program ambazo zinaweza kufanya maamuzi katika program zako,kuna if statement kuna else if, kila condition inatumika kutokana na mahitaji ya project yako.Ila kabla ya kujua conditional statments ni vizuri kujua expressions ambazo zinatumika katika bash scripting.

## Bash Conditional Expressions

- Katika bash, conditional expressions zinatumika na `[[` compound command na `[` built in commands kuangalia attributes za file na kufanya performance kwenye string pia arithmetic comparisons.File expression zinatumika katika program kufanya operesheni mbambali kama kuangalia kam file lipo au halipo wakati wa kutengeneza file lako katika program yako.Zipo zingine sana ila tutapitia baadhi!

## File expressions

- File expressions ni zile expressions ambazo zinatumika kufanya operesheni mbalimbali katika file na pia folder.

- Kuangalia kama file lina exist au hapana.

```sh

```

## String expressions

## Arithmetic operators

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

## If Else statement

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

- Kama unahitaji kutumia `>` `<` `>=` na zinginezo, zinatumika kwa ajili ya kufanya comparisons badala ya kutumia square brackets tumia brackets za kawaida ila zinakuwa mbili kwenye program yako.

```sh

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

## elif statement

- Kama kutakuwa na multiple condition basi hapo ndio utatumia elif statement, kwa mfano:

```sh
#!/bin/bash
read -p "Enter a number: " num
if [[ $num -gt 0 ]]; then
    echo "The number is positive"
elif [[ $num -lt 0 ]]; then
    echo "The number is negative"
else
    echo "The number is 0"
fi
```

- Tumechukua input ya numba kutoka kwa mtumiaji kisha tunaangalia kama namba ni hasi, chanya au sifuri.

- Katika bash scripting logical operators pia zinatumika kuangalia kama kauli fulani ni kweli ama sio kweli ila itaangalia upande wote, kuna logical operators tatau katika bash scripting ambazo ni `logical and &&` `logical or ||` na `logical not !`, kazi ya `logical and` Mfano

```sh
#!/bin/bash

miaka=20

if [ "$miaka" -gt 18 ] && [ "$miaka" -lt 100 ]; then
    echo "Unaruhusiwa kupiga kura"
else
    echo "Hauruhusiwi kupiga"
fi
# Output: Unaruhusiwa kupiga kura
```

- Kutoka kwenye mfano hapo juu tunaangalia kama mpiga kura miaka yake ni zaidi ya 18 na pia ni chini ya 100, ila kumbuka kwamba && AND operator inatekeleza code ambayo ipo ndani ya condition yake kama condition ya upande wa kulia itakuwa sawa na condition ya upande wa kushoto.Ila kwenye mfano ni kweli 20 ni zaidi ya 18 na pia 20 ni ndogo kuliko 100.

- Katika `logical or` inaangalia kama angalau satement moja katika code yako ni kweli, kutoka kwenye pande wa wowote inaweza ikawa upande wa kulia au wa kushoto, mfano wa code hapo chini

```sh
#!/bin/bash

miaka=15

if [ "$miaka" -gt 18 ] || [ "$miaka" -lt 100 ]; then
    echo "Unaruhusiwa kupiga kura."
else
    echo "Hauruhusiwi kupiga."
fi

# Output: Unaruhusiwa kupiga kura.
```

- Kutoka kwenye mfano hapo juu ni miaka ya mpiga kura ni 15, na 15 ni kubwa kuliko 18 hapana ila ni ndogo kuliko 100 kweli basi statement ambayo ipo ndani ya hiyo condition inatekelezwa.

-

- Hivyo kupitia conditional statement katika bash scripting tunaweza kutengeneza project ambayo ,utatengeneza folder ambapo kwenye script yetu itaangalia kama folder(directory) lipo au halipo pia hata kwa upande wa file tunaweza tukafanya hivyo.

## Switch case statements

- Katika bash scripting inaitwa case statement ila ni sawa katika lugha nyingine ambapo zinaitwa switch statement, switch statement ni sawa na kuwa na multiple if statement katika program yako.

Sintaksia:

```sh
case $some_variable in
 pattern_1)
 commands
 ;;
 pattern_2| pattern_3)
 commands
 ;;
 *)
 default commands
 ;;
esac

```

- case statement zinaanza na neno case(keyword) ikiashilia kwamba ni switch case, katika mstari huo huo ambao umeandika case keyword inabidi kuweka variable au expression ikiafuatiwa na in keyword, baada ya hapo kunakuwa na case pattern, ambapo unataka kutumia ili kuweza kujua mwisho wa pattern yako katika program yako.Unaweza ukawa na multiple patterns ambapo itabidi utumia pipe | kuunganisha statement mbili.Baada ya kuwa na pattern lazima uweke command ambayo unataka itekelezwe(executed) kama pattern itafanana na variable yako au expression ambayo umespecify.pattern zote katika program yako inabidi ziwe terminated by kuweka `;;` mwishoni. Unaweza ukawa na default statement kwa kuweka * kama pattern.Kufunga case statement, tumia `esac` keyword.

```sh
#!/bin/bash

read -p "Andika jina la mkoa unaotokea: " mkoa

case $mkoa in

Njombe | Iringa)
    echo "$mkoa wanalima sana chai na upandaji miti."
    ;;
Mbeya)
    echo "$mkoa ni maarufu kwa kilimo cha mpunga na parachichi."
    ;;
Kigoma)
    echo "$mkoa, ndiko mahari mawese yalipo!"
    ;;
Tanga)
    echo "Karibu $mkoa, mji wa machungwa kama yote."
    ;;
*)
    echo "Sina taarifa sahihi kuhusu huo mkoa."
    ;;
esac
```

- kutoka kwenye mfano hapo juu tumetumia case statement, kwamba hatua ya kwanza tunauliza kwa mtumiaji aweze kujaza mkoa anaotoka kisha tunatumia case kuweza kuswitch variable `$mkoa` kuitia pattern zilizopo kutokana na na mkoa ambao mtumiaji wetu atajaza, sasa kwa mfano kuna mikoa inasifa moja na mikoa mingine basi hapo tutatumia pipe `|` kuweka kujumlisha mikoa yote ambayo inasifa hizo.
