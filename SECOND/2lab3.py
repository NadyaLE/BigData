import os
import pandas as pd
import numpy as np


def main():
    FirstSample = pd.Series([428, 300, 250, 578, 492, 204, 245, 420, 760, 363, 600, 483, 711, 265,
                              572, 350, 652, 460, 340, 670, 565, 750, 452])
    Task_1(FirstSample)
    Task_2(FirstSample)
    Task_3(FirstSample)
    SeriesX = pd.Series([428, 300, 250, 578, 492, 204, 245, 420, 760, 363, 600, 483, 711, 265, 572,
                          350, 652, 460, 340, 670, 565, 750, 452])
    SeriesY = pd.Series([21, 33, 43, 71, 85, 17, 38, 43, 53, 76, 33, 16, 24, 59, 65, 73, 45, 63, 53, 43,
                          58, 28, 37])
    Task_4(SeriesX, SeriesY)
    Task_5(SeriesX, SeriesY)


def Task_1(value):
    print('1) Mean: {0:.{1}f}'.format(value.mean(), 2))

def Task_2(value):
    print(f'2) Median: {value.median()}')

def Task_3(value):
    print('3) Std: {0:.{1}f}'.format(value.std(), 2))

def Task_4(x, y):
    print('4) Cov: {0:.{1}f}'.format(x.cov(y), 4))

def Task_5(x, y):
    print('5) Corr: {0:.{1}f}'.format(x.corr(y), 4))


if __name__ == '__main__':
    main()
