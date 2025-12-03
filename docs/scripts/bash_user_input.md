## Bash User Input

- Ili uweze kupata input kutoka kwa user tumia `read` command. Kwa kutumia mfano halisia tunaweza,kupitia bash scripting nataka njifunze automation basi unaweza read input ya user then ukaautomate kazi zako.

```sh
#!/bin/bash

echo Jina lako la kwanza ni nani?
read JINA_LA_KWANZA
echo Jina lako la mwisho ni nani?
read JINA_LA_MWISHO

echo Karibu $JINA_LA_KWANZA $JINA_LA_MWISHO
```

- Script yetu ya hapo juu utamuuliza mtumiaji(user) input na kisha itahifadhi kama tungo/sentensi ya katika variable, ila kuna variable mbili kwenye program yetu `JINA_LA_KWANZA` na `JINA_LA_MWISHO`, variable ya kwanza ihaifadhiwa kwenye jina la kwanza na variable ya pili itafifadhiwa kwenye jina la mwisho kwenye program yetu.

- Ila tunaweza tukaifanya msimbo wetu kuwa clean na vizuri zaidi inabidi kubadili echo statement kwa `read -p`, amri(command) ya read itatumika pamoja na -p flag itaprint message kabla ya kumuuliza mtumiaji kutumia user input.

```sh
#!/bin/bash

read -p "Jina lako la kwanza ni nani? " JINA_LA_KWANZA
read -p "Jina lako la mwisho ni nani? " JINA_LA_MWISHO
echo Karibu $JINA_LA_KWANZA $JINA_LA_MWISHO

# Jina lako la kwanza ni nani? Elvis
# Jina lako la mwisho ni nani? Mathew
# Karibu Elvis Mathew
```

Kwenye program hapo juu tumeuliza jina la kwanza la user wetu ila kumbuka kwamba -p inatumika kuprint message kabla ya kumuuliza user input.

[⬆️ Rudi Juu](#top)
