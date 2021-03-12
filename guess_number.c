// A guess number game
// Input the number in advance
// Players play the game by guessing
// After each guess, Bigger/Gotcha/Smaller will be printed to stdout
// to assist your next gues
// There is a mode, when there will be a strategic player doing binary search
//
// Created by Dedong Xie
// On 2021-03-12

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

int make_guess(int start, int end);

int main(int argc, char *argv[]) {
    printf("Please input your number:");
    
    // Observation: Here we observe that if we define target_num first,
    // then after scanf("%s", mode);
    // the value of target_num will change
    // when target_num is small, the resulting value will be 0.
    
    int target_num;
    char mode;
    // Here, different define order will result in different result
    /*
    int target_num = 0;
    char mode;
     */
    /*
     char mode;
     int target_num = 0;
     */
    
    // Analysis: Since line 81's scanf() will return a string without
    // considering ite length,
    // which is a string with charaters 'M'/'A' + '\0'
    // This will overwrite the memory space 1 byte
    // after our initilized mode for 1byte.
    // In a small endian machine(like x86), the least significant digits will appear at first
    // say, the first byte
    // therefore, the overwritten part will wipe
    // the original target_number's least significant part to be 00000000
    //
    // See the example below:
    // Remember that the two variuables are in main()
    // they are put on the running stack.
    // Hence, the first defined will have a higher start address
    // When we define the number first, in memory from low addres to high address,
    // stack: char: 1byte int: 4bytes
    // int is initialized as 25 (0x19), in memory: 10001001 00000000 00000000 00000000
    // char is 1byte, in memory: 00000000
    // When char overflows, it will rewrite the first of int to be 00000000
    // Now, int: 00000000 00000000 00000000 00000000...
    // The number becomes 0
    // Such results can be verified by the disassemble code attached
    //
    // This means that we have to use scanf carefully as
    // it won't check availablity of memory for the read variable.
    // When processing with pre-fixed length variable,
    // use fscanf() with buffer length sizeof(var) instead.
    // Or we just use others like getchar() which guarantees we get exactly one char.
    // Hence, we write here:
    //                      *** WARNING ***
    // scanf() won't check the availability of the target address
    // before writting to it. Use can be dangerous as it may overwrite other data.
    //                         *********
    scanf("%d", &target_num);
    printf("target: %d\n", target_num);
    printf("Please indicate your mode(M for manually, A for auto):");
    // Solution: use getchar() or change the order as above
    /*
    // One alternative is to use getchar()
    getchar();
    mode = getchar();
    getchar();
    */
    // The line below causes the bug
    scanf("%s", &mode);
    
    printf("[%c]\n", mode);
    printf("target: %d\n", target_num);
    printf("Mode is:[%c]\n", mode);
    return 0;
    // Now we start the game with a flag of gotcha
    bool correct = false;
    int start = 0;
    int end = 100;
    while (!correct) {
        // printf("target %d\n", target_num);
        int guess = 0;
        printf("Please make your guess:");
        if (mode == 'M') {
            scanf("%d", &guess);
        } else if (mode == 'A') {
            guess = make_guess(start, end);
        } else {
            printf("mode unset\n");
        }
        printf("You made guess %d\n", guess);
        if (guess < target_num) {
            printf("Bigger\n");
            start = guess + 1;
        } else if (guess == target_num) {
            printf("Gotcha!\n");
            correct = true;
        } else {
            printf("Smaller\n");
            end = guess - 1;
        }
    }
    
    return 0;
}

// A strategic guesser which will do binary search with start and end
int make_guess(int start, int end) {
    if (start < end) {
        return (start + end) / 2;
    }
    return start;
}
