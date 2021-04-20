import os
import pandas as pd
import numpy as np

def Task_a(weather):
    MinMaxYears = weather.groupby(['Year'], as_index=False).agg(t=('t', 'mean'))
    print(f': {MinMaxYears}')
    y_1y1 = MinMaxYears[(MinMaxYears['t'] == MinMaxYears['t'].min())]['Year'].max()
    print(f'\ny_1y1: {y_1y1}')
    y_2y2 = MinMaxYears[(MinMaxYears['t'] == MinMaxYears['t'].max())]['Year'].max()
    print(f'y_2y2: {y_2y2}')
    print(f'a) y_1y1 + y_2y2: {y_1y1 + y_2y2}\n')


def Task_b(weather):
    DetermineYear = weather[(weather['Month'] == 1) & (weather['t'] > 0)] \
        .groupby(['Year'], as_index=False).agg(avg_day=('Day', 'count'))
    print(f': {DetermineYear}')
    YearWithMaxWarmDays = DetermineYear[(DetermineYear['avg_day'] == DetermineYear['avg_day'].max())].min()['Year'].max()
    print(f'\nb) YearWithMaxWarmDays: {YearWithMaxWarmDays}')


def Task_c(weather):
    summer = weather[(5 < weather['Month']) & (weather['Month'] < 9)]
    print(f'\n: {summer}')
    MeanTemp = summer.groupby(['Year'], as_index=False).agg(MeanT=('t', 'mean'))
    HotSummerYear = MeanTemp[(MeanTemp['MeanT'] == MeanTemp['MeanT'].max())]['Year'].min()
    print(f'\nc) HotSummerYear: {HotSummerYear}')


def Task_d(weather):
    Compare = weather
    print(f'\n Compare\n: {Compare}')
    Compare['changes_t'] = Compare['t'].shift(-1)
    print(f'\n Compare\n: {Compare}')
    Compare['changes_t'][len(Compare['changes_t']) - 1] = 0
    print(f'\n Compare\n: {Compare}')
    Compare['changes_t'] = abs(abs(Compare['changes_t']) - abs(Compare['t']))
    print(f'\n Compare\n: {Compare}')
    Compare['changes_t'] = Compare['changes_t'].map(lambda x: abs(int(x)))
    print(f'\n Compare\n: {Compare}')
    dif=Compare['changes_t'].max()
    MaxDiffDate = Compare[(Compare['changes_t'] == Compare['changes_t'].max())]['Date'].max()
    print(f'\nd) MaxDiffDate: {MaxDiffDate} \n   difference: {dif}')
    

    
def main():
    weather = pd.read_csv('./weather.csv', ',')
    weather['Date'] = weather['Day']
    weather['Day'] = weather['Date'].map(lambda x: int(x[8:10]))
    weather['Year'] = weather['Date'].map(lambda x: int(x[0:4]))
    weather['Month'] = weather['Date'].map(lambda x: int(x[5:7]))
    Task_a(weather)
    Task_b(weather)
    Task_c(weather)
    Task_d(weather)

if __name__ == '__main__':
    main()
