# Description
This bug happens when the input string `str` has a length larger than `MAX_LEN`.

When running, it will output:
``` shell
$ ./match
Please Input the String:
Helloworld o
oworld
Abort trap: 6
```

Raising `Abort trap: 6` instead of clean output.

# Analysis
This is the same error caused by `scanf` assigning values without checking availability.
Abort 6 will be triggered whenever you try to access memory you don't own.

# Solution
Set `MAX_LEN` big enough.

Use input functions like `fgets` which can control the length of buffer instead.
