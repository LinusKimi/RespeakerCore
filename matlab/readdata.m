clear all;
clc ;
fs = 48e3;

filename = '../python/Oldboy.wav';
y = audioread(filename,'double');

ch3 = y(:,3);
ch6 = y(:,6);

[r, lags] = xcorr(ch6, ch3);
[index, data] = max(r);
phase_def = lags(data);

dt = phase_def / fs;
dist = dt * 340
