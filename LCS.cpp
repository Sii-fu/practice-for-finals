#include <bits/stdc++.h>
using namespace std;

int dp[100][100];

int lcs(string a, string b, int i, int j)
{
    if (a[i] == '~' or b[j] == '~')
        return 0;
    if (a[i] == b[j])
    {
        return 1 + lcs(a, b, i + 1, j + 1);
    }
    return max(lcs(a, b, i + 1, j), lcs(a, b, i, j + 1));
}

void lcsDP(string a, string b, int m, int n)
{
    for (int i = 1; i < m; i++)
    {
        for (int j = 1; j < n; j++)
        {
            if (a[i - 1] == b[j - 1])
                dp[i][j] = dp[i - 1][j - 1] + 1;
            else
                dp[i][j] = max(dp[i][j - 1], dp[i - 1][j]);
        }
    }
}

void printLCSwithDP(int dp[100][100], string x, int i, int j)
{
    if (i == 0 or j == 0)
        return;
    else if (dp[i][j] == dp[i][j - 1])
        printLCSwithDP(dp, x, i, j - 1);
    else if (dp[i][j] == dp[i - 1][j])
        printLCSwithDP(dp, x, i - 1, j);
    else if (dp[i][j] == dp[i - 1][j - 1] + 1)
    {
        cout << x[i - 1];
        printLCSwithDP(dp, x, i - 1, j - 1);
    }
}

//  bdcaba abcbdab

int main()
{
    string a, b;
    cin >> a >> b;
    int m = a.size(), n = b.size();
    memset(dp, 0, sizeof(dp));
    lcsDP(a, b, m + 1, n + 1);
    cout << dp[m][n] << endl
         << "  ";
    for (int j = 0; j < n; j++)
        cout << b[j] << ' ';
    cout << endl;
    for (int i = 1; i < m + 1; i++)
    {
        cout << a[i - 1] << '-';
        for (int j = 1; j < n + 1; j++)
            cout << dp[i][j] << ' ';
        cout << endl;
    }
    printLCSwithDP(dp, a, m, n);
}