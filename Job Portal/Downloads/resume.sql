  
CREATE TABLE  ADMINLOGIN  ( USERNAME  varchar(20),  PASSWORD  varchar(20));    
  
CREATE TABLE CLIENT(
CLIENTID varchar( 30 ) NOT NULL ,
CLNAME VARCHAR( 50 ) ,
ADDRESS varchar( 50 ) ,
CITY varchar( 30 ) ,
STATE varchar( 30 ) ,
NATION varchar( 30 ) ,
NOOFBRANCH varchar( 5 ) ,
CLTYPE varchar( 100 ) ,
CONTPHNO varchar( 15 ) ,
EXT varchar( 10 ) ,
COMDESC varchar( 200 ) ,
CTPERSON varchar( 40 ) ,
WEBSITE varchar( 40 ) ,
PASS varchar( 20 )
) ;

  CREATE TABLE  CLIENT111  ( USERID  varchar(30),  RESUME  varchar(200));    

  CREATE TABLE  CONSULTANT  ( CONID  varchar(20),  PASS  varchar(20)); 
CREATE TABLE EDUCATION(
QUL varchar( 20 ) ,
POSTG varchar( 20 ) ,
PUN VARCHAR( 50 ) ,
PPER varchar( 5 ) ,
GRADU varchar( 20 ) ,
GUN varchar( 50 ) ,
GPER varchar( 5 ) ,
INTER varchar( 20 ) ,
INTERCERTNO varchar( 10 ) ,
SSC varchar( 20 ) ,
SSCCERTNO varchar( 10 ) NOT NULL ,
OTHERQUL VARCHAR( 20 ) ,
.OTHERCERT varchar( 20 ) ,
USERID varchar( 30 ) NOT NULL
);


  CREATE TABLE  EMPREG  ( USERID  varchar(30) NOT NULL  , 
PASS  VARCHAR(10),  
FNAME  varchar(20),  
MNAME  varchar(20), 
 LNAME  varchar(20),   
  PRSTADD  varchar(50), 
 PARTADD  varchar(50),
  PIN  varchar(8),  
CITY  VARCHAR(20),  STATE  varchar(20),  
COUNTRY  varchar(20),  CTNTNOOFICE  VARCHAR(15),  EXTNO  varchar(5), 
 CTNTNORESNO  varchar(15),  
PASSPORTNO  varchar(20),  
CARRABJ  varchar(200),  MOBILENO  varchar(15),  GENDER  varchar(10),filename varchar(200));    

  CREATE TABLE  EXPERIENCE  ( USERID  varchar(30),  EXPE  varchar(6),  FIEL  varchar(100), 
 PRESENTWORKING  varchar(100),  OFFORONSITE  varchar(5) 
  ,  EXPFROM  varchar(20),  EXPTO  varchar(20),  PRESENTSAL  varchar(20),  
   EXPTSAL  varchar(20),  WWW  varchar(40));    

  CREATE TABLE  JOBORDER  ( JOBTITLE  varchar(50),  JOBCODE  varchar(20) NOT NULL  ,  SKILL1  varchar(30),  SKILL2  varchar(30),  
SKILL3  varchar(30),  SKILL4  varchar(30),  SKILL5  varchar(30),  SKILL6  varchar(30), 
 NOYEXP  varchar(10),  RELDATE  varchar(20),  CLODATE  varchar(20),   
  CLIENTID  varchar(30));    

  CREATE TABLE  JOBS  ( JOBTITLE  varchar(50),  JOBCODE  varchar(20),  SKILL  varchar(50),  NOYEXP  varchar(10),  RELDATE  varchar(20),  
CLODATE  VARCHAR(20),  CLIENTID  varchar(30));    

  CREATE TABLE  PROJECTS  ( USERID  varchar(30),  PROJTITLE  varchar(200),  
   PROJDESC  varchar(200),  USEDSKILLS  varchar(200),  TEAMSIZE  varchar(3 
  ),  ENVRN  varchar(200),  ROLLS  varchar(200));   

  CREATE TABLE  RESUME  ( USERID  varchar(30),  RESUME  varchar(20));   

  CREATE TABLE SKILLS(
USERID varchar( 30 ) ,
SKILL1 varchar( 20 ) ,
SKILL2 varchar( 20 ) ,
SKILL3 varchar( 20 ) ,
SKILL4 varchar( 20 ) ,
SKILL5 VARCHAR( 20 ) ,
SKILL6 varchar( 20 ) ,
OTHERS varchar( 40 ) ,
DESCOFSKILLS varchar( 200 ) ,
TOTEXP varchar( 20 )
) ;