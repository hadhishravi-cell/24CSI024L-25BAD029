
1.b
#include <stdio.h>

int main() {
    int N;
    scanf("%d", &N);

    int arr[N];
    long long prefix[N];
    for (int i = 0; i < N; i++) {
        scanf("%d", &arr[i]);
    }
    prefix[0] = arr[0];
    for (int i = 1; i < N; i++) {
        prefix[i] = prefix[i - 1] + arr[i];
    } 
    for (int i = 0; i < N; i++) {
        printf("%lld", prefix[i]);
        if (i != N - 1)
            printf(" ");
    }

    return 0;
}
