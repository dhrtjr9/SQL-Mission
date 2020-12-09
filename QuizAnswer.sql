cf1) 사원(EMP) 컬럼 
     EMPNO  -- 사번                                    
	 ENAME  -- 이름                                             
	 JOB    -- 직업                                            
	 MGR    -- 관리자                                              
	 HIREDATE -- 입사일                                         
	 SAL    -- 급여                                             
	 COMM   -- 커미션                                            
	 DEPTNO -- 부서번호 

     cf2) 부서(DEPT) 컬럼 
     DEPTNO -- 부서번호
	 DNAME  -- 부서이름 
	 LOC    -- 부서위치 

< 문제 (SELECT) >

(1) 부서번호가 10번인 부서의 사람 중 사원번호, 이름, 월급을 출력하라 
select empno, ename, sal from emp where deptno = 10;

(2) 사원번호가 7369인 사람 중 이름, 입사일, 부서번호를 출력하라 
select EMPNO,HIREDATE,DEPTNO from EMP WHERE EMPNO ='7369';

(3) 이름이 ALLEN 인 사람의 모든 정보를 출력하라 
select ENAME,EMPNO,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where ENAME='ALLEN';

(4) 입사일이 81/05/01 인 사원의 이름, 부서번호, 월급을 출력하라 
select ENAME,DEPTNO,SAL,HIREDATE from EMP where HIREDATE='81/05/01';	

(5) 직업이 MANAGER 가 아닌 사람의 모든 정보를 출력하라 
select EMPNO,ENAME,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where job !='MANAGER';   

(6) 입사일이 81/04/02 이후에 입사한 사원의 정보를 출력하라 
select ENAME,EMPNO,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where HIREDATE>='81/04/02';   

(7) 급여가 $800 이상인 사람의 이름, 급여, 부서번호를 출력하라 
select ENAME,SAL,DEPTNO from EMP where SAL>='800';    
    
(8) 부서번호가 20번 이상인 사원의 모든 정보를 출력하라 
select ENAME,EMPNO,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where DEPTNO>='20'  

(9) 이름이 K로 시작하는 사람보다 높은 이름을 가진 사람의 이름을 출력하라 
select ename from emp where ename >'K';   
    
(10) 입사일이 81/12/09 보다 먼저 입사한 사람들의 모든 정보를 출력하라 
select ENAME,EMPNO,SAL,JOB,HIREDATE,COMM,DEPTNO from EMP where HIREDATE<'81/12/09';    

(11) 입사번호가 7698보다 작거나 같은 사람들의 입사번호와 이름을 출력하라
select EMPNO,ENAME from EMP where EMPNO<='7698';   
     
(12) 입사일이 81/04/02 보다 늦고 82/12/09 보다 빠른 사원의 이름, 월급, 부서번호, 입사번호를 출력하라 
select ENAME,SAL,DEPTNO,EMPNO,HIREDATE from EMP where HIREDATE>'81/04/02' or HIREDATE<'82/12/09';    

(13) 급여가 1,600 보다 크고 $3,000 보다 작은 사람의 이름, 직업, 급여를 출력하라 
select ENAME,JOB,SAL from EMP where SAL between 1600 and 3000;    

(14) 사원번호가 7654와 7782 사이 이외의 사원의 입사번호, 이름을 출력하라 
select EMPNO, ENAME from EMP where not(EMPNO between 7654 and 7782);   

(15) 이름이 B와 J사이의 모든 사원의 이름을 출력하라 
select ENAME from EMP where ENAME between 'B' and 'J';   

(16) 입사일이 81년 이외에 입사한 사람의 입사일과 이름를 출력하라 
select HIREDATE, ENAME from EMP where not (HIREDATE like '81%');     
     
(17) 직업이 MANAGER와 SALESMAN인 사람의 이름과 직업을 출력하라 
select ENAME,JOB from EMP where JOB in('MANAGER','SALESMAN');     
     
(18) 부서번호가 20, 30번을 제외한 모든 사람의 이름, 사원번호, 부서번호를 출력하라 
select ENAME, EMPNO, DEPTNO from EMP where DEPTNO not in('20','30');    

(19) 이름이 S로 시작하는 사원의 사원번호, 이름, 입사일, 부서번호를 출력하라 
select EMPNO, ENAME, HIREDATE, DEPTNO from EMP where ENAME like 'S%';    

(20) 입사일이 81년도인 사람의 입사일, 이름을 출력하라 
select HIREDATE, ENAME from EMP where HIREDATE like '81%';     

(21) 이름 중 A자가 들어가 있는 사람만 입사번호, 이름을 출력하라 
select EMPNO, ENAME from EMP where ENAME like 'A%';     

(22) 이름이 S로 시작하고 마지막 글자가 T인 사람의 이름을 출력하라 
select ENAME from EMP where ENAME like 'S%T';    

(23) 이름의 두 번째 문자가 A인 사람의 이름을 출력하라 
select ENAME from EMP where ENAME like '_A%';     
	 cf) 이름의 세 번째 문자가 A인 사람의 이름을 출력하라 
         select ENAME from EMP where ENAME like '__A%';

(24) 커미션이 NULL인 사람의 이름과 커미션을 출력하라 
select ENAME, COMM from EMP where COMM is null;     

(25) 커미션이 NULL이 아닌 사람의 이름과 커미션을 출력하라 
select ENAME, COMM from EMP where COMM is not null;     

(26) 부서번호가 30번 부서이고, 급여가 $1,500 이상인 사람의 이름, 부서번호, 월급을 출력하라
select ENAME, DEPTNO, SAL from EMP where DEPTNO=30 and SAL>=1500;     

(27) 이름의 첫 글자가 K 로 시작하거나 부서번호가 30인 사람의 사원번호, 이름, 부서번호를 출력하라 
select EMPNO, ENAME, DEPTNO from EMP where ENAME like 'A%' or DEPTNO=30;    

(28) 급여가 $1,500 이상이고, 부서번호가 30번인 사원 중 직업이 
      MANAGER인 사람의 급여, 부서번호, 직업을 출력하라 
                                   
select SAL, EMPNO, JOB from EMP where SAL>=1500 and DEPTNO='30'and JOB='MANAGER';
(29) 부서번호가 30인 사람의 이름,사원번호,부서번호를 사원번호로 오름 SORT(정렬)하라
select ENAME, EMPNO, DEPTNO from EMP where DEPTNO=30 order by DEPTNO;     
      
(30) 이름과 급여의 데이터를 급여가 많은 순으로 SORT 하라 
select ename, sal from emp order by sal desc;    

(31) 부서번호로 ASCENDING SORT한 후 급여가 많은 사람 순으로 이름, 부서번호, 급여를 출력하라 (오름차순)
select ENAME, DEPTNO, SAL from EMP order by DEPTNO;     

(32) 부서번호를 DESCENDING SORT한 후, 직업 순으로 ASCENDING SORT, 급여 순으로 DESCENDING SORT하라  
select EMPNO, JOB, SAL from EMP order by DEPTNO,JOB asc, SAL desc;     
     