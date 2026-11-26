* ============================================================================.
* Lab 4: สร้างตารางข้อมูลใหม่ (18 Cases)
* ============================================================================.
NEW FILE.

DATA LIST FREE /
  time (F3.0)
  group (F1.0)
  level (F1.0).
BEGIN DATA.
101 1 3
64 2 3
81 1 2
99 1 1
84 1 1
98 2 2
100 2 2
111 2 2
85 2 3
63 2 3
64 1 3
71 1 2
78 2 2
60 1 1
132 1 1
75 2 1
59 1 2
75 2 3
END DATA.

VARIABLE LEVEL time (SCALE) / group level (NOMINAL).
EXECUTE.

* ============================================================================.
* ข้อ 1: สร้างตารางแจกแจงความถี่ของตัวแปร group
* (เมนู Analyze > Descriptive Statistics > Frequencies)
* ============================================================================.
FREQUENCIES VARIABLES=group
  /ORDER=ANALYSIS.

* ============================================================================.
* ข้อ 2: หาค่ามัธยฐาน (Median) และความแปรปรวน (Variance) ของ time แยกตาม group
* (เมนู Analyze > Compare Means > Means)
* ============================================================================.
MEANS TABLES=time BY group
  /CELLS=MEAN COUNT STDDEV MEDIAN VARIANCE.

* ============================================================================.
* ข้อ 3: หาจำนวนและร้อยละของตัวแปร group=1 และ level=3 ของตัวแปร group ทั้งหมด
* (เมนู Analyze > Descriptive Statistics > Crosstabs)
* ============================================================================.
CROSSTABS
  /TABLES=group BY level
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW
  /COUNT ROUND CELL.