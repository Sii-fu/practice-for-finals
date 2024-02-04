#include <bits/stdc++.h>
using namespace std;

int p(int *a, int l, int h)
{
    int pivot = a[h], i = l, j = h;
    while (i < j)
    {
        while (pivot <= a[i])
            i++;
        while (pivot > a[j])
            j--;
        if (i < j)
            swap(a[i], a[j]);
    }
    swap(a[j], a[l]);
    return j;
}

void quicksort(int *a, int l, int h)
{
    if (l < h)
    {
        int x = p(a, l, h);
        quicksort(a, l, x);
        quicksort(a, x + 1, h);
    }
}

int main()
{
    int n;
    cin >> n;
    int a[n];
    for (int i = 0; i < n; i++)
        cin >> a[i];
    quicksort(a, 0, n - 1);
    for (int i = 0; i < n; i++)
        cout << a[i] << ' ';
}