# Loops

- [Introduction](#introduction)
- [While loop](#while-loop)
- [For loop](#for-loop)
- [Until loop](#until-loop)
- [Jump Statement](#jump-statement)
  - [Continue](#continue)
  - [Break](#break)
- [Best Practices](#best-practices)

## Introduction

- Kama ilivyo katika lugha zingine pia katika bash loops zinatumika ila sintaksia zake zipo tofauti kidogo. Katika bash kuna `while loop`, `for loop` pamoja na `until loop`.

## While Loop

- Chochote ambaco unaweza ukafanya na while loop unaweza pia ukafanya na for loop, kama hauna experience ya programming ni kwamba loop zinatumika kuweza kutekeleza(execute) blocks za msimbo multiple times katika program yako.

```sh
while [ vigezo(condition) ]
do
    <command ya kutekelezwa>
done
```

- sintaksia ya while loop ni kwamba inaanza na while keyword ikifuatiwa na mabano na ndani ya mabano unaweka vigezo vyako(condition) kumbuka kuacha nafasi kati upande wa kushoto na kulia kabla ya kuweka condition yako.Kisha neno `do` na chini yake unaweza msimbo wake ambao unataka utekelezwe kama condition zitakuwa meet kwenye program yako na mwishoni unaweka done keyword ikiashilia mwishoni wa while loop yako.Mfano, andika program ambayo itaprint namba kuanzia moja hadi 10.

```sh
namba=1
while [ $namba -le 10 ]; do
    echo $namba
    ((namba++))
done
```

- kwenye mfano hapo juu tumefanya declaration ya variable namba ambayo ni sawa na moja kisha tunatumia while loop kuweka kufanya iteration katika program yetu, ambapo tunaangalia kama kweli 1 ni sawa na 10 au ni zaidi ya 10 ni kweli kisha msimbo wetu ilio ndani ya do utatekelezwa(executed) ila ni kweli 1 ni sawa au ni ndogo ya 10 basi statement yetu itakuwa evaluated kwa mara ya kwanza na kuendelea hadi pale ambapo itakuwa 11 kwa sababu imekuwa incremented na haiwezekani 11 ni ndogo au sawa na 10 hivyo loop yetu itakuwa terminated. Output itakuwa

```txt
1
2
3
4
5
6
7
8
9
10
```

- Incrementation na decrementation ya variable yako ni muhimu ila kutokana na condition yako iliyopo ukifanya kinyume na hapo itapelekea kupata infinite loop.

- Kupitia while loop tunaweza kutengeneza program ambayo tutauliza jina la mtumiaji na endapo jina litakuwa tupu msimbo utajirudia rudia hadi pale atakapo jaza jina.

```sh
#!/bin/bash

read -p "Jaza jina lako: " jina
while [ -z $jina ]; do
    echo "Jina lako haliwezi kuwa tupu, jaza jina lako tena!"
    read -p "Jaza jina lako: " jina
done
echo "Karibu $jina"
```

## For Loop

- Sintaksia ya ya while loop na for loop sio tofauti sana ila kumbuka for loop inatumika kufanya iteration kwenye list item inaweza ikawa namba.

```sh
for var in ${list}
do
    <code ya kuetekelezwa>
done
```

- Mfano wa jinsi ya kutumia for loop katika bash.

```sh
#!/bin/bash

for i in 1 2 3 4 5; do
    echo $i
done
```

- tumeanza na for keyword ikifuatiwa na variable i, kazi ya variable i itahifadhi variable ya kila iteration mfano ikifanyika iteration ya kwanza itahifadhi 1 iteration ya pili 2, iteration ya tatu 3, yanne itakuwa 4 na iteration ya 5 itakuwa 5.Pia unaweza kufanya iteration ya kila neno au array likiwa katika string.

```sh
#!/bin/bash

lugha="C++ C JavaScript Bash"
for variable in $lugha; do
    echo $variable
done

```

- Sasa kwa mfano utataka kufanya iteration kuanzia 1 hadi 100 huwezi kuandika namba zote hizo basi utatumia alternator ``..`,baada ya for keyword kwenye in utatengeneza mabano singasinga kisha ndani yake utaweka namba ambayo unataka iteration ianza 0 hadi ile inayoishia 100.

```sh
#!/bin/bash

for variable in {0..100}; do
    echo $variable
done

```

- bado for loop inatupa uwezo wa kufanya mambo mengi katika program yetu, mfano unataka loop iwe inaprint namba ambazo zinakuwa incremented na 2 kuanzia 0 hadi 10.

```sh
#!/bin/bash
# {start, end, increment}
for variable in {0..10..2}; do
    echo $variable
done

```

## Until loop

- Utofauti uliopo kati ya until na while loop ni kwamba ni kwamba until itarun commands ndani ya loop hadi pale condition itakuwa kweli.

```sh
#!/bin/bash

namba=1
until [ $namba -ge 10 ]
do
    echo $namba
    ((namba++))
done
```

## Jump Statement

- Jump statement katika bash zipo mbili tu ambazo ni `continue` na `break`.

## Continue

- Kama ambazo ilivyo kwenye lugha nyingine, unaweza kutumia `break` na `continue` katika bash scripts pia.

- `continue` inaambia bash script kustop current iteration ya loop na kwenda kwenye next iteration.Sintaksia ya continue statement ipo

```sh
continue [n]
```

- Kwa mfano unaweza kuandika script ambayo iaprint namba kuanzia 1 hadi 20 ila ikifika kwenye namba ambayo ni ni swa na 2 iskip basi hapa tuatumia continue statement kwamba 2 itaachwa kwenye program yako.

```sh
#!/bin/bash

for variable in {0..20}; do
    if [ $variable -eq 2 ]; then
        continue
    fi
    echo $variable
done
```

- iteration itaanza kuania 0 hadi 20 ila basi ambapo bash script inaona kwamba kama variable itakuwa sawa na 2 ikskip hiyo iteration na kuendelea na iteration nyingine kwenye program yako.

## Break

- `break` inatoa maelekezo kwa bash script kwamba iteration iwe terminated iishie kama itakidhi vigezo fulani kwenye program yako.

```sh
#!/bin/bash

for variable in {0..20}; do
    if [ $variable -eq 4 ]; then
        break
    fi
    echo $variable
done
```

- kutoka kwenye mfano hapo juu tumefanya iteration ya program yaetu ila pale ambapo tumefika kwamba variable itakuwa sawa na 4 loop itakuwa terminated.

## Best Practices

- Kabla ya kufanya iteration ni muhimu kujua kwanza je, loop variable yako ni ipi na iwe incremented kwa factor ipi kwamba iwe incremented au decremented ili kuweza kuzuia infinite loop.

- Acha nafasi upande wa kushoto na kulia pale ambapo unaandika vigezo(condition) kwenye program yako kwa kutumia while loop hata condition statements.
