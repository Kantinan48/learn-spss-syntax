* ============================================================================.
* กลุ่มที่ 2: Work 3.3 (กรองข้อมูล 4 เงื่อนไข — คลุมดำรันทีละข้อเพื่อแคปภาพ)
* ============================================================================.

* 3.3 (1) เลือกเฉพาะเพศหญิง (gender=2) และอายุเท่ากับ 18 (age=18).
USE ALL.
COMPUTE filter_$=(gender = 2 & age = 18).
VARIABLE LABELS filter_$ 'gender = 2 & age = 18 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* 3.3 (2) เลือกคนที่มีอายุที่อยู่ระหว่าง 20-24 ปี.
USE ALL.
COMPUTE filter_$=(age >= 20 & age <= 24).
VARIABLE LABELS filter_$ 'age >= 20 & age <= 24 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* 3.3 (3) เลือกเพศชาย (gender=1) หรือมีอายุมากกว่า 24 ปี (age > 24).
USE ALL.
COMPUTE filter_$=(gender = 1 | age > 24).
VARIABLE LABELS filter_$ 'gender = 1 | age > 24 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* 3.3 (4) เลือก Case ที่ 10 ถึง Case 20.
USE ALL.
COMPUTE filter_$=(RANGE($CASENUM, 10, 20)).
VARIABLE LABELS filter_$ 'Case 10 to 20 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* ============================================================================.
* Work 3.4: สร้างตัวแปร SD_Age และ Max_GPA แยกตามเพศ (คลุมดำรันต่อท้ายได้เลย)
* ============================================================================.
FILTER OFF.
USE ALL.
DELETE VARIABLES filter_$.

AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=gender
  /SD_Age=SD(age)
  /Max_GPA=MAX(GPA).
EXECUTE.