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