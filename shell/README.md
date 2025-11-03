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

Functions
---

**What is a functions ?**

- A specific tasks you required to reuse or repeatable time in script , instead of rewrite that code , just call that functions.

- Syntax: 
  ```bash 
  function functions-name() {
        # Codes here
    }
  ```

- `To call a functinos, just use function-name`

```bash
#!/bin/bash

function hello() {
    echo "Hello!"
}
hello
```

**Functions can call other functions**

```bash
#!/bin/bash

function hello() {
    echo "Hello!"

    now # This is calling now functions into hello functinos
}

function now() {
    echo "It's $(date +%r)"
}

hello # Now hello function is calls.
```

![alt text](f.png)

**Functions can accept arguments $1, $2**

```bash
#!/bin/bash

function hello() {
    echo "Hello! $1" # pass arg as $1, BUT, YOU ALSO HAVE TO PASS IT FROM CALLING FUNCTIONS `hello $1`.
    now
}

function now() {
    echo "It's $(date +%r)"
}

hello $1 # HERE, YOU HAVE TO PASS ARGs, IT WILL PASS INTO Fucntions.
```

**OutPut**

![alt text](fa.png)

**Local Variables**
- Can only be accessed within the functions.
- Create using the **local** keyword.
  
  - `local LOCAL_VAR=1`.

- Only functions can have local vars.

**Global Variables**
- Should define outside of the functions and before functions is use.

- Global variables can be used within functions.

- Can be redefin in functions - It will overwrites the outside defined variable's value.

```bash

name="bob"

myfunction() {
    name="tom"
    echo "Hi $name! This is global variables."
}
myfunction
```

**OutPut**

`echo "Hi $name! This is global variables."`

`Hi tom! This is global variables.`




Case Statements
---

- Case1

```bash
case "$1" in

  start) "your command";;
  stop) "stop command";;

esac
```

- Case2

```bash

read -p "Enter y or n: " ANSWER

case "$ANSWER" in
    [yY] | [yY] [eE] [sS] ) echo "You answered yes.";;

    [nN] | [nN] [oO] ) echo "You answered no.";;

    *) echo "Invalid answer.";;
esac
```

While Loop
---

- A while loop keeps executing again and again as long as the condition is true.

- Once the condition becomes false, the loop stops immediately.

```bash
count=1
while [ $count -le 3 ]
do
    echo "Count is $count"
    ((count++))
done
```

**OutPut**

- count=1 → condition [ 1 -le 3 ] → true → runs loop → prints → count becomes 2

- count=2 → condition [ 2 -le 3 ] → true → runs loop → count becomes 3

- count=3 → condition [ 3 -le 3 ] → true → runs loop → count becomes 4

- count=4 → condition [ 4 -le 3 ] → false → loop stops

**While infinite loop**

```bash
while true # Here, not given command which make condition false.
do
  echo "hi"
done
```

**While loop to checking user input**

```bash
while [ "$CORRECT" != "y" ]
do
  read -p "Enter your name: : NAME
  read -p "Is ${NAME} correct ?" CORRECT
done
```
**OutPut**

![alt text](w1.png)

**Reading file using while**

```bash
LINE_NUM=1

while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < ../sh1.sh

# LINE → variable that stores each line.
# < ../sh1.sh - redirects the file as input to the loop.
```


Debugging
---

- `-x` - Prints commands and arguments as they execute

- To enable debugging wirte `-x` in shebang. `#!/bin/bash -x`

- set `+x` - To stop debugging.

```bash
#!/bin/bash -x

TEST_VAR="test"
echo "$TEST_VAR"
```

![alt text](set-x.png)

- Set -x in script.

```bash
#!/bin/bash

TEST_VAR="test"
set -x # Enable debugging
echo "$TEST_VAR"
set +x # Stop  debugging
hostname
```

![alt text](stopd.png)

**Error Exit in Debugging**

`-e` - Exit on Error
`#!/bin/bash -ex` - Will enable debugging and Error exit.

`-v` - Print shell input lines as they are read.

```bash
#!/bin/bash -e

FILE_NAME="/not/here"
ls "$FILE_NAME"
```

**OutPut**

![alt text](xe.png)

More Control over Debugging by Manual Debugging
---

- Use a Special Variables like `DEBUG` and set it value as `true` or `false`.

```bash
#!/bin/bash

DEBUG=true

if $DEBUG
then
  echo "Debug mode is ON."
else
  echo "Debug mode is OFF."
fi
```

**Use AND and OR**

```bash
#!/bin/bash

DEBUG=true
$DEBUG && echo "Debug mode is ON."

#!/bin/bash

DEBUG=false
$DEBUG || echo "Debug mode is OFF."
```

**Debug with Passing arguments**

```bash
#!/bin/bash

debug() {
  echo "Executing: $@"
  $@
}
debug ls
```
