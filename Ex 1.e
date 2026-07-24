#include <stdio.h>

int main() {
    int N;
    long long P;
    scanf("%d %lld", &N, &P);

    int arr[N];

    // Read the array
    for (int i = 0; i < N; i++) {
        scanf("%d", &arr[i]);
    }

    int start = 0, maxLength = 0;
    long long currentSum = 0;

    // Sliding window
    for (int end = 0; end < N; end++) {
        currentSum += arr[end];

        while (currentSum > P && start <= end) {
            currentSum -= arr[start];
            start++;
        }

        if (currentSum <= P) {
            int length = end - start + 1;
            if (length > maxLength)
                maxLength = length;
        }
    }

    printf("Max Length: %d", maxLength);

    return 0;
}