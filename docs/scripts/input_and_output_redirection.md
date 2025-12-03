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

## 2. Appending

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
