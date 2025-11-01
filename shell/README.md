- use Shebang `#! /bin/bash` to tell the shell which programme or shell will use.

- define vars as `VAR1="<Value>"` and refer this var by `$VAR1`.

```bash
#! /bin/bash

SHELL="bash"

echo "This is $SHELL shell."
```

**OutPut**

```bash
This is bash shell
```

**File Operators**

| -d FILE | True if file is a `directory`. |
| ------- | ----------------- |
| -e FILE | True if file is exists |
| -f File | True if file exists and its a file |
| -r FILE | File is readable |
| -w FILE | File is writable |
| -x FILE | File is executable |
| -s FILE | File exists and its `Not EMPTY` |
| **String Operators** |
| -z STRING | True if String is empty |
| -n STRING | True if String is not empty |
| STRING1 = STRING2 | True if STRING1 `is equal to` as STRING2 |
| STRING1 != STRING2 | True if STRING1 `is not equal to` STRING2 |


**Make decisions by if statement**

```bash
if [ conditinos ]
then
    command 1
    command 2
fi
```

**To work with list of items use `for loop`**

```bash
for VAR_NAME in ITEM_1
do
  command 1
  command 2
done
```

**Read and ask for input**

read -p "Enter your msg here" VAR_NAME

**Positional Parameter and Special Variables**

| Variable    | Meaning                                        | Example                |
| ----------- | ---------------------------------------------- | ---------------------- |
| `$0`        | The **name of the script** itself              | `./myscript.sh`        |
| `$1`        | The **first argument** passed to the script    | `arg1`                 |
| `$2`        | The **second argument**                        | `arg2`                 |
| `$3 ... $9` | Next arguments                                 | `arg3`, etc.           |
| `$#`        | The **number of arguments** passed             | `3` if 3 args passed   |
| `$@`        | All arguments as separate quoted strings       | `"arg1" "arg2" "arg3"` |
| `$*`        | All arguments as a single string               | `"arg1 arg2 arg3"`     |
| `$$`        | The **current process ID (PID)** of the script | e.g., `2389`           |
| `$?`        | The **exit status** of the last command        | `0` = success          |
| `$!`        | The **PID of the last background command**     | —                      |


Exit Status and Return Codes
---

- Every commands returns its exit status.
- Range from `0 to 255`.
- 0 = success
- Other than 0 = Error conditions.
- Use for error checking

- `$?` - check for previous commands exit code and it will returns values from 0 to 255.

- `&& = AND` - Compaire both conditions should true
- `|| = OR` - Any of one condtions should true.

```bash
#!/bin/bash
HOST="google.com"

ping -c1 $HOST

if [ $? -ne "0" ]; then
    echo "$HOST is unreachable"
    exit 1
fi
exit 0
```

