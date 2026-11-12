* 3.13 สร้างตัวแปร total (ผลรวมเกรด).
COMPUTE total = SUM(gradePrg1, gradePrg2).
EXECUTE.

* 3.15 สร้างตัวแปร sex (สลับรหัสเพศ).
RECODE gender (1=2) (2=1) INTO sex.
EXECUTE.

* 3.16 สร้างตัวแปร GPA1 (เรียงลำดับ GPA จากน้อยไปมาก).
AUTORECODE VARIABLES=GPA
  /INTO GPA1
  /PRINT.

* 3.17 สร้างตัวแปร AGE1 (นับคนอายุ 20 ปี — รันก่อนที่ age จะโดนเขียนทับ).
COUNT AGE1 = age(20).
EXECUTE.

* 3.18 สร้างตัวแปร Rgpa (จัดอันดับ GPA แยกตามเพศ).
RANK VARIABLES=GPA (A) BY gender
  /RANK
  /PRINT=YES
  /TIES=MEAN.

* 3.14 แปลงค่าในตัวแปร age เดิม (ย้ายมาไว้ท้ายสุดเพื่อไม่ให้กระทบข้อ 3.17).
RECODE age (Lowest thru 18=1) (19 thru 22=2) (23 thru Highest=3).
EXECUTE.