//Kth largest number

#include <stdio.h>

void swap(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

int partition(int arr[], int left, int right)
{
    int pivot = arr[right];
    int i = left;

    for(int j = left; j < right; j++)
    {
        if(arr[j] > pivot)
        {
            swap(&arr[i], &arr[j]);
            i++;
        }
    }

    swap(&arr[i], &arr[right]);
    return i;
}

int quickSelect(int arr[], int left, int right, int k)
{
    if(left <= right)
    {
        int p = partition(arr, left, right);

        if(p == k)
            return arr[p];
        else if(p > k)
            return quickSelect(arr, left, p - 1, k);
        else
            return quickSelect(arr, p + 1, right, k);
    }
    return -1;
}
int main()
{
    int n, k;

    printf("Enter number of elements: ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter elements:\n");
    for(int i = 0; i < n; i++)
        scanf("%d", &arr[i]);

    printf("Enter k: ");
    scanf("%d", &k);

    printf("%dth Largest Element = %d", k, quickSelect(arr, 0, n - 1, k - 1));

    return 0;
}

