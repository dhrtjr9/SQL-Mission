< ���� (FUNCTION) >

(1) EMP Table���� �̸�, �޿�, Ŀ�̼� �ݾ�, �Ѿ�(sal+comm)�� ���Ͽ� �Ѿ��� 
    ���� ������ ����϶�. ��, Ŀ�̼��� NULL�� ����� �����Ѵ�. 

select ENAME,SAL,COMM,(sal+comm) from EMP
where (sal+comm) is not null order by (sal+comm) desc;
 
(2) 10�� �μ��� ��� ����鿡�� �޿��� 13%�� ���ʽ��� �����ϱ�� �Ͽ���.
    �̸�, �޿�, ���ʽ� �ݾ�, �μ� ��ȣ�� ����϶�.

select ENAME,SAL,(SAL*0.13)"���ʽ��ݾ�",DEPTNO from EMP
where DEPTNO=10;

(3) 30�� �μ��� ������ ����Ͽ� �̸�, �μ���ȣ, �޿�, ������ ����϶�.
    ��, ������ �޿��� 150%�� ���ʽ��� �����Ѵ�. 

select ENAME, DEPTNO, SAL, SAL*12+SAL*1.5 "����" from EMP
where DEPTNO= 30;
   
(4) �μ� ��ȣ�� 20�� �μ��� �ð��� �ӱ��� ����Ͽ� ����϶�.
    ��, 1���� �ٹ��ϼ��� 12���̰�, 1�� �ٹ��ð��� 5�ð��̴�.
    ��¾���� �̸�, �޿�, �ð��� �ӱ�(�Ҽ����� 1��° �ڸ����� �ݿø�)
    �� ����϶�. 
select ename, sal, round(sal/60) "�ð��� �ӱ�" 
from emp 
where deptno=20;

(5) �޿��� $1,500 ���� $3,000 ������ ����� �޿��� 15%�� ȸ��� �����ϱ�� �Ͽ���.
    �̸� �̸�, �޿�, ȸ��(-2�ڸ����� �ݿø�)�� ����϶�.
select ENAME,SAL,ROUND(SAL*0.15,2)"ȸ��" from EMP
where SAL>=1500 and SAL<=3000;
	   
(6) �޿��� $2,000 �̻��� ��� ����� �޿��� 15%�� ������� ����� �Ͽ���. 
    �̸�, �޿�, ������(�Ҽ��� ���� ����)�� ����϶�.
select ENAME, SAL, round(SAL*0.15)"�������" from EMP
where SAL>=2000;

(7) �Ի��Ϻ��� ���ݱ����� ��¥���� ����϶�.
    �μ� ��ȣ, �̸�, �Ի���, ������, �ٹ��ϼ�(�Ҽ��� ���� ����), 
	�ٹ����(�ݿø�),�ٹ�����(30�� ����,�ݿø�), �ٹ��ּ�(�ݿø�)�� ����϶�.

select DEPTNO,ENAME,HIREDATE,SYSDATE,TRUNC(SYSDATE-HIREDATE,0)"�ٹ��ϼ�",
ROUND(MONTHS_BETWEEN(SYSDATE,HIREDATE)/12)"�ٹ����",
TRUNC(MONTHS_BETWEEN(SYSDATE,HIREDATE),0)
"�ٹ�����",ROUND((SYSDATE-HIREDATE)/7)"�ٹ��ּ�"
from EMP;

(8) ��� ����� �Ǽ��ɾ��� ����Ͽ� ����϶�.
    ��, �޿��� ���� ������ �̸�, �޿�, �Ǽ��ɾ��� ����϶�
    (�Ǽ��ɾ��� �޿��� ���� 10%�� ������ �� �ݾ�)

select ENAME,SAL,SAL-(SAL*0.1)"�Ǽ��ɾ�" from EMP
order by SAL desc;

(9) �Ի��Ϸκ��� 90���� ���� ���� ��� �̸�, �Ի���, 90�� ���� ��, �޿��� ����϶�.

select ENAME,HIREDATE,HIREDATE+90"�Ի�90����",SAL 
from EMP
where SYSDATE-HIREDATE>=90;

(10) �Ի��Ϸκ��� 6������ ���� ���� �Ի���, 6���� ���� ��¥, �޿��� ����϶�.
select HIREDATE, ADD_MONTHS(HIREDATE, 6) "6���� ��", SAL from EMP;

(11) �Ի��� ���� �ٹ��ϼ��� ����Ͽ� �μ���ȣ, �̸�, �Ի���, �ٹ��ϼ��� ����϶�.
select ENAME,HIREDATE,TRUNC(MONTHS_BETWEEN(SYSDATE,HIREDATE),0)from EMP;

(12) ��� ����� 60���� ���� ���� 'MONDAY'�� �� ��, �� ��, �� �� �ΰ��� ���Ͽ�
     �̸�, �Ի���, 'MONDAY'�� ����϶�.


(13) �Ի��Ϸκ��� ���ñ����� �ϼ��� ���Ͽ� �̸�, �Ի���, �ٹ��ϼ�(�ݿø�)�� 
     ����϶�.
select ENAME,HIREDATE,TRUNC(SYSDATE-HIREDATE) from EMP;

(14) �Ի����� '1996�� 5�� 14��'�� ���·� �̸�, �Ի����� ����϶�.
select ENAME, to_char(HIREDATE, 'YYYY"��" MM"��" DD"��"') "�Ի���" from EMP;

(15) �̸��� ���ڼ��� 6�� �̻��� ����� �̸��� �տ��� 3�ڸ� ���Ͽ� 
     �ҹ��ڷ� �̸����� ����϶�.

select LOWER(SUBSTR(ENAME,1,3)) from EMP 
where LENGTH(ENAME)>=6;

(16) 10�� �μ� ������ ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.

select round(AVG(SAL), 1) "���",
MAX(SAL)"�ְ�" , MIN(SAL)"����" ,COUNT(*)"�ο���"
from EMP where DEPTNO = 10;

(17) �� �μ��� �޿��� ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
     (�μ���ȣ�� ���)
select DEPTNO, TRUNC(avg(SAL))"�������", MAX(SAL)"�����ְ�", MIN(SAL) "��������", COUNT(EMPNO) "�ο���" 
from EMP group by DEPTNO;

(18) �� �μ��� ���� ������ �ϴ� ����� �ο����� ���Ͽ� �μ���ȣ, ������, �ο����� ����϶�.
select DEPTNO,JOB,COUNT(EMPNO) "�ο���" from EMP group by DEPTNO,JOB order by DEPTNO;

(19) ���� ������ �ϴ� ����� ���� 4�� �̻��� ������ �ο����� ����϶�.
select DEPTNO,JOB,COUNT(EMPNO) "�ο���" from EMP group by DEPTNO,JOB order by DEPTNO;   

(20) �� �μ��� ��� ����, ��ü ����, �ְ� ����, ���� ������ ���Ͽ� ��� ������ 
     ���� ������ ����϶�. (�μ���ȣ�� ���)
select DEPTNO, TRUNC(avg(SAL))"��� ����",sum(SAL)"��ü ����", MAX(SAL)"�ְ� ����",MIN(SAL)"���� ����",DEPTNO
from EMP group by DEPTNO order by 1;  



