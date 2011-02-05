lim = 600851475143
i = 2
while lim > 1:
    if lim % i == 0:
        lim = lim / i
        print i
    i += 1
