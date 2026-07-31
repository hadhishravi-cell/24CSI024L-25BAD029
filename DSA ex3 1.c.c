#include <stdio.h>
#include <string.h>

int main() {
    char s[100];
    int freq[256] = {0}, i, j;

    printf("Enter a string: ");
    scanf("%s", s);

    // Count frequency
    for (i = 0; s[i] != '\0'; i++)
        freq[s[i]]++;

    // Print characters in decreasing frequency
    while (1) {
        int max = 0;
        char ch;

        for (i = 0; i < 256; i++) {
            if (freq[i] > max) {
                max = freq[i];
                ch = i;
            }
        }

        if (max == 0)
            break;

        for (j = 0; j < max; j++)
            printf("%c", ch);

        freq[ch] = 0;
    }

    return 0;
}