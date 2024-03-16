# Documentation

## Kali-Linux-Starter-Pack-Swahili

## Getting Started with Kali Linux

Karibu katika hii repository ya Kali starter pack! Hi repository itakusaidia kujua baadhi ya commands muhimu ambazo hauna budi kufahamu kama mtumiaji wa kali Linux kwa Beginners kabisa,Kali linux inatumika katika shughuli mbalimbali kama katika kwenye penetration testing na ethical hacking,ila hii repository ni kwa mtu yoyote anayeanza kutumia Kali Linux.

![Kali Logo](https://www.kali.org/images/kali-dragon-icon.svg)

<a name="top"></a>

## Table of Contents

- [Kali-Linux-Starter-Pack-Swahili](#kali-linux-starter-pack-swahili)
- [Getting Started with Kali Linux](#getting-started-with-kali-linux)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Target Audience](#target-audience)
  - [Scope](#scope)
  - [Content Types](#content-types)
  - [Basic Commands](#basic-commands)
  - [pwd](#pwd)
  - [Checking Login](#checking-login)
  - [Changing Directory](#changing-directory)
  - [Directory Contents](#directory-contents)
  - [Sorting contents by by size](#sorting-contents-by-by-size)
  - [Finding Stuffs](#finding-stuffs)
  - [Locate](#locate)
  - [Find](#find)
  - [Whereis](#whereis)
  - [Modifying Files and directories](#modifying-files-and-directories)
  - [Creating File](#creating-file)
  - [Concatenating File](#concatenating-file)
  - [Kutengeneza File](#kutengeneza-file)
  - [Kutengeneza Directory](#kutengeneza-directory)
  - [Kucopy File](#kucopy-file)
  - [Renaming File](#renaming-file)
  - [Removing File](#removing-file)
  - [Removing Directory](#removing-directory)
  - [Controlling Permissions](#controlling-permissions)
  - [Aina Za Users](#aina-za-users)
  - [Granting Permissions](#granting-permissions)
  - [Checking Permissions](#checking-permissions)
  - [Granting Ownership to an Individual User](#granting-ownership-to-an-individual-user)
  - [Changing Permissions](#changing-permissions)
  - [Compression and Archiving](#compression-and-archiving)
  - [Kufungua File](#kufungua-file)
  - [Kuangalia Historia](#kuangalia-historia)
  - [Kubadili Msimbo](#kubadili-msimbo)
  - [Kupata Msaada](#kupata-msaada)
    - [Using Help](#using-help)
  - [Using Manual](#using-manual)
  - [Using Documentation](#using-documentation)
  - [Contributing](#contributing)

## Introduction

Jinsi ya ku install kali linux <https://www.kali.org/docs/installation/hard-disk-install/>

## Target Audience

Hii guide ni kwa ajili ya:

- Beginners ambao wanauelewa mdogo jinsi ya kutumia Kali Linux

## Scope

"Linux starter pack" repository imebase kwenye maada zifuatazo:

- Basic command Line Usage: Jinsi ya kutumia Linux command line na command zinazo tumika kwa ajili kalinLinux.
- Mazoezi ya vitendo: Katika folder la exercise.txt utapata list ya maswali ambayo utafanya.

## Content Types

Hi repository itahusisha vitu vifuatavyo(content):

- **Written Tutorials**
- **Practical Exercises**: Maswali ambayo yakuwezesha kufanyia mazoezi ulisoma.

## Basic Commands

Basic commands ambazo zinatakiwa kutumika katika Kali Linux

## pwd

1. Finding Yourself with pwd:Kama upo kwenye directory mfano desktop ili kufahamu tunatumia keyword ya pwd kirefu cha pwd ni print working directory,inamaana uki prompt

```sh
pwd
```

output utakayo pata ni kutokana na directory uliyopo kama upo home directory italeta

`/home/username`

```sh
pwd
```

Hapa utaweza kujua kama ni root(super-user) au normal user

## Checking Login

2.Whoami/Checking Your Login with whoami: Mimi ni nani,Katika linux kuna user wa aina tatu supersuser,group na other user,basi ilikuweza kujua umeingia kama inabidi kutumia command ya.Endapo utatumia root terminal emulator itakwambia ni root ila kama terminal emulator utaleta jina lako au username yako.

```sh
whoami
```

hii ni ambavyo itakwambia wewe ni kama normal user au kama root

NOTE: Kama umeingia kwenye terminal kama normal user italeta normal ila kama umetumia Root terminal emulator itaonesha kama root

## Navigating the linux file system

[⬆️ Rudi Juu](#top)

## Changing Directory

3.Changing directory/Kubadili directory.Directory katika linux ni sawa na folder katika windows,kama mtumiaji wa linux inabidi kujua jinsi ya kutoka kwenye directory moja kwenda directory nyingine.Kutoka directory hiyo kwenda nyingine utatumia cd keyword followed na sehemu ambayo unataka kwenda kama ni desktop itakua.

```sh
cd Desktop
```

Baada ya kutoka katika hiyo directory kurudi nyuma kwenye directory ulitoka ni

```sh
cd ..
```

Kwenda kwenye home directory utatumia

```sh
cd ~
```

[⬆️ Rudi Juu](#top)

## Directory Contents

4.Kujua vitu vilivyomo katika directory yako au folder(natumia hii term ili iwe rahisi kukumbuka kwenye uki relate na window),command inayotumika ni

```sh
ls
```

Katika ku list kuna namna mbali zinazotumika!

i. Listing hidden files

```sh
ls -la
```

ii. Long listing:

```sh
ls -l
```

Output

`drwxr-xr-x  2 godbless godbless  4096 Aug  5 21:55  Njox`

hiyo ya kwanza ni persmission,links,directory,directory,size katika bytes,date ambayo imekua modofied au created na mda,jina la directory
directory contents

ls -la (display all files including hidden files in long listing format)
-a displays hidden files katika directory uliyopo,hidden files huwa zinaanza na . au .. symbol
jaribu hii katijka home directroy,linux huwa ina ignore file zinazo anza na . au .. hivyo uki prompt
ls -la,kitachotokea ni kwamba files zinazoanza na .. na . hazitakuwa ignored

```sh
ls -la
```

la = long-listing -l + -a(display hidden files)
-l diplays files katika long listing na details ambazo zinakuwa displayed zinaitwa metadata,mfano wa metadata ni file type,permission,links,size,file name

## Why are files hidden in linux

- clean and organized directory
- Privacy and security
- user interface consistency
  unaweza kufuatilia vizuri hapa >>
- Kama unataka kudisplay content zote zlizopo katika kila directory na sub directoris tumia

  ```sh
  ls -R
  ```

  NOTE:Kuwa makini sana unavyo tumia ls -R kwenye root itachukua mda mrefu sana na kama itakuwa connected na usb au dvd inabidi itoe list ya vitu vyote vilivyomo humo,pia jitahidi kuwa specific kama unataka ku display contents zote na subdirectoris zilizopo katika /bin tumia

  ```sh
  ls -Rl /bin
  ```

## Sorting contents by by size

  Ili uweze ku sort contents kutokana na size tunatumia

  ```sh
  -S
  ```

  Kumbuka Linux ni case sensitive kwa hiyo ukitumia -s utapata kitu kingine,hivyo ili uweze ku sort files zako kutokana na size tumia -S,item zitakuwa sorted from largest to lowest size

  ```sh
  ls -S
  ``
  mara nyingi -S huwa inaenda vizuri ikiwa combined na -l mfano

  ```sh
  ls -lS
  ```

  [⬆️ Rudi Juu](#top)

## Finding Stuffs

5.Kutafuta content fulani au directory katika system yako

## Locate

- Hapa kuna command kama mbili zinazotumika katika sytem yako command ya kwanza ni **locate**
  unaanza na keyword ya locate folowed by the file you want to search kwa hiyo,kitakacho fanyika ni system kuenda kunagalia kama hiloneno au foklder lipo kwenye entire file sytem
- Njia nyepesi ya kutafuta kitu chochote kwa linux ni kutumia locate command ial shida ya locate command ni kwamba itakupa karibia kila kitu kilichopo katika system kwenye stystem kwahiyo unakuta unakuwa confused,kutumia locate anza na locate keyword ikifuatiwa na neno ambalo unataka kutafuta

```sh
locate wifi
```

Kwahiyo utakuta unaletewa majibu mengi mno.

[⬆️ Rudi Juu](#top)

## Find

- Command nyingine ni find
  `find keyword`

## Whereis

## Modifying Files and directories

6.Modifying Files and directories

## Creating File

- Creating File
     Kuna aina nyingi za kutengeneza file kwenye Linux.Ila kwa hapa tutangalia aina mbili,njia ya kwanza ni kwa kutumia **cat** keyword ila cat mara nyingi inatumika ku display content za file kwa kutumia

   ```sh
   cat njox.txt
   ```

   pia cat inatumika ku create small files ili ku create large files tutatumia Vim au leafpad.

## Concatenating File

- Concatenation with cat.
     keyword cat ikifuatiwa na jina la file itakusaidia kujua content zilizopo ndani ya file lako,ila ili tuweze kutengeneza file kwa kutumia cat,tutatumia cat keyword ikifuatiwa na redirect symbol > ikifuatiwa na jina la file ambalo tunataka kutengeneza

   ```sh
   cat > njox.txt
   ```

   baada ya hapo uta click enter the linux itakuwezesha wewe kuweza kuandika maneno unayotaka katika terminal yako,baada ya kuandika utaweza ku quit kwa kutumia ctrl+d,na ili uweze kuona content zilizo kwenye file lako tumia cat keyword ikifuatiwa na jina la file

   ```sh
   cat njox.txt
   ```

   Endapo utatumia cat keyword tena na redirect symbol mfano

   ```sh
   cat > njox.txt
   ```

   content zako zote ulizoandika kwenye file la kwanza zitafutika,sasa je utafanyaje kama hutaki content zilizomo zifutike,hapa tutatumia cat keyword ikifuatiwa na double redirect symbol >> kwenda kwenye jina la file lako

   ```sh
   cat >> njox.txt
   ```

   Tumia

   ```sh
   cat njox.txt
   ```

   Kuona content zilizomo

## Kutengeneza File

- File creation with touch.Njia nyepesi ya kutengeneza file kwenye terminal ni kutumia touch keyword ikifuatiwa na jina la file ambalo unataka kutengeneza.

     ```sh
     touch CreateFile
     ```

     Kumbuka katika kutengeneza file unaweza weka na extension ya file hilo pia mfano:

     ```sh
     touch index.html
     ```

     Kma file litakuwa limetengenezwa katika home directory basi ukitumia ls utaweza kuona jina la file lako

- Adding content into a file:Unaweza kuweka content katika file lako kwa kutumia nano keyword ikifuatiwa na jina la file

     ```sh
     nano njox.txt
     ```

     Kwa kutumia nano utaweza kuandika content zako zako then utasave kwa kutumia ctrl + s ,na exit kwa kutumia ctrl + x
     au cat kwa kutumia redirect symbol

## Kutengeneza Directory

- Kutengeneza directory,utaanza na keyword(mkdir-make a directory) ikifuatiwa na jina la directory yako,mfano

   ```sh
   mkdir newDirectory
   ```

   Kumbuka kwamba directory ni kama folder kwenye windows hiyo ni muhimu kutumia jina ambalo itakuwa ni rahisi kwako kukumbuka au naweza sema tumia simple and descriptive name,mara nyingi directory huwa linakuwa na rangi nyeupe ila file huwa na rangi ya blue,baada ya ku create directory tumia ls kuona kama directory lipo!

## Kucopy File

- Copying file:Ii uweze ku copy file kutoka sehemu moja kwenda nyingine inabidi ujue kwanza una copy file lako kutoka wapi kwenda wapi,keyword inayotumika hapa cp ikimaanisha ni copy followed na jina la file unalocopy na sehemu unayokopia file lako.

   ```sh
   cp fileLaZamani fileJipya
   ```

## Renaming File

- Renaming file(Kubadili jina la file),kwa bahati nzuri |mbaya ni kwamba katika Kali huwezi ku rename file moja kwa moja ila command ambayo inatumika ni mv(move) kwa kutumia mv tunatoa lile file kutoka sehemu moja kwenda sehemu nyingine.

   ```sh
   mv oldfile newfile
   ```

   Baada ya file kuwa moved tumia ls kuangalia je hilo file lipo au halipo kumbuka ukitumia mv oldfile linafutika na newfile linakuwa created kwa sababu limekua renamed.

## Removing File

- Kufuta file:Tumia rm keyword ikifuatiwa na jian la file.

   ```sh
   rm fileName
   ```

   Ukifanya long listing(ls -l) kwenye hiyo directory utaona kwamba file limekuwa removed.

## Removing Directory

- Kufuta directory(folder):Tumia rmdir(remove directory) keyword na jina la directory.

   ```sh
   rmdir directoryName
   ```

   [⬆️ Rudi Juu](#top)

## Controlling Permissions

Kujua namna gani unaweza control file zako na directory kwenye Linux ni muhimu,hivyo kama Linux user unaweza kuficha au kutoruhusu other user kufungua faili zako.
Je unafanyaje? Katika Linux kuna permissions tatu ambazo ni: read (r), write (w) na execute(x)

## Aina Za Users

- Kuna aina tatu tu za user katika Linux fi;lesystem,kama ifuatavyo.

1. owner (u): Huyu ndiye mmiliki wa kila kitu yani kama mtu mwenye funguo za kufunga na kufungua kila sehemu.
2. group (g): Mmiliki anaweza ku cooperate na group fulani la watu ila yeye ndio atatoa access kwa watu ili waweze kuingia sehemu husika.
3. other users (o)

## Granting Permissions

- Ili uweze kutoa permission katika Linux ni muhimu kufahamu kuwa permission gani unataka kutoa access inaweza iakwa kwa group au others na hata pia kwako.Kuna aina tatu za permission katika system ambazo ni
  - read(r):Permission to read,hii inakupa uwezo wa kufungua na kuangalia faili tu.
  - write(w):Permission to write,uwezo wa kufungua file na edit file.
  - execute(x):Permission to execute(run),uwezo wa kurun file ila sio lazima kuview au ku edit
- By default file likiwa created katika Linux owner wa lile file ndio anakuwa uwezo wa kubadili vitu kwenye lile file.

## Checking Permissions

- Kabla ya kubadili permission zako katika file lako au directory ni lazima ujue kwanza permissions zipi zipo kwenye file lako na permissons zipi hazipo na kwa user yupi zipo na yupi hazipo pia lazima ujue katika file lipi unataka kuangalia permissions hizo.
- Ili uweze kuangalia permissions katika Linux lazima kutumia long listing method katika sehemu ambayo unataka kuangalia hilo file lako.
    Mfano: nitatumia home directory kuangalia permissions zilizopo

  ```sh
  ls –l
  ```

  hivyo output nitakayo pata ni
  `total 2
drwxr-xr-x  4 choupo choupo    4096 Aug 10 00:20  Angela`

  Katika kila line hapo unapata information kuhusu file lako au directory.
  Total ina indicate idadi ya file zilizopo kwenye home directory

  1. Herufi ya kwanza kama ni d ina indicate kwamba ni directory(folder) ila kama inaanza na - (dash) ina indicate file.

  2. Permissions za file,kuanzia owner(user),group na other users(o).Kumbuka permsiions zipo katika order owner,group,users. **rwxr-xr-x\*
     Upande wa permissions zipo katika category tatu ambazo ni - owner **rwxr*,x ina maana kwamba owner ana uwezo wa ku read(r), write(w) na ku execute(x) - group \*\*-xr*,group amepewa access ya ku execute na read. - user(others) \**-x*, other amepewa uwezo wa ku execute basi.

  3. Number of links. \**4*

  4. Owner wa hilo faili/Folder:Mmiliki wa hilo file owner kwa hapo owner ni choupo \**choupo choupo*

  5. Size la hilo file:Katika linux file zinakuwa katika bytes \**4096*

  6. Mda gani kali linmekuwa created au modified \**Aug 10 00:20*

  7. Jina la file au directroy ambalo hapo ni \**Angela*

## Granting Ownership to an Individual User

- Kuna mda kuna uhitaji wa kumpa access ya file lako wa individual user fulani,ili kufanikisha hilo tumia chown command ikifuatiwa na user ambaye unataka kumpa access na file ambalo unataka kutoa access.

  ```sh
  chown njox /usr/njoxfile
  ```

  [⬆️ Rudi Juu](#top)

## Compression and Archiving

## Changing Permissions

- Kubadili permissions kwenye Linux, unaweza kutumia chmod command.chmod command inachukua digits (tarakimu) tatu kama argument,argument ya kwanza inamaanisha settings kwa owner,ya pili kwa group na ya tatu kwa others katika mfuatano.

- Kila didgit ni sum ya vitu vifuatavyo:

  - 4 kwa ajili ya read permission
  - 2 kwa ajili ya write permission
  - 1 kwa ajili ya execute permission
      Mfano,ili tumpe owner uwezo wa ku read and write permissions,group uwezo wa kuread na others no permission,tutafanya hivi:

    ```sh
    chmod 640 filename
    ```

    Hapa tunampa owner uwezo wa read na ku write (4+2=6),group permissions to read(4),and other permissions kuwa none(hakuna (0))

    Ili uweze ku add au remove permissions tumia + au - symbols kabla ya digits.
    Mfano,kuweka permssion kwa owner ili aweze execute, unaweza kutumia:

    ```sh
    chmod u+x filename
    ```

    Hapa "u" inasimama badala ya "user" ambaye ni owner na "+x" in add execute permissio kwa user wetu (owner)
    **NOTE**Katika kuweka permission u inamaana kwamba ni user ambaye ni owner na sio \**other* na group ni "g" ila kwa others ni "o".

    [⬆️ Rudi Juu](#top)

## Kufungua File

- Kupitia open command utaweza kufungua faili lako ila utatumia sintaksia ifuatayo.
  `open <jinaLaFaili>`

  Pia kwenye file hilo unaweza kufungua current directory kwenye terminal yako kwa kutumia komandi hii

  ```sh
  open .
  ```

  Kupitia kommandi hii utaweza kufungua current directory kwenye kifaa chako kwa mfano nipo katika directory la desktop ambalo nilifungua kwa kutumia

  ```sh
  cd Desktop
  ```

  Ili kuweza kufungua current directory kwenye folder hilo utatumia komandi

  ```sh
  open .
  ```

  Alama ya . (period sign) ina point kwenye current directory kama ambavyo .. inapoint kwenye parent directory.

  [⬆️ Rudi Juu](#top)

## Kuangalia Historia

Kila mda unapo run command yoyote katika terminal yako inahifadhiwa,ili kuweza kuangalia historia ya komandi zako utatumia command ifuatayo

```sh
history
```

Ukisha run command hiyo uta list ya command ulizorun ili zitakuwa katika namba kuanzia moja hadi

[⬆️ Rudi Juu](#top)

## Kubadili Msimbo

Password kwa jina wanaita msimbo,hivyo kupitia komandi ya

```sh
passwd
```

Utaweza kubadili msimbo kwenye simu yako uki prompt command ya passwd kwenye terminal itakuuliza current passowrd ambayo iloko kwenye device yako baada ya kujaza itakuaja new password sugestion ambayo unataka kuweka kwenye device yako.

[⬆️ Rudi Juu](#top)

## Kupata Msaada

- Kufahamu sehemu gani umekwama kama mtuamiaji wa Kali Linux ni muhimu sana

## Using Help

1. Tumia --help au -h

   - Moja kati ya command ambayo ni muhimu kutumia kama umekwama ni --help au -h,ili kutumia hii utaanza na keyword ambayo unataka kujua ikifutiwa na --help au -h

   ```sh
   cd --help
   ```

## Using Manual

2.Kutumia Manual pages(man)

- Ili kutumia manual pages utaanza na keyword man ikifuatiwa na keyword ambayo unatafuta

```sh
man ls
```

Manual imegawanyika katika section mbalimbali,name,synopsis,description,authors,reporting bugs.

## Using Documentation

3.Kutumia --info

- Kupitia info keyword ikifuatiwa na neno ambalo unataka litafutwe utaweza kupata documentation kuhusu neno ambalo unatafuta katika program yako kama utakuwa umekwama.Hapa ndio utapata official documentation kuhusu command yako.

```sh
info ls
```

Tumia q keyword kuweza ku quit kwenye manual pages na info documentation

## Contributing

Kama unawazo au maoni na kutaka kuchangia kuhusu hii repository! unakaribishwa kuchangia.

---

Natumaini hii repository ni muhimu kwako. Nakutakia utendaji mwema na usomaji mwema wa Kali Linux

[⬆️ Rudi Juu](#top)
