#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i, totalp, sum = 0, counter = 0, y, timeq, wt = 0, turnt = 0, arrt[10], bt[10], temp[10];
    float avg_wt, avg_tat;
    printf("******** Round Robin Algorithm in C ********");
    printf("\nEnter total processes: ");
    scanf("%d", &totalp);
    y = totalp;

    for (i = 0; i < totalp; i++)
    {
        printf("\nProcess %d:\n", i + 1);
        printf("Enter arrival time: ");
        scanf("%d", &arrt[i]);
        printf("Enter burst time: ");
        scanf("%d", &bt[i]);
        temp[i] = bt[i];
    }

    printf("\nEnter the Time Quantum: ");
    scanf("%d", &timeq);
    printf("\nProcess\tBurst Time\tTurnaround Time\t Waiting Time");
    for (sum = 0, i = 0; y != 0;)
    {
        if (temp[i] <= timeq && temp[i] > 0)
        {
            sum = sum + temp[i];
            temp[i] = 0;
            counter = 1;
        }
        else if (temp[i] > 0)
        {
            temp[i] = temp[i] - timeq;
            sum = sum + timeq;
        }
        if (temp[i] == 0 && counter == 1)
        {
            y--;
            printf("\n[%d]\t  %d\t\t\t%d\t\t%d", i + 1, bt[i], sum - arrt[i], sum - arrt[i] - bt[i]);
            wt = wt + sum - arrt[i] - bt[i];
            turnt = turnt + sum - arrt[i];
            counter = 0;
        }
        if (i == totalp - 1)
        {
            i = 0;
        }
        else if (arrt[i + 1] <= sum)
        {
            i++;
        }
        else
        {
            i = 0;
        }
    }
    avg_wt = wt * 1.0 / totalp;
    avg_tat = turnt * 1.0 / totalp;
    printf("\n\nAvg. Turnaround Time: %f", avg_wt);
    printf("\nAvg. Waiting Time: %f", avg_tat);
}
