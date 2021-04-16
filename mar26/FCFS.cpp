#include <bits/stdc++.h>
using namespace std;

int size = 8;
void FCFS(int arr[], int head)
{
    int seek_count = 0;
    int distance, cur_track;

    for (int i = 0; i < size; i++)
    {
        cur_track = arr[i];
        distance = abs(cur_track - head);
        seek_count += distance;
        head = cur_track;
    }

    cout << "Total no. of seek operations: " << seek_count << endl;
    cout << "Seek sequence is:" << endl;

    for (int i = 0; i < size; i++)
    {
        cout << arr[i] << endl;
    }
}

int main(void)
{
    int arr[size] = {176, 79, 34, 60, 92, 11, 41, 114};
    int head = 50;
    FCFS(arr, head);
}

// #include <bits/stdc++.h>
// using namespace std;

// typedef long long ll;

// int main()
// {
//     ll n;
//     cout << "\nEnter total number of memory access(length of queue): ";
//     cin >> n;
//     vector<ll> pos(n + 1);
//     cout << "\nEnter the head position: ";
//     cin >> pos[0];

//     ll totalHeadMoment = 0;
//     cout << "\nEnter the memory access sequence: ";
//     for (ll i = 1; i <= n; ++i)
//     {
//         cin >> pos[i];
//         totalHeadMoment += abs(pos[i] - pos[i - 1]);
//     }
//     cout << "Total head movement :" << totalHeadMoment << endl;
// }