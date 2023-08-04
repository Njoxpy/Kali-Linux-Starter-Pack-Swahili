# Kali-Linux-Starter-Pack-Swahili
## Maelekezo ya baadhi ya vitu vya muhimu inabidi ufahamu kama unatumia Kali linux,hii introduction ina assume kwamba ume install tayari Linux OS kwenye pc yako,kama bado unaweza pitia tutorial kujua kwa namna gani unaweza ku install
** Baadhi ya commands ambazo ni za muhimu kufahamu ni zifuatazo **
1. Nipo wapi,ili kufahamu upo wapi katika terminal yako inabidi kuingiza command ya
```
pwd
```
Hi itakupa maelekezo kama upo kwenye root au kama normal user,na kwa upande wa normal user unaweza uakwa katika desktop au sehemu nyingine

2. Whoami/Mimi ni nani,kama ilivyo katika linux kuna user wa aina tatu supersuser,group na other user,basi ilikuweza kujua umeingia kama inabidi kutumia command ya ```whoami``` hii ni ambavyo itakwambia wewe ni kama normal user au kama root
**NOTE:Kama umeingia kwenye terminal kama normal user italeta normal ila kama umetumia Root terminal emulator itaonesha kama root
3. Kubadili directory(ni sawa na folder katika linux) directory inasimama kama cd kwenye Kali Linux na Ubuntu pia
   Kwenye kubadili directory yaani kutoka folder moja kwenda foledr jingine inabidi ujue kwamba upo wapi kwa kutumia ```pwd``` command kumbuka upande wa cd lazima ujue unataka kwenda wapi,basi utaanza na command ```cd``` then followed na sehemu ambayo unaenda kama ni home dfirectory itakua ```cd ~``` kama desktop itakua ni ```cd Desktop``` ,ili kurudi ulikotoka then tumia ```cd ..```
   Kumbuka kwamba cd inabeba comand folowed by the option
4.Kujua vitu vilivyomo katika directory yako au folder(natumia hii term ili iwe rahisi kukumbuka kwenye window),command inayotumika ni
   ```ls```
hii inasimama kama list hapa iatkupa vitu vilivyomo katika directory yako
5. Kujua content zilizopo kwenye folder zilizo jificha
   ```ls -la```
6. Kupata list ya content katika mfumo ambao ni mrefu(long listing)
   ```ls -l```
7. Kupata msaada kama umekwama sehemu
   - Moja ya command inayotumika hapa ni comand ikifuatiwa na keyword ya --help au -h
    ```cd --help``` au ```cd -h``` Katika command ya help unaweza kutumia keyword yoyote ambayo ipo kwenye Kali linux
   * Kutumia man,command ya man itachofanya ni kukupa full details kuhusu hiyo command kama hito cpommand,kama itakuepo utapata majibu ila kama haipo italeta ```command not found```,ili kuweza kutumia hiyo command inabidi kuanza na keyword ya man followed by the keyword/command mabyo unataka maelezo yake,kama hapa nataka information kuhusu cd (current directory)
     ```man cd```
8. Kutafuta content fulani au directory katika system yako
   - Hapa kuna command kama mbili zinazotumika katika sytem yako command ya kwanza ni locate
     unaanza na keyword ya locate folowed by the file you want to search kwa hiyo,kitakacho fanyika ni system kuenda kunagalia kama hiloneno au foklder lipo kwenye entire file sytem
     ```locate /bin```
   * JHapa kuna command kama mbili zinazotumika katika sytem yako command ya kwanza ni locate
     unaanza na keyword ya locate folowed by the file you want to search kwa hiyo,kitakacho fanyika ni system kuenda kunagalia kama hiloneno au foklder lipo kwenye entire file sytem
     ```locate /bin```
   + Command nyingine ni find
    ```find keyword```
9. Kutengeneza file
    - Njia nyepesi ya kutengeneza file kwenye terminal (ctrl+shift+t) ni kutumia touch keyword ikifuatiwa na keyword(jina la file ambalo unataka kutengeneza)
      ```touch CreateFile```
      Pia hapa unaweza uka create file na kuipa extension yake kama uatataka ,mfano
      ```touch index.html```
      -Kufuta file
      ```rm filename```

10. Kutengeneza directory,utaanza na keyword(mkdir-make a directory) ikifuatiwa na jina la directory yako,mfano
    ```mkdir newDirectory```
    -Kufuta directory(folder)
    ```mkdir directoryName```

11. Copying file,ili uweze ku copy file kutoka sehemu moja kwenda nyingine inabdi ujue kwanza una copy file lako kutoka wapi kwenda wapi,keyword inayotumika hapa cp ikimaanisha ni copy.
     ```cp fileLaZamani fileJipya```

12. Renaming file(Kubadili jina),kwa bahati nzuri ni kwamba katika Kali huwezi ku rename file moja kwa moja ila command ambayo inatumika ni mv(move) kwa hito tunatoa lile file kutoka sehemu moja kwenda sehemu nyingine
      ```mv oldfile newfile```
    


