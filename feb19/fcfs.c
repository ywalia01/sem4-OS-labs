#include <stdio.h>

void waiting(int n, double burst[], double wait[], double at[])
{
    wait[0] = 0;
    for (int i = 1; i < n; i++)
    {
        wait[i] = burst[i - 1] + wait[i - 1] - (at[i] - at[i - 1]);

        if (wait[i] < 0)
        {
            wait[i] = 0;
        }
    }
}

void turnaround(int n, double burst[], double wait[], double turn[])
{
    for (int i = 0; i < n; i++)
        turn[i] = burst[i] + wait[i];
}

int main(void)
{
    int n = 0;

    printf("\n****** FCFS Scheduling Algo ******");
    printf("\nEnter no. of processes: ");
    scanf("%d", &n);

    int process[n];

    for (int k = 0; k < n; k++)
    {
        process[k] = k + 1;
    }

    double burst_time[n], arrival_time[n], waiting_time[n], tat[n], total_wt = 0, total_tat = 0, avg_wt = 0, avg_tat = 0;

    for (int i = 0; i < n; i++)
    {
        printf("Arrival time for process %d: ", i + 1);
        scanf("%lf", &arrival_time[i]);
        printf("Burst time for process %d: ", i + 1);
        scanf("%lf", &burst_time[i]);
    }

    for (int l = 0; l < n - 1; l++)
    {
        for (int m = 0; m < n - l - 1; m++)
        {
            if (arrival_time[m] > arrival_time[m + 1])
            {
                int temp1 = arrival_time[m];
                int temp2 = burst_time[m];
                int temp3 = process[m];
                arrival_time[m] = arrival_time[m + 1];
                arrival_time[m + 1] = temp1;
                burst_time[m] = burst_time[m + 1];
                burst_time[m + 1] = temp2;
                process[m] = process[m + 1];
                process[m + 1] = temp3;
            }
        }
    }

    for (int j1 = 0; j1 < n; j1++)
    {
        printf("%lf", arrival_time[j1]);
    }

    waiting(n, burst_time, waiting_time, arrival_time);
    turnaround(n, burst_time, waiting_time, tat);

    for (int j = 0; j < n; j++)
    {
        total_wt += waiting_time[j];
        total_tat += tat[j];
        printf("\n\nWaiting time of process %d: %lf", process[j], waiting_time[j]);
        printf("\nTurnaround time of process %d: %lf", process[j], tat[j]);
    }

    avg_wt = total_wt / n;
    avg_tat = total_tat / n;
    printf("\n\nAvg. Waiting time: %lf", avg_wt);
    printf("\nAvg. Turnaround time: %lf", avg_tat);
}