#include <bits/stdc++.h>
using namespace std;

class node
{
public:
    int value;
    node *left, *right;
    int height;
    node(int a)
    {
        value = a;
        left = right = NULL;
    }
};

int h(node *&u)
{
    return (u == NULL) ? -1 : u->height;
}

void leftRotation(node *&u)
{
    node *v = u->right;
    u->right = v->left;
    v->left = u;
    u->height = max(h(u->right), h(u->left)) + 1;
    v->height = max(h(v->left), h(v->right)) + 1;
    u = v;
}

void rightRotation(node *&u)
{
    node *v = u->left;
    u->left = v->right;
    v->right = u;
    u->height = max(h(u->right), h(u->left)) + 1;
    v->height = max(h(v->right), h(v->left)) + 1;
    u = v;
}

void leftrightRotation(node *&u)
{
    leftRotation(u->left);
    rightRotation(u);
}

void rightleftRotation(node *&u)
{
    rightRotation(u->right);
    leftRotation(u);
}

void balance(node *&u)
{
    if (u == NULL)
        return;
    if (h(u->left) - h(u->right) > 1)
    {
        if (h(u->left->left) >= h(u->left->right))
        {
            rightRotation(u);
        }
        else
        {
            leftrightRotation(u);
        }
    }
    else if (h(u->right) - h(u->left) > 1)
    {
        if (u->right->right >= u->right->left)
        {
            leftRotation(u);
        }
        else
        {
            rightleftRotation(u);
        }
    }
    u->height = max(h(u->left), h(u->right)) + 1;
}

void insert(int x, node *&u)
{
    if (u == NULL)
        u = new node(x);
    else if (x > u->value)
        insert(x, u->right);
    else if (x < u->value)
        insert(x, u->left);
    balance(u);
}

void inorder(node *&u)
{
    if (u == NULL)
        return;
    inorder(u->left);
    cout << u->value << ' ' << u->height << endl;
    inorder(u->right);
}

int main()
{
    node *root = NULL;
    while (1)
    {
        cout << "\n\n1. Insert in AVL   \n2. In-order Traversal    \n3. Delete  \n4. End" << endl
             << endl;
        int choice;
        cin >> choice;
        if (choice == 1)
        {
            int x;
            cout << "Enter value to insert: ";
            cin >> x;
            insert(x, root);
        }
        else if (choice == 2)
        {
            cout << "In-order traversal of the tree" << endl;
            inorder(root);
        }
        else if (choice == 3)
        {
            int x;
            cout << "Enter value to delete: ";
            cin >> x;
            // removee(x, root);
        }
        else if (choice == 4)
        {
            break;
        }
        else
        {
            cout << "Invalid Choice" << endl;
            // break;
        }
    }
}