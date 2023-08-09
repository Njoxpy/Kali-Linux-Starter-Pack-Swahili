# Kali-Linux-Starter-Pack-Swahili

# Getting Started with Kali Linux



Karibu katika hii repository ya Kali starter pack! Hi repository itakusaidia kujua baadhi ya commands muhimu ambazo hauna budi kufahamu kama mtumiaji wa kali Linux kwa Beginners kabisa,Kali linux inatumika katika shughuli mbalimbali kama katika kwenye penetration testing na ethical hacking,ila hii repository ni kwa mtu yoyote anayeanza kutumia Kali Linux.

## Table of Contents

- [Introduction](#introduction)
- [Target Audience](#target-audience)
- [Basic Commands](#basic-commands)
  1.  [pwd](#pwd)
  2.  [Checking Login](#checking-login)
  3.  [Changing Directory](#changing-directory)
  4.  [Directory Contents](#directory-contents)
  5.  [Finding Stuffs](#finding-stuffs)
      - [Locate](#locate)
      - [Find](#find)
  6.  [Modifying Files and directories](#modifying-files-and-directories)
      - [Creating File](#creating-file)
      - [Concatenating File](#concatenating-file)
      - [Kutengeneza File](#kutengeneza-file)
      - [Kutengeneza Directory](#kutengeneza-directory)
      - [Kucopy File](#kucopy-file)
      - [Renaming File](#renaming-file)
      - [Removing File](#removing-file)
      - [Removing Directory](#removing-directory)
- [Kupata Msaada](#kupata-msaada)
  1.  [Using Help](#using-help)
  2.  [Using Manual](#using-manual)
  3.  [Using Documentation](#using-documentation)
- [Scope](#scope)
- [Content Types](#content-types)
- [Contributing](#contributing)

## Introduction

Jinsi ya ku install kali linux https://www.kali.org/docs/installation/hard-disk-install/

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

**Basic commands ambazo zinatakiwa kutumika katika Kali Linux**

## pwd

1. Finding Yourself with pwd:Kama upo kwenye directory mfano desktop ili kufahamu tunatumia keyword ya pwd kirefu cha pwd ni print working directory,inamaana uki prompt
 ```
 pwd
 ```

 output utakayo pata ni kutokana na directory uliyopo kama upo home directory italeta 

 ``
 /home/username
 ``

```
pwd
```

Hapa utaweza kujua kama ni root(super-user) au normal user

## Checking Login

2. Whoami/Checking Your Login with whoami: Mimi ni nani,Katika linux kuna user wa aina tatu supersuser,group na other user,basi ilikuweza kujua umeingia kama inabidi kutumia command ya.Endapo utatumia root terminal emulator itakwambia ni root ila kama terminal emulator utaleta jina lako au username yako.

```
whoami
```

hii ni ambavyo itakwambia wewe ni kama normal user au kama root

**NOTE:Kama umeingia kwenye terminal kama normal user italeta normal ila kama umetumia Root terminal emulator itaonesha kama root**

**Navigating the linux file system**

## Changing Directory

3. Changing directory/Kubadili directory.Directory katika linux ni sawa na folder katika windows,kama mtumiaji wa linux inabidi kujua jinsi ya kutoka kwenye directory moja kwenda directory nyingine.Kutoka directory hiyo kwenda nyingine utatumia cd keyword followed na sehemu ambayo unataka kwenda kama ni desktop itakua.

```
cd Desktop
```

Baada ya kutoka katika hiyo directory kurudi nyuma kwenye directory ulitoka ni

```
cd ..
```

Kwenda kwenye home directory utatumia

```
cd ~
```

## Directory Contents

4. Kujua vitu vilivyomo katika directory yako au folder(natumia hii term ili iwe rahisi kukumbuka kwenye uki relate na window),command inayotumika ni

```
ls
```

Katika ku list kuna namna mbali zinazotumika!

i. Listing hidden files

```
ls -la
```

ii. Long listing:

```
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

```
ls -la
```

la = long-listing -l + -a(display hidden files)
-l diplays files katika long listing na details ambazo zinakuwa displayed zinaitwa metadata,mfano wa metadata ni file type,permission,links,size,file name

**Why are files hidden in linux**

- clean and organized directory
- Privacy and security
- user interface consistency
  unaweza kufuatilia vizuri hapa >>
- Kama unataka kudisplay content zote zlizopo katika kila directory na sub directoris tumia


    ```
    ls -R
    ```
    NOTE:Kuwa makini sana unavyo tumia ls -R kwenye root itachukua mda mrefu sana na kama itakuwa connected na usb au dvd inabidi itoe list ya vitu vyote vilivyomo humo,pia jitahidi kuwa specific kama unataka ku display contents zote na subdirectoris zilizopo katika /bin tumia

    ```
    ls -Rl /bin
    ```

    ## Sorting contents by by size
    Ili uweze ku sort contents kutokana na size tunatumia
    ```
    -S
    ``
    Kumbuka Linux ni case sensitive kwa hiyo ukitumia -s utapata kitu kingine,hivyo ili uweze ku sort files zako kutokana na size tumia -S,item zitakuwa sorted from largest to lowest size
    ```
    ls -S
    ``
    mara nyingi -S huwa inaenda vizuri ikiwa combined na -l mfano
    ```
    ls -lS
    ```


## Finding Stuffs

5. Kutafuta content fulani au directory katika system yako

## Locate

- Hapa kuna command kama mbili zinazotumika katika sytem yako command ya kwanza ni **locate**
  unaanza na keyword ya locate folowed by the file you want to search kwa hiyo,kitakacho fanyika ni system kuenda kunagalia kama hiloneno au foklder lipo kwenye entire file sytem
- Njia nyepesi ya kutafuta kitu chochote kwa linux ni kutumia locate command ial shida ya locate command ni kwamba itakupa karibia kila kitu kilichopo katika system kwenye stystem kwahiyo unakuta unakuwa confused,kutumia locate anza na locate keyword ikifuatiwa na neno ambalo unataka kutafuta
```
locate wifi
```
Kwahiyo utakuta unaletewa majibu mengi mno.


## Find

- Command nyingine ni find
  `find keyword`

## Whereis

## Modifying Files and directories

6. Modifying Files and directories

   ## Creating File

   - Creating File
     Kuna aina nyingi za kutengeneza file kwenye Linux.Ila kwa hapa tutangalia aina mbili,njia ya kwanza ni kwa kutumia **cat** keyword ila cat mara nyingi inatumika ku display content za file kwa kutumia

   ```
   cat njox.txt
   ```

   pia cat inatumika ku create small files ili ku create large files tutatumia Vim au leafpad.

   ## Concatenating File

   - Concatenation with cat.
     keyword cat ikifuatiwa na jina la file itakusaidia kujua content zilizopo ndani ya file lako,ila ili tuweze kutengeneza file kwa kutumia cat,tutatumia cat keyword ikifuatiwa na redirect symbol > ikifuatiwa na jina la file ambalo tunataka kutengeneza

   ```
   cat > njox.txt
   ```

   baada ya hapo uta click enter the linux itakuwezesha wewe kuweza kuandika maneno unayotaka katika terminal yako,baada ya kuandika utaweza ku quit kwa kutumia ctrl+d,na ili uweze kuona content zilizo kwenye file lako tumia cat keyword ikifuatiwa na jina la file

   ```
   cat njox.txt
   ```

   Endapo utatumia cat keyword tena na redirect symbol mfano

   ```
   cat > njox.txt
   ```

   content zako zote ulizoandika kwenye file la kwanza zitafutika,sasa je utafanyaje kama hutaki content zilizomo zifutike,hapa tutatumia cat keyword ikifuatiwa na double redirect symbol >> kwenda kwenye jina la file lako

   ```
   cat >> njox.txt
   ```

   Tumia

   ```
   cat njox.txt
   ```

   Kuona content zilizomo

   ## Kutengeneza File

   - File creation with touch.Njia nyepesi ya kutengeneza file kwenye terminal ni kutumia touch keyword ikifuatiwa na jina la file ambalo unataka kutengeneza.

     ```
     touch CreateFile
     ```

     Kumbuka katika kutengeneza file unaweza weka na extension ya file hilo pia mfano:

     ```
     touch index.html
     ```

     Kma file litakuwa limetengenezwa katika home directory basi ukitumia ls utaweza kuona jina la file lako

   - Adding content into a file:Unaweza kuweka content katika file lako kwa kutumia nano keyword ikifuatiwa na jina la file
     ```
     nano njox.txt
     ```
     Kwa kutumia nano utaweza kuandika content zako zako then utasave kwa kutumia ctrl + s ,na exit kwa kutumia ctrl + x
     au cat kwa kutumia redirect symbol

   ## Kutengeneza Directory

   - Kutengeneza directory,utaanza na keyword(mkdir-make a directory) ikifuatiwa na jina la directory yako,mfano

   ```
   mkdir newDirectory
   ```

   Kumbuka kwamba directory ni kama folder kwenye windows hiyo ni muhimu kutumia jina ambalo itakuwa ni rahisi kwako kukumbuka au naweza sema tumia simple and descriptive name,mara nyingi directory huwa linakuwa na rangi nyeupe ila file huwa na rangi ya blue,baada ya ku create directory tumia ls kuona kama directory lipo!

   ## Kucopy File

   - Copying file:Ii uweze ku copy file kutoka sehemu moja kwenda nyingine inabidi ujue kwanza una copy file lako kutoka wapi kwenda wapi,keyword inayotumika hapa cp ikimaanisha ni copy followed na jina la file unalocopy na sehemu unayokopia file lako.

   ```
   cp fileLaZamani fileJipya
   ```

   ## Renaming File

   - Renaming file(Kubadili jina la file),kwa bahati nzuri |mbaya ni kwamba katika Kali huwezi ku rename file moja kwa moja ila command ambayo inatumika ni mv(move) kwa kutumia mv tunatoa lile file kutoka sehemu moja kwenda sehemu nyingine.

   ```
   mv oldfile newfile
   ```

   Baada ya file kuwa moved tumia ls kuangalia je hilo file lipo au halipo kumbuka ukitumia mv oldfile linafutika na newfile linakuwa created kwa sababu limekua renamed.

   ## Removing File

   - Kufuta file:Tumia rm keyword ikifuatiwa na jian la file.

   ```
   rm fileName
   ```

   Ukifanya long listing(ls -l) kwenye hiyo directory utaona kwamba file limekuwa removed.

   ## Removing Directory

   - Kufuta directory(folder):Tumia rmdir(remove directory) keyword na jina la directory.

   ```
   rmdir directoryName
   ```

## Kupata Msaada

**Kufahamu sehemu gani umekwama kama mtuamiaji wa Kali Linux ni muhimu sana**

## Using Help

1. Tumia --help au -h

   - Moja kati ya command ambayo ni muhimu kutumia kama umekwama ni --help au -h,ili kutumia hii utaanza na keyword ambayo unataka kujua ikifutiwa na --help au -h

   ```
   cd --help
   ```

## Using Manual

2. Kutumia Manual pages(man)

- Ili kutumia manual pages utaanza na keyword man ikifuatiwa na keyword ambayo unatafuta

```
man ls
```

Manual imegawanyika katika section mbalimbali,name,synopsis,description,authors,reporting bugs.

## Using Documentation

3. Kutumia --info

- Kupitia info keyword ikifuatiwa na neno ambalo unataka litafutwe utaweza kupata documentation kuhusu neno ambalo unatafuta katika program yako kama utakuwa umekwama.Hapa ndio utapata official documentation kuhusu command yako.

```
info ls
```

Tumia q keyword kuweza ku quit kwenye manual pages na info documentation

## Contributing

Kama unawazo au maoni na kutaka kuchangia kuhusu hii repository! unakaribishwa kuchangia.

---

Natumaini hii repository ni muhimu kwako. Nakutakia utendaji mwema na usomaji mwema wa Kali Linux
