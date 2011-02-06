puts (1..999).inject(0) {|a, b| if (b % 3 == 0 || b % 5 == 0) then a+b else a end }
