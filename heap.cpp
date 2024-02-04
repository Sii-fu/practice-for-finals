#include <bits/stdc++.h>
using namespace std;

class heap
{
public:
    int a[100];
    int size;
    int limit;
    heap()
    {
        size = 1;
        limit = 100;
    }
    void push(int n)
    {
        if (size == limit)
        {
            cout << "full\n";
            return;
        }
        int i = size++;
        a[i] = n;
        while (i > 0 and a[i] > a[i / 2])
        {
            swap(a[i], a[i / 2]);
            i = i / 2;
        }
    }
    void heapify(int i)
    {
        int l = i * 2;
        int r = i * 2 + 1;
        int mx = i;
        if (a[mx] < a[l] and l < size)
            mx = l;
        if (a[mx] < a[r] and r < size)
            mx = r;
        if (i != mx)
        {
            swap(a[i], a[mx]);
            heapify(mx);
        }
    }
    void buildmaxheap()
    {
        int n = (size / 2);
        while (n--)
        {
            heapify(n);
        }
    }
    void print()
    {
        int n = 1;
        for (int i = 1; i < size; i++)
        {
            cout << a[i] << ' ';
            if (i == n)
            {
                cout << endl;
                n = n * 2 + 1;
            }
        }
        cout << endl;
    }
    int top()
    {
        if (size == 1)
        {
            cout << "empty" << endl;
            return 0;
        }
        return a[1];
    }
    void pop()
    {
        if (size == 1)
        {
            cout << "empty" << endl;
            return;
        }
        swap(a[1], a[size - 1]);
        size--;
        buildmaxheap();
    }
    void printarr()
    {
        for (int i = 1; i < size; i++)
        {
            cout << a[i] << ' ';
        }
        cout << endl;
    }

    void heapsort()
    {
        int n = size;
        while (size > 1)
        {
            pop();
        }
        size = n;
        print();
    }
};

int main()
{
    heap h;
    while (1)
    {
        // cout << "Heap Option:\n";
        // cout << "1. Push\n";
        // cout << "2. pop\n";
        // cout << "3. top\n";
        // cout << "4. Build max heap\n";
        // cout << "5. print\n";
        // cout << "6. size?\n";
        // cout << "7. printarr\n";

        int c;
        cin >> c;
        if (c == 1)
        {
            int a;
            cin >> a;
            h.push(a);
        }
        else if (c == 2)
        {
            h.pop();
        }
        else if (c == 3)
        {
            cout << h.top() << endl;
        }
        else if (c == 4)
        {
            h.buildmaxheap();
            h.print();
        }
        else if (c == 5)
        {
            h.print();
        }
        else if (c == 6)
        {
            cout << h.size << endl;
        }
        else if (c == 7)
        {
            h.printarr();
        }
        else
        {
            h.heapsort();
        }
    }
}
