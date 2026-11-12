DATA LIST FREE /
  gender (F1.0)
  age (F8.0)
  status (F1.0)
  gradePrg1 (F1.0)
  gradePrg2 (F1.0)
  GPA (F5.2).
BEGIN DATA.
1 18 1 2 4 2.00
2 17 0 4 0 2.59
1 16 0 3 2 3.45
1 20 0 2 1 1.97
1 22 0 3 1 2.00
1 25 1 3 3 3.32
1 19 1 3 4 3.43
1 19 1 4 4 3.78
1 17 0 1 2 2.00
1 17 0 2 3 2.67
2 18 0 2 3 2.00
2 19 0 2 4 2.99
2 21 1 4 3 2.78
2 21 1 4 3 3.25
1 19 1 1 0 1.78
2 18 1 1 2 2.76
1 17 1 0 3 1.98
2 18 1 3 4 3.01
2 19 1 3 3 3.05
2 18 0 3 2 2.86
1 18 0 1 2 1.89
2 20 0 1 3 2.43
1 22 1 2 2 2.39
1 21 1 2 3 2.55
2 25 1 3 4 2.89
2 24 1 3 3 3.11
2 19 0 4 4 2.76
2 20 0 1 3 2.04
1 18 0 0 2 2.07
1 17 0 4 4 3.01
2 19 1 1 2 1.81
2 19 1 4 3 2.67
2 21 1 1 2 2.23
1 20 1 1 2 2.42
1 24 1 2 3 2.60
1 19 0 2 2 2.45
1 19 0 2 4 2.32
2 21 0 2 3 2.25
1 18 0 3 3 3.14
2 17 0 3 4 3.05
END DATA.

FORMATS GPA (F5.2).

MISSING VALUES gender status gradePrg1 gradePrg2 (9).

VALUE LABELS
  gender 1 'male' 2 'female'
  /status 0 'Normal' 1 'Night'
  /gradePrg1 gradePrg2 4 'A' 3 'B' 2 'C' 1 'D' 0 'F'.

VARIABLE LEVEL
  gender status (NOMINAL)
  /gradePrg1 gradePrg2 (ORDINAL)
  /age GPA (SCALE).

EXECUTE.