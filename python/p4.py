ns = [[x * y for x in range(100, 999)] for y in range(100, 999)]
print max([n for sub in ns for n in sub if str(n) == str(n)[::-1]])
