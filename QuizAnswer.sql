cf1) ���(EMP) �÷� 
     EMPNO  -- ���                                    
	 ENAME  -- �̸�                                             
	 JOB    -- ����                                            
	 MGR    -- ������                                              
	 HIREDATE -- �Ի���                                         
	 SAL    -- �޿�                                             
	 COMM   -- Ŀ�̼�                                            
	 DEPTNO -- �μ���ȣ 

     cf2) �μ�(DEPT) �÷� 
     DEPTNO -- �μ���ȣ
	 DNAME  -- �μ��̸� 
	 LOC    -- �μ���ġ 

< ���� (SELECT) >

(1) �μ���ȣ�� 10���� �μ��� ��� �� �����ȣ, �̸�, ������ ����϶� 
select empno, ename, sal from emp where deptno = 10;

(2) �����ȣ�� 7369�� ��� �� �̸�, �Ի���, �μ���ȣ�� ����϶� 
select EMPNO,HIREDATE,DEPTNO from EMP WHERE EMPNO ='7369';

(3) �̸��� ALLEN �� ����� ��� ������ ����϶� 
select ENAME,EMPNO,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where ENAME='ALLEN';

(4) �Ի����� 81/05/01 �� ����� �̸�, �μ���ȣ, ������ ����϶� 
select ENAME,DEPTNO,SAL,HIREDATE from EMP where HIREDATE='81/05/01';	

(5) ������ MANAGER �� �ƴ� ����� ��� ������ ����϶� 
select EMPNO,ENAME,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where job !='MANAGER';   

(6) �Ի����� 81/04/02 ���Ŀ� �Ի��� ����� ������ ����϶� 
select ENAME,EMPNO,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where HIREDATE>='81/04/02';   

(7) �޿��� $800 �̻��� ����� �̸�, �޿�, �μ���ȣ�� ����϶� 
select ENAME,SAL,DEPTNO from EMP where SAL>='800';    
    
(8) �μ���ȣ�� 20�� �̻��� ����� ��� ������ ����϶� 
select ENAME,EMPNO,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where DEPTNO>='20'  

(9) �̸��� K�� �����ϴ� ������� ���� �̸��� ���� ����� �̸��� ����϶� 
select ename from emp where ename >'K';   
    
(10) �Ի����� 81/12/09 ���� ���� �Ի��� ������� ��� ������ ����϶� 
select ENAME,EMPNO,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where HIREDATE<'81/12/09';    

(11) �Ի��ȣ�� 7698���� �۰ų� ���� ������� �Ի��ȣ�� �̸��� ����϶�
select EMPNO,ENAME from EMP where EMPNO<='7698';   
     
(12) �Ի����� 81/04/02 ���� �ʰ� 82/12/09 ���� ���� ����� �̸�, ����, �μ���ȣ, �Ի��ȣ�� ����϶� 
select ENAME,SAL,DEPTNO,EMPNO,HIREDATE from EMP where HIREDATE>'81/04/02' or HIREDATE<'82/12/09';    

(13) �޿��� 1,600 ���� ũ�� $3,000 ���� ���� ����� �̸�, ����, �޿��� ����϶� 
select ENAME,JOB,SAL from EMP where SAL between 1600 and 3000;    

(14) �����ȣ�� 7654�� 7782 ���� �̿��� ����� �Ի��ȣ, �̸��� ����϶� 
select EMPNO, ENAME from EMP where not(EMPNO between 7654 and 7782);   

(15) �̸��� B�� J������ ��� ����� �̸��� ����϶� 
select ENAME from EMP where ENAME between 'B' and 'J';   

(16) �Ի����� 81�� �̿ܿ� �Ի��� ����� �Ի��ϰ� �̸��� ����϶� 
select HIREDATE, ENAME from EMP where not (HIREDATE like '81%');     
     
(17) ������ MANAGER�� SALESMAN�� ����� �̸��� ������ ����϶� 
select ENAME,JOB from EMP where JOB in('MANAGER','SALESMAN');     
     
(18) �μ���ȣ�� 20, 30���� ������ ��� ����� �̸�, �����ȣ, �μ���ȣ�� ����϶� 
select ENAME, EMPNO, DEPTNO from EMP where DEPTNO not in('20','30');    

(19) �̸��� S�� �����ϴ� ����� �����ȣ, �̸�, �Ի���, �μ���ȣ�� ����϶� 
select EMPNO, ENAME, HIREDATE, DEPTNO from EMP where ENAME like 'S%';    

(20) �Ի����� 81�⵵�� ����� �Ի���, �̸��� ����϶� 
select HIREDATE, ENAME from EMP where HIREDATE like '81%';     

(21) �̸� �� A�ڰ� �� �ִ� ����� �Ի��ȣ, �̸��� ����϶� 
select EMPNO, ENAME from EMP where ENAME like 'A%';     

(22) �̸��� S�� �����ϰ� ������ ���ڰ� T�� ����� �̸��� ����϶� 
select ENAME from EMP where ENAME like 'S%T';    

(23) �̸��� �� ��° ���ڰ� A�� ����� �̸��� ����϶� 
select ENAME from EMP where ENAME like '_A%';     
	 cf) �̸��� �� ��° ���ڰ� A�� ����� �̸��� ����϶� 
         select ENAME from EMP where ENAME like '__A%';

(24) Ŀ�̼��� NULL�� ����� �̸��� Ŀ�̼��� ����϶� 
select ENAME, COMM from EMP where COMM is null;     

(25) Ŀ�̼��� NULL�� �ƴ� ����� �̸��� Ŀ�̼��� ����϶� 
select ENAME, COMM from EMP where COMM is not null;     

(26) �μ���ȣ�� 30�� �μ��̰�, �޿��� $1,500 �̻��� ����� �̸�, �μ���ȣ, ������ ����϶�
select ENAME, DEPTNO, SAL from EMP where DEPTNO=30 and SAL>=1500;     

(27) �̸��� ù ���ڰ� K �� �����ϰų� �μ���ȣ�� 30�� ����� �����ȣ, �̸�, �μ���ȣ�� ����϶� 
select EMPNO, ENAME, DEPTNO from EMP where ENAME like 'A%' or DEPTNO=30;    

(28) �޿��� $1,500 �̻��̰�, �μ���ȣ�� 30���� ��� �� ������ 
      MANAGER�� ����� �޿�, �μ���ȣ, ������ ����϶� 
                                   
select SAL, EMPNO, JOB from EMP where SAL>=1500 and DEPTNO='30'and JOB='MANAGER';
(29) �μ���ȣ�� 30�� ����� �̸�,�����ȣ,�μ���ȣ�� �����ȣ�� ���� SORT(����)�϶�
select ENAME, EMPNO, DEPTNO from EMP where DEPTNO=30 order by DEPTNO;     
      
(30) �̸��� �޿��� �����͸� �޿��� ���� ������ SORT �϶� 
select ename, sal from emp order by sal desc;    

(31) �μ���ȣ�� ASCENDING SORT�� �� �޿��� ���� ��� ������ �̸�, �μ���ȣ, �޿��� ����϶� (��������)
select ENAME, DEPTNO, SAL from EMP order by DEPTNO;     

(32) �μ���ȣ�� DESCENDING SORT�� ��, ���� ������ ASCENDING SORT, �޿� ������ DESCENDING SORT�϶�  
select EMPNO, JOB, SAL from EMP order by DEPTNO,JOB asc, SAL desc;     
     