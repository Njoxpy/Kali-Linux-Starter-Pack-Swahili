# Standard Input and Output

- [Introduction](#introduction)
- [STDIN(Standard Input)](#stdinstandard-input)
- [STDOUT(Standard Output)](#stdoutstandard-output)
- [STDERR(Standard Error)](#stderrstandard-error)
- [Piping](#piping)
- [HereDocument](#heredocument)
- [HereString](#herestring)

## Introduction

## STDIN(Standard Input)

- Kutumia STDIN katika Bash:
Unaweza kusoma input kutoka STDIN Kwa kutumia `read` command.

```sh
echo -p "Jaza jina lako:" jina
echo "Hello, $jina!"
```

script inauliza kwa mtumiaji jina lake na kisha itatoa salamu kwake.

## STDOUT(Standard Output)

- Normal non error ambayo inakuwa printed via the __STDOUT__  file descriptor.Standard output ya command inaweza kuwa directed kwenda kwenye file, katika namna output ya command inakuwa directed kwenye file badala ya kuwa directed kwenye terminal screenn.Na hayo yanafanyika kwa kutumia `>` na `>>` operators, kwenye section ya kwanza kabisa tulisoma jinsi ya appedn sign inavyofanya kazi na writting to a file.Kama hujapitia hakikisha umepitia script [input na output redirection](/scripts/input_and_output_redirection.md).

- STDOUT ni default output stream katika Linux/ na Unix based systems.Inawakailisha standard output device,pia ni terminal screen ambapo comannd inadisplay reslts by default.

- Kutumia STDOUT Katika bash,unaweza ukaprint text kwenda STDOUT Kwa kutumia `echo` command:

```sh
echo "Sema Dunia!"
```

- Amri(command) nyingi katika linux zinatuma output kwenda kwenye STDOUT by default.Kwa mfano:

```sh
ls -l
```

- Redirection with STDOUT: Redirecting kwenda kwa file:Unaweza uka redirect STDOUT Kwenda kwenye file kwa kutumia `>` operator.

```sh
echo "Sema Dunia!" > output.txt
```

Hii itaandika "Sema Dunia!" kwenda kwenye file linaitwa `output.txt`

- Appending to a file:
Ili kuweza kufanya appending badala ya overwrite kwenda kwenye file utatumia `>>`:

```sh
 echo "Appending to a file" >> output.txt
```

- Piping STDOUT:Piping inakuwezesha kufanya redirecting output ya amri(command) moja kwenye input nyingine.Pipe symbol `|` inatumika kwa ajili ya hivi:

```sh
ls | grep ".txt"
```

- Ili kweza kusome file line by line kama standard output katika bash tutatumia while loop:

```sh
while read line; do
    echo "$line"
done < file.txt
```

- Suppressing STDOUT:

- STDOUT and Return Codes:Kila command katika Linux inarudisha exit status au return code.Command ambayo ni successful command inarudisha 0 ila failure inarudisha non-zero value.STDOUT haiwezi kufanya convey ya information;ila exit status ndio inafanya hivyo.

## STDERR(Standard Error)

- STDERR ni default error output stream katika Linux/Unix based system.Inatumika na program kupata output error message au kufanya diagnostics separate na regular output(STDOUT).By default,STDERRinakuwa displayed katika terminal screen.

- Unaweza kufanya redirecting to  file kama kutakuwa na error endapo bash script itakuwa executed kwenye program yako, mfano: `ls +la` ikawa executed kwenye terminal basi terminal itarudisha value ambayo itakuw na exit code 1 kwamba hiyo command sio hiyo.

```sh
ls: cannot access '+la': No such file or directory
```

- kwa kutumia bash script kwenye standard error tunaweza kufanya redirecting ya error kwenye program yetu inace user atakuwa amekosea na upande wa STDOUT hivyo hivyo.Tunatumia 1> kufanya redirection kwenye standard output ila 2> kwa ajili ya kufanya handling ya standard error.

```sh
ls -al 1>sucess.txt 2>error.txt
```

- Kwenye script hapo juu tumefanya redirection ya standard output na standard error incase kuna error, hivyo kwa sababu `ls -al` ni sahihi basi output itakuwa kwenye file la sucess.txt.

```txt
total 34
drwxr-xr-x 1 Njox 197121   0 Mar 18 20:25 .
drwxr-xr-x 1 Njox 197121   0 Mar 18 18:43 ..
-rwxr-xr-x 1 Njox 197121 144 Mar 13 07:21 array.sh
```

- ila endapo command yetu itakuwa imekosewa hivyo values zetu zitaenda kwenye standard error.Angalia kwenye mfano hapo chini!

```sh
ls +al+ 1>sucess.txt 2>error.txt
```

- kutoka kwenye mfano hapo juu command ambayo imekuwa executed sio sahihi hivyo return code itakuwa moja kwamba kuna error hivyo ili kuweza kufanya redirection ya hiyo error kwenye program yetu tutatumia 2> na kuweka jina la file ambalo linakuwa redirected.

```txt
ls: cannot access '+al+': No such file or directory
```

## Piping

## HereDocument

## HereString
