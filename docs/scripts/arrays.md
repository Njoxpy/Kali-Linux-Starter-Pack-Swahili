## Arrays

<a name="top"></a>

- Kama umetoka kwenye programming, najua utakuwa na experience na kuwa familiar na arrays. Pia kma sio developer, kitu cha msingi ni kwamba arrays inahifadhi values nyingine ndani ya jina moja, arrays inahifadhi makundi ya kitu katika program yako.

- Aarrys zinakuwa initialized kwa kufanya assigning ya thamani(values) kwa nfasi ila zinakuwa ndani ya mabano ().Mfano:

```sh
#!/bin/bash
lugha=("JavaScript" "Bash" "C++" "C")
```

- Kwenye mfano hapo juu tumefanya initialization ya array inaitwa lugha ambayo ndani kuna thamani values, lugha hizo ni members wa array.Ili kuweza kupata access ya member mmoja mmoja katika array lugha utatumia mabano singasinga (curly brackests).

### Access A Single Element

- Kupata access a single element au member kwenye array lugha ni rahishi ila kitendo cha kupata access ya member au element kwenye array yako kinaitwa indexing, na unapaswa kujua kwamba indexing ya element katika array inaanza na sifuri, Mfano ili kupata member "JavaScript" kwenye aray lugha tutaenda kwenye index ya sifuri.Mfano:

```sh
#!/bin/bash
lugha=("JavaScript" "Bash" "C++" "C")
echo ${lugha[0]}
# Output: JavaScript,
```

- Kwenye mfano hapo juu tumepata access ya member wa kwanza ambaye yupo katika index ya sifuri ila ni member wa kwanza, hivyo kupata member wa pili atakuwa index ya kwanza na wa 3 atakuwa index ya pili,kupata index ya mwisho utaweza ukatumia index ya -1 ndio utapata value ya mwisho kabisa katika program.

```sh
#!/bin/bash
lugha=("JavaScript" "Bash" "C++" "C")
echo "Element ya mwisho ni: ${lugha[-1]}"
# Output: Element ya mwisho ni: C
```

- Ili kuweza kupata idadi ya arrays katika program yako tumia # hash sign kabla ya ya array kisha pitisha ragument @. 

```sh
#!/bin/bash
lugha=("JavaScript" "Bash" "C++" "C")
echo "Idadi ya element katika array: ${#lugha[@]}"
# Output: Idadi ya element katika array: 4
```

[⬆️ Rudi Juu](#top)