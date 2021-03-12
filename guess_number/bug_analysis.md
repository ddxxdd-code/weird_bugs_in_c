## Description ##
This bug happens when I change the order of defining ``` int target_num;``` and ``` char mode;```when I use ```scanf("%s", &mode);``` to get ```mode```.
When I define ```mode``` before ```target_num```, eveything works fine.
But when I define ```target_num``` before ```mode```, after that ```scanf()```, the value of ```target_num``` also changed.

## Analysis ##
Using ```printf()``` I successfully identified the bug happens exactly after the ```scanf()```for ```mode```.
It should be some behavior of that ```scanf()```.
I realized that ```scanf()``` doesn't check the size of input before writing it to the pointer ```&mode```.
Which, will overwrite data after the original one byte length ```char mode``` and change the integer ```target_num```.
More detailed analysis is given in the file [guess_number.c](guess_number.c).

## Solution ##
Avoid such use of ```scanf()``` when input size may exceed the original object.
In this program, I used ```getchar()``` to get exactly one ```char``` to make it work.
