## Decision Making

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

```sh
#!/bin/bash

# Check if a file exists
if [ -e "file.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

```

- Katika bash scripting logical operators pia zinatumika kuangalia kama kauli fulani ni kweli ama sio kweli ila itaangalia upande wote, kuna logical operators tatau katika bash scripting ambazo ni `logical and &&` `logical or ||` na `logical not !`, kazi ya `logical and` Mfano

```sh
#!/bin/bash
echo "Enter username"
read un
echo "Enter password"
read pw
if [[ "$un" == "admin" && "$pw" == "superuser" ]]; then
echo "Login Successful."
fi
```

- Katika `logical or` inaangalia kam angalau satement moja katika code yako ni kweli mfano wa code hapo chini

```sh
#!/bin/bash
echo "Enter username"
read un
echo "Enter password"
read pw
if [[ "$un" == "admin" || "$pw" == "superuser" ]]; then
echo "Login Successful."
fi
```

inaangalia kama statement katika script yako pande zote kama ni kweli then script yako inakuwa executed ila kwenye upnade wa logical or inaangalia kama statetment upande mmoja ni kweli then satement inakuwa executed ila `logical not` inabadili statement ambayo ni kweli kuwa sikweli na kinyume chake(vice versa) hivyo mfano kama statement ni kweli itakuwa sio kweli na kama statement ni sio kweli itakuwa kweli.

- Hivyo kupitia conditional statement katika bash scripting tunaweza kutengeneza project ambayo ,utatengeneza folder ambapo kwenye script yetu itaangalia kama folder(directory) lipo au halipo pia hata kwa upande wa file tunaweza tukafanya hivyo.

