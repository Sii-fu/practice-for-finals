#include <bits/stdc++.h>
using namespace std;

class node
{
public:
    int c;
    node *a[26];
    node()
    {
        c = 0;
        for (int i = 0; i < 26; i++)
            a[i] = NULL;
    }
};

void trieInsert(node *root, string s, int i)
{
    if (i == s.size())
    {
        root->c++;
        return;
    }
    int id = s[i] - 'a';
    if (root->a[id] == NULL)
        root->a[id] = new node();
    trieInsert(root->a[id], s, i + 1);
}

node *trieRemove(node *root, string s, int i)
{
    if (s.size() == i)
    {
        if (root->c)
        {
            root->c--;
            return root;
        }
        cout << "string is not in the trie!\n";
        return root;
    }
    int id = s[i] - 'a';
    if (root->a[id] == NULL)
        return root;
    root->a[id] = trieRemove(root->a[id], s, i + 1);
    if (root->a[id] == NULL)
    {
        delete root->a[id];
        root->a[id] = NULL;
    }
    return root;
}

bool trieSearch(node *root, string s)
{
    for (int i = 0; i < s.size(); i++)
    {
        int id = s[i] - 'a';
        if (root->a[id] == NULL)
            return false;
        root = root->a[id];
    }
    if (root->c)
        return true;
    return false;
}

void printTrie(node *root, string s)
{
    if (root->c > 0)
    {
        cout << s << " --> " << root->c << endl;
    }
    for (int i = 0; i < 26; i++)
    {
        char ch = i + 'a';
        if (root->a[i] != NULL)
        {
            printTrie(root->a[i], s + ch);
        }
    }
}

int main()
{
    node *root = new node();
    while (1)
    {
        cout << "TRIE Options\n";
        cout << "1. insert\n";
        cout << "2. remove\n";
        cout << "3. search\n";
        cout << "4. print\n";
        cout << "5. print prefix\n";
        cout << "\n";
        cout << "\n";
        int c;
        cin >> c;
        if (c == 1)
        {
            string s;
            cin >> s;
            trieInsert(root, s, 0);
        }
        else if (c == 2)
        {
            string s;
            cin >> s;
            trieRemove(root, s, 0);
        }
        else if (c == 3)
        {
            string s;
            cin >> s;
            if (trieSearch(root, s))
                cout << "found" << endl;
            else
                cout << "Not found" << endl;
        }
        else if (c == 4)
        {
            printTrie(root, "");
        }
        else if (c == 5)
        {
        }
        else if (c == 6)
        {
        }
        else if (c == 7)
        {
        }
        else
        {
            return 0;
        }
    }
}
