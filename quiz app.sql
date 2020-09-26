/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.6-MariaDB : Database - quiz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`quiz` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `quiz`;

/*Table structure for table `acp` */

DROP TABLE IF EXISTS `acp`;

CREATE TABLE `acp` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `acp` */

insert  into `acp`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Which of the following are themselves a collection of different data types?','string','structures','char','All ','structures'),
(2,'2. Which of the following is not possible statically in C?','Jagged Array','Rectangular Array','Cuboidal Array','Multidimensional Arr','Jagged Array'),
(3,'3. Which data type can be stored in register?','int','float','double','All of the above','All of the above'),
(4,'4. Which of the following can never be sent by call-by-value?','Variable','Array','Structures','Both Array and Struc','Array'),
(5,'5. Which of the following functions returns a pointer to a string representing the date and time stored in a structure?','\"ctime()\"','\"time()\"','\"asctime()\"','\"localtime()\"','\"asctime()\"'),
(6,'6. In the absence of a exit condition in a recursive function, the following error is given __________','Compile time error','Run time error\r\n','Logical error','No error','Run time error'),
(7,'7. The function computes the hyperbolic cosine of x.','\"cos(x)\"','\"cosine(x)\r\n\"','\"cosh(x)\"','\"cosineh(x)\"','\"cosh(x)\"'),
(8,'8.  Name the function that breaks a floating-point number into a normalized fraction and an integral power of 2.','\"exp()\"','\"frexp()\"','\"Idexp()\"','\"modf()\"','\"frexp()\"'),
(9,'9. Which of the following may create problem in the typedef program?',';','printf/scanf','Arithmetic operators','All of the mentioned','All of the mentioned'),
(10,'10. Which of the following is the correct syntax to declare a 3 dimensional array using pointers?','\"char *a[][];\"','\"char **a[];\"','\"char ***a;\"','\"all of the mentione','\"char *a[][];\"');

/*Table structure for table `adbms` */

DROP TABLE IF EXISTS `adbms`;

CREATE TABLE `adbms` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `adbms` */

insert  into `adbms`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Which of the following makes the transaction permanent in the database?','View','Commit','Rollback','Flashback','Commit'),
(2,'2. Which of the join operations do not preserve non matched tuples?','Left outer join','Right outer join','Inner join','Natural join','Inner join'),
(3,'3. What type of join is needed when you wish to include rows that do not have matching values?','Equi-join','Natural join','Outer join','All of the mentioned','Outer join'),
(4,'4. A __________ is a special kind of a store procedure that executes in response to certain action on the table like insertion, deletion or updation of data.','Procedures','Triggers','Functions','None of the mentione','Triggers'),
(5,'5. Which of the following is not an integrity constraint?','Not null','Positive','Unique','Check ‘predicate’','Positive'),
(6,'6. Which of the following creates a virtual relation for storing the query?','Function','View','Procedure','None of the mentione','View'),
(7,'7. Aggregate functions are functions that take a ___________ as input and return a single value.','Collection of values','Single value','Aggregate value','Both Collection of v','Collection of values'),
(8,'8. All aggregate functions except _____ ignore null values in their input collection.','\"Count(attribute)\"','\"Count(*)\"','\"Avg\"','\"Sum\"','\"Count(*)\"'),
(9,'9. Which of the following is used to input the entry and give the result in a variable in a procedure?','Put and get','Get and put','Out and In','In and out','In and out'),
(10,'10. The intersection operator is used to get the _____ tuples.','Different','Common','All','Repeating','Common');

/*Table structure for table `ajava` */

DROP TABLE IF EXISTS `ajava`;

CREATE TABLE `ajava` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `ajava` */

insert  into `ajava`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. All classes in Java are inherited from which class?','java.lang.class','java.class.inherited','java.class.object','java.lang.Object','java.lang.Object'),
(2,'2. In order to restrict a variable of a class from inheriting to subclass, how variable should be declared?','Protected','Private','Public','Static','Private'),
(3,'3. Which of the following is a super class of all exception type classes?','Catchable','RuntimeExceptions','String','Throwable','Throwable'),
(4,'4. When does Exceptions in Java arises in code sequence?','Run Time','Compilation Time','Can Occur Any Time','None of the mentione','None of the mentione'),
(5,'5. Which of these is a wrapper around everything associated with a reply from an http server?','HTTP','HttpResponse','HttpRequest','httpserver','HttpResponse'),
(6,'6. Which of these packages contains all the classes and methods required for even handling in Java?','java.applet.event',' java.awt','java.event\r\n','java.awt.event','java.awt.event'),
(7,'7. Which of these class is super class of all the events?','EventObject','EventClass','ActionEvent','ItemEvent','EventObject'),
(8,'8. Which of these methods will respond when you click any button by mouse?','\"mouseClicked()\"','\"mouseEntered()\"','\"mousePressed()\"','all of the mentioned','all of the mentioned'),
(9,'9. Which of the below is not a session tracking method?','URL rewriting','History','Cookies','SSL sessions','History'),
(10,'10. “out” is implicit object of which class?','javax.servlet.jsp.Pr','javax.servlet.jsp.Se','javax.servlet.jsp.Se','javax.servlet.jsp.Js','javax.servlet.jsp.Js');

/*Table structure for table `be` */

DROP TABLE IF EXISTS `be`;

CREATE TABLE `be` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `be` */

insert  into `be`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Batteries are generally connected in______','Series','Parallel','Both','None','Series'),
(2,'2.  A __________ gate gives the output as 1 only if all the inputs signals are 1.','AND','OR','EXOR','NOR','AND'),
(3,'3. Materials which easily allow the passage of electric current are known as ______','Insulators','Conductors','Diselectrics','Semi-Conuctors','Conductors'),
(4,'4. The universal gate that can be used to implement any Boolean expression is __________','NAND','EXOR','OR','AND','NAND '),
(5,'5. The reciprocal of resistivity is________','Conductance','Resistance','Conductivity','Impedance','Conductivity'),
(6,'6. For high frequencies, capacitor acts as _________','Open Circuit','Short Circuit','Amplifier','Rectifier','Short Circuit'),
(7,'7. A field that spreads outwards in all directions is __________','Linear','Radial','Weak','Strong','Radial'),
(8,'8. Which, among the following is the correct expression for an electric field?','E=F/C','E=F*C','E=F/Q','E=F*Q','E=F/Q'),
(9,'9. The expression of an EXOR gate is ____________','A’B+AB’','AB+A’B’','A+A.B','A’+B’','A’B+AB’'),
(10,'10. Which of the following correctly describes the distributive law.','( A+B)(C+D)=AB+CD','(A+B).C=AC+BC','(AB)(A+B)=AB','(A.B)C=AC.AB','(A+B).C=AC+BC');

/*Table structure for table `c++` */

DROP TABLE IF EXISTS `c++`;

CREATE TABLE `c++` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `c++` */

insert  into `c++`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Which of the following is called insertion/put to operator?','<<','>>','<','>','<<'),
(2,'2. Which of the following escape sequence represents carriage return?','\\r','\\n','\\n\\r','\\c','\\r'),
(3,'3. Which function is used to write a single character to console in C++?','cout.put(ch)','cout.putline(ch)','write(ch)','printf(ch)','cout.put(ch)'),
(4,'4. Which concept allows you to reuse the written code?','Encapsulation','Abstraction','Inheritance','Polymorphism','Inheritance'),
(5,'5. Which of the following cannot be a friend?','Function','Class','Object','Operator function','Object'),
(6,'6. Which of the following is an abstract data type?','int','float','class','string','class'),
(7,'7. What we can’t do on a void pointer?','pointer arithmetic','pointer functions','pointer objects','pointer functions & ','pointer arithmetic'),
(8,'8. Where does keyword ‘friend’ should be placed?','function declaration','function definition','main function','block function','function declaration'),
(9,'9. Which of the following can derived class inherit?','members','functions','both members & funct','classes','both members & funct'),
(10,'10. Which is used to keep the call by reference value as intact?','static','const','absolute','virtual','const');

/*Table structure for table `cmt` */

DROP TABLE IF EXISTS `cmt`;

CREATE TABLE `cmt` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `cmt` */

insert  into `cmt`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. The video devices are connected to ______ BUS.','PCI','USB','HDMI','SCSI','SCSI'),
(2,'2. IDE disk is connected to the PCI BUS using ______ interface.','ISA','ISO','ANSI','IEEE','ISA'),
(3,'3. The serial port is used to connect basically _____ and processor.','I/O devices','Speakers','Printer','Monitor','I/O devices'),
(4,'4. The PROM is more effective than ROM chips in regard to _______','Cost','Speed of operation','Memory management','Both Cost and Speed ','Both Cost and Speed '),
(5,'5. A USB pipe is a ______ channel.','Simplex','Half-Duplex','Full-Duplex','Both Simplex and Ful','Full-Duplex'),
(6,'6. The computer architecture aimed at reducing the time of execution of instructions is ________','CISC','RISC','ISA','ANNA','RISC'),
(7,'7. In DMA transfers, the required signals and addresses are given by the __________','Processor','Device drivers','DMA controllers','The program itself','DMA controllers'),
(8,'8. A hard disk with 20 surfaces will have _____ heads.','10','50','1','20','20'),
(9,'9. The set of corresponding tracks on all surfaces of a stack of disks form a ______','Cluster','Cylinder','Group','Set','Cylinder'),
(10,'10. IDE stands for _________','Integrated Device El','International Device','Industrial Decoder E','International Decode','Integrated Device El');

/*Table structure for table `cn` */

DROP TABLE IF EXISTS `cn`;

CREATE TABLE `cn` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `cn` */

insert  into `cn`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. In the layer hierarchy as the data packet moves from the upper to the lower layers, headers are ___________','Added','Removed','Rearranged','Modified','Added'),
(2,'2. Communication between a computer and a keyboard involves ______________ transmission.','Automatic','Half-duplex','Full-duplex','Simplex','Simplex'),
(3,'3. A __________ is a device that forwards packets between networks by processing the routing information included in the packet.','firewall','bridge','router','hub','router'),
(4,'4. Which transmission media provides the highest transmission speed in a network?','coaxial cable','twisted pair cable','optical fiber','electrical cable','optical fiber'),
(5,'5. The physical layer translates logical communication requests from the ______ into hardware specific operations.','data link layer','network layer','trasnport layer','application layer','data link layer'),
(6,'6. Wireless transmission of signals can be done via ___________','radio waves','microwaves','infrared','all of the mentioned','all of the mentioned'),
(7,'7. The data link layer takes the packets from _________ and encapsulates them into frames for transmission.','network layer','physical layer','transport layer','application layer','network layer'),
(8,'8. Which network topology requires a central controller or hub?','Star','Mesh','ring','Bus','Star'),
(9,'9. Data communication system within a building or campus is________','LAN','MAN','WAN','PAN','LAN'),
(10,'10. Which of the following are transport layer protocols used in networking?','TCP and FTP','UDP and HTTP','TCP and UDP','HTTP and FTP','TCP and UDP');

/*Table structure for table `cns` */

DROP TABLE IF EXISTS `cns`;

CREATE TABLE `cns` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `cns` */

insert  into `cns`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. The attacker using a network of compromised devices is known as _____________','Internet','Botnet','Telnet','D-net','Botnet'),
(2,'2. Packet sniffers involve ____________','Active receiver','Passive receiver','Legal receiver','Partially-active rec','Passive receiver'),
(3,'3. Which one of the following authentication method is used by SSH?','public-key','host based','password','all of the mentioned','all of the mentioned'),
(4,'4. Firewalls are often configured to block ___________','UDP traffic','TCP traffic','Sensitive traffic','Best-effort traffic','UDP traffic'),
(5,'5. Which is not a application layer protocol?','HTTP','SMTP','FTP','TCP','TCP'),
(6,'6. The packet of information at the application layer is called __________','Packet','Message','Segment','Frame','Message'),
(7,'7. Electronic mail uses which Application layer protocol?','SMTP','HTTP','FTP','SIP','SMTP'),
(8,'8. The HTTP request message is sent in _________ part of three-way handshake.','First','Secondd','Third','Fourth','Third'),
(9,'9. FTP is built on _____ architecture.','Client-server','P2P','Data centric','Service oriented','Client-server'),
(10,'10. When displaying a web page, the application layer uses the _____________','HTTP protocol','FTP protocol','SMTP protocol','TCP protocol','HTTP protocol');

/*Table structure for table `coa` */

DROP TABLE IF EXISTS `coa`;

CREATE TABLE `coa` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `coa` */

insert  into `coa`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. char *a[][];','D flip flop','JK flip flop',' RS flip flop','None of the mentione','D flip flop'),
(2,'2. The internal components of the processor are connected by _______','Processor intra-conn','Processor bus','Memory bus','Rambus','Processor bus'),
(3,'3. The bus used to connect the monitor to the CPU is ______','PCI bus','SCSI bus','Memory bus','Rambus','SCSI bus'),
(4,'4. The addressing mode, where you directly specify the operand value is _______','Immediate','Direct','Definite','Relative','Immediate'),
(5,'5. During the execution of the instructions, a copy of the instructions is placed in the ______','Register','RAM','System heap','Cache','Cache'),
(6,'6. When we perform subtraction on -7 and 1 the answer in 2’s complement form is _________','1010','1110','0110','1000','1000'),
(7,'7. During the transfer of data between the processor and memory we use ______','Cache','TLB','Buffers','Registers','Registers'),
(8,'8. The transfer of large chunks of data with the involvement of the processor is done by _______','DMA controller\r\n','Arbitrator','User system programs','None of the mentione','DMA controller\r\n'),
(9,'9. ________ is an extension of the processor BUS.','SCSI BUS','USB','PCI BUS\r\n','None of the mentione','PCI BUS'),
(10,'10. RAMBUS is better than the other memory chips in terms of ________','Efficiency','Speed of operation','Wider bandwidth','All of the mentioned','Speed of operation');

/*Table structure for table `cp` */

DROP TABLE IF EXISTS `cp`;

CREATE TABLE `cp` (
  `ID` int(5) NOT NULL,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(50) DEFAULT NULL,
  `opt2` varchar(50) DEFAULT NULL,
  `opt3` varchar(50) DEFAULT NULL,
  `opt4` varchar(50) DEFAULT NULL,
  `right` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cp` */

insert  into `cp`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Which Header File is used to do Math operations?','math.h','stdio.h','conio.h','data.h','math.h'),
(2,'2. What is the most preferred function to read a string in C?','\"scanf()\"','\"gets()\"','\"fgets()\"','\"strcpy()\"','\"scanf()\"'),
(3,'3. Which mathematical function would you use to round off 4.23 to 5?','\"ciel(4.23)\"','\"floor(4.23)\"','\"ciel(4.23,5)\"','\"floor(4.23,5)\"','\"ciel(4.23)\"'),
(4,'4. Choose the invalid predefined macro as per ANSI C','__FILE__','__DATE__','__TIME__','__C++__','__C++__'),
(5,'5. What is the built in library function to compare two strings?','\"string_cmp()\"','\"strcmp()\"','\"equals()\"','\"str_compare()\"','\"strcmp()\"'),
(6,'6. Which of the following has a global scope in the program?','Formal Parameters','Constants','Macros','Local Variables','Macros'),
(7,'7. What is the correct way of treating 9.81 as a long double?','9.81L','9.81LD','9.81D','9.81DL','9.81L'),
(8,'8. Which function would you use to convert 1.98 to 1?','\"ceil()\"','\"floor()\"','\"fabs()\"','\"abs()\"','\"ceil()\"'),
(9,'9. What is \"array\" in \"int array[20]\"?','keyword','identifier','literal','operator','identifier'),
(10,'10. Which of the following is treated as a real number by default?','float','long','double','long double','double');

/*Table structure for table `ds` */

DROP TABLE IF EXISTS `ds`;

CREATE TABLE `ds` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `ds` */

insert  into `ds`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. When does the ArrayIndexOutOfBoundsException occur?','Compile time','Run time','Not an error','Not an exception','Run time'),
(2,'2. Which of the following concepts make extensive use of arrays?','Binary trees','Scheduling of proces','Caching','Spatial locality','Spatial locality'),
(3,'3. Process of inserting an element in stack is called ____________','Create ','Push','Evaluation','Pop','Push'),
(4,'4. In a stack, if a user tries to remove an element from empty stack it is called _________','Underflow','Empty Collection','Overflow','Garbage Collection','Underflow'),
(5,'5. What is the value of the postfix expression 6 3 2 4 + – *:','1','40','74','-18','-18'),
(6,'6. If the elements “A”, “B”, “C” and “D” are placed in a queue and are deleted one at a time, in what order will they be removed?','ABCD','DCBA','ABDC','DCAB','ABCD'),
(7,'7. A linear collection of data elements where the linear node is given by means of pointer is called?','Linke List','Node List','Primitive List','Unordered List','Linked List'),
(8,'8. What would be the solution to the given prefix notation? (- + 5 / 10 5 5)','2','5','7','10','2'),
(9,'9. Which data structure is used for implementing recursion?','Queue','Stack','Array','List','Queue'),
(10,'10. Assuming int is of 4bytes, what is the size of int arr[15];?','15','19','11','60','60');

/*Table structure for table `fca` */

DROP TABLE IF EXISTS `fca`;

CREATE TABLE `fca` (
  `ID` int(5) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(50) DEFAULT NULL,
  `opt2` varchar(50) DEFAULT NULL,
  `opt3` varchar(50) DEFAULT NULL,
  `opt4` varchar(50) DEFAULT NULL,
  `right` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fca` */

insert  into `fca`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Which application is used to edit .doc files?','ms power point','ms word','ms access','All of the above','ms word'),
(2,'2. what is the shortcut to save the file?','ctlr z','ctlr as','ctlr s','ctlr a','ctlr s'),
(3,'3. Which of the following is an input device?','Monitor','Printer','Keyboard','None of the above','Keyboard'),
(4,'4. A DVD reader reads...','Hard Disk','DVD ROM','Flash Memory','All of the above','DVD ROM'),
(5,'5. What is the device which converts picture on a paper to an electronic image in computer?','Printer','Scanner','Photo-Relay','Ultra Mouse','Scanner'),
(6,'6. Which of the following is a part of the Central Processing Unit?','Keyboard','Printer','Mouse','ALU','ALU'),
(7,'7. What is shortcut key to open \"Task Manager\"?','ctrl+shift+esc','shift+esc','ctrl+esc','None of the above','ctrl+shift+esc'),
(8,'8. Which type of memory is RAM?','Secondary ','Non-Volatile','Both of the above','None of the above','Both of the above'),
(9,'9. Speed of computer is measured in','Hertz','Liter','Meter','Watt','Hertz'),
(10,'10. \r\nWhich is the biggest unit of data storage in the following list?','\r\n\r\nKilobyte\r\n','Gigabyte','Megabyte','\r\n\r\nByte\r\n','Gigabbyte');

/*Table structure for table `java` */

DROP TABLE IF EXISTS `java`;

CREATE TABLE `java` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `java` */

insert  into `java`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Which of the following is not OOPS concept in Java?','Inheritance','Encapsulation','Polymorphism','Compilation','Compilation'),
(2,'2. Which component is responsible to run java program?','JVM','JDK','JIT','JRE','JRE'),
(3,'3. Which of the below is invalid identifier with the main method?','public','static','private','final','private'),
(4,'4. What is the process of defining a method in a subclass having same name & type signature as a method in its superclass?','Method overloading','Method overriding','Method hiding','None of the mentione','Method overriding'),
(5,'5. Which of these keywords can be used to prevent Method overriding?','static','constant','protected','final','final'),
(6,'6. Which of these operators can be used to concatenate two or more String objects?','+','+=','&','||','+'),
(7,'7. Which of these class is superclass of every class in Java?','String class','Object class','Abstract class','ArrayList class\r\n','Object class'),
(8,'8. Literal can be of which of these data types?','integer','float','boolean','all of the above','all of the above'),
(9,'9. What is the output of relational operators?','integer','boolean','character','double','boolean'),
(10,'10. What is use of interpreter?','They convert bytecod','They read high level','They are intermediat','It is a synonym for ','They read high level');

/*Table structure for table `mcad` */

DROP TABLE IF EXISTS `mcad`;

CREATE TABLE `mcad` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `mcad` */

insert  into `mcad`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Web browser available in android is based on ','Chrome ','Firefox','Open-source Webkit ','Opera','Open-source Webkit '),
(2,'2. Android is based on which kernel? ','Linux kernel ','Windows kernel ','MAC kernel ','Hybrid Kernel ','Linux kernel '),
(3,'3. Which of the following Dialog boxes are supported by Android? 1) AlertDialog 2) ProgressDialog 3) DatePickerDialog 4) TimePickerDialog< ','1 and 2 ','3 and 4 ','all of the above ','none of the above','all of the above '),
(4,'4. If you want to increase the whitespace between widgets, you will need to use the ____________ property ','Android:padding ','Android:digits ','Android:capitalize ','Android:autoText ','Android:padding '),
(5,'5. For creating user interface in Android, you have to use ','Eclipse','java and XML ','java and SQL ','Java and Pl/sql ','java and XML '),
(6,'6. In ___________, sender specifies type of receiver. ','Implicit intent ','Explicit intent ','a and b ','none of these ','Implicit intent '),
(7,'7. Eclipse is an ________ ','Android tool ','IDE ','Android interface ','none of these ','IDE '),
(8,'8. Android doesn\'t support which format. ','MP4','MPEG','AVI ','MIDI ','AVI '),
(9,'9. What is mean by ANR? ','Application not Reco','Android not recogniz','Application Not Resp','none of these ','Application Not Resp'),
(10,'10. ADB stands for ','Android Debug Bridge','Application Debug Br','Android data bridge ','Application data bri','Android Debug Bridge');

/*Table structure for table `nma` */

DROP TABLE IF EXISTS `nma`;

CREATE TABLE `nma` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `nma` */

insert  into `nma`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. A DNS client is called _________','DNS updater','DNS resolver','DNS handler','none of the mentione','DNS resolver'),
(2,'2. Wildcard domain names start with label _______','@','*','&','#','*'),
(3,'3. DHCP (dynamic host configuration protocol) provides __________ to the client.','IP Adress','MAC Address','Url','None of above','IP Adress'),
(4,'4. The DHCP server can provide the _______ allocation of the IP addresses.','Dynamic','Automatic','Static','All of above','All of above'),
(5,'5. An attempt to make a computer resource unavailable to its intended users is called ______','Denial-of-service at','Virus attack','Worms attack','Botnet process','Denial-of-service at'),
(6,'6. A ___________ is an extension of an enterprise’s private intranet across a public network such as the internet, creating a secure private connection.','VNP','VPN','VSN','VSPN','VPN'),
(7,'7. The entire hostname has a maximum of ___________','255 characters','127 characters','63 characters','31 characters','255 characters'),
(8,'8. If DHCP snooping is configured on a LAN switch, then clients having specific ______ can access the network.','MAC address','IP address','Both','None','Both'),
(9,'9. IPSec is designed to provide security at the _________','Network layer','Transport layer','Application layer','Session layer','Network layer'),
(10,'10. Which layer of the OSI reference model does IPsec work at?','Layer 1','Layer 2','Layer 3','Layer 4','Layer 3');

/*Table structure for table `os` */

DROP TABLE IF EXISTS `os`;

CREATE TABLE `os` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `os` */

insert  into `os`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. A Logical address refers to the address that is generated by the_____________.','CPU','Memory unit','Hard Drive','Graphics Card','CPU'),
(2,'2. A Logical address is a __________ address assigned to each system in a network.','48-Bit','12-Bit','24-Bit','32-Bit','32-Bit'),
(3,'3. Which process state means a process is done executing?','Runnimg','Execute','Terminate','Complete','Terminate'),
(4,'4. If deadlocks occur frequently, the detection algorithm must be invoked ________','rarely','frequently','rarely & frequently','none','frquently'),
(5,'5. What allows the user to run several applications at the same time?','Multithreading','Multitasking','Multiprocessing','Multiprgramming','multitasking'),
(6,'6. Which is the first program run on a computer when the computer boots up?','Operating System','System Operations','System Software','None','Operationg System'),
(7,'7. If a process is executing in its critical section, then no other processes can be executing in their critical section. This condition is called?','Critical Exclusoin','Mutual Exclusion','Synchronous Exclusio','Asynchronous Exclusi','Mutual Exclusion'),
(8,'8. The processes that are residing in main memory and are ready and waiting to execute are kept on a list called _____________','job queue','ready queue','execution queue','process queue','readdy queue'),
(9,'9. A problem encountered in multitasking when a process is perpetually denied necessary resources is called ____________','deadlock','starvation','inversion','aging','starvation'),
(10,'10. For real time operating systems, interrupt latency should be ____________','minimal','maximum','zero','depends on schedulin','minimal');

/*Table structure for table `participants` */

DROP TABLE IF EXISTS `participants`;

CREATE TABLE `participants` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `enrollment` int(15) DEFAULT NULL,
  `current_sem` varchar(10) DEFAULT NULL,
  `quiz_sem` varchar(10) DEFAULT NULL,
  `subject` varchar(10) DEFAULT NULL,
  `score` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `participants` */

/*Table structure for table `physics` */

DROP TABLE IF EXISTS `physics`;

CREATE TABLE `physics` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(20) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(20) DEFAULT NULL,
  `opt4` varchar(20) DEFAULT NULL,
  `right` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `physics` */

insert  into `physics`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. When a body falls freely under gravity, then the work done by the gravity is ___________ .','Positive','Negative','Zero ','Infinity','Positive'),
(2,'2. A gardener pushes a lawn roller through a distance of 20m. If he applies a force of 20kg weight in a direction inclined at 60° to the ground, find the work done by him. (g=9.8m/s2)','400J','1960J','250J','2514J','1960J'),
(3,'3. A bullet fired from a gun can pierce a target due to its ___________ energy.','Mechanical','Heat','Kinetic','Acceleration','Kinetic'),
(4,'4. When force and displacement are in the same direction, the kinetic energy of the body ___________','Increases','Decreases','Remains Constant','Becomes Zero','Increases'),
(5,'5. A ball is thrown vertically upwards with a velocity of 20m/s. At what height, will its kinetic energy be half its original value?','10.20m','10m','15m','5m','10.20m'),
(6,'6. The quantity which has the only magnitude is called ____________ quantity.','Scalar','Vector','Chemical','Magnitude','Scalar'),
(7,'7. Which of the following is called a real law of motion?','Second law','Third Law','First Law','Law of Inertia','Second Law'),
(8,'8. Heat current is maximum in which of the following?','Copper','Steel and Copper','Steel','None of the above','Copper'),
(9,'9. Which of the following covalent compounds conduct electricity?','Silica','Graphite','Diamond','Hyddrogen Chloride','Graphite'),
(10,'10. Time period of a simple pendulum is 2sec. If its length is increased by 4 times, then its period becomes ___________','8sec','12sec','16sec','4sec','4sec');

/*Table structure for table `semester` */

DROP TABLE IF EXISTS `semester`;

CREATE TABLE `semester` (
  `ID` int(5) DEFAULT NULL,
  `sem1` varchar(100) DEFAULT NULL,
  `sem2` varchar(100) DEFAULT NULL,
  `sem3` varchar(100) DEFAULT NULL,
  `sem4` varchar(100) DEFAULT NULL,
  `sem5` varchar(100) DEFAULT NULL,
  `sem6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `semester` */

insert  into `semester`(`ID`,`sem1`,`sem2`,`sem3`,`sem4`,`sem5`,`sem6`) values 
(1,'SWPD','PHYSICS','OS','CN','CMT','AJAVA'),
(2,'FCA','BE','C++','COA','CNS','NMA'),
(3,'CP','ACP','DS','ADBMS','JAVA','MCAD');

/*Table structure for table `swpd` */

DROP TABLE IF EXISTS `swpd`;

CREATE TABLE `swpd` (
  `ID` int(5) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `opt1` varchar(50) DEFAULT NULL,
  `opt2` varchar(50) DEFAULT NULL,
  `opt3` varchar(50) DEFAULT NULL,
  `opt4` varchar(50) DEFAULT NULL,
  `right` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `swpd` */

insert  into `swpd`(`ID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`right`) values 
(1,'1. Which html tag is used for paragraph?','pra','p','pre','All of the above','p'),
(2,'2. How many types of CSS styles are there?','1','2','3','4','3'),
(3,'3. Choose the correct HTML element for the largest heading:','<h1>','<head>','<h6>','<heading>','<h1>'),
(4,'4. Where in an HTML document is the correct place to refer to an external style sheet?','<head>','<body>','At end','Anywhere','<head>'),
(5,'5. Choose the correct HTML element to define important text','<important>','<imp>','<b>','<strong>','<strong>'),
(6,'6. How can you make a numbered list?','<ul>','<list>','<ol>','<dl>','<ol>'),
(7,'7. Which CSS property controls the text size?','font-size','text-size','font-style','text-style','font-size'),
(8,'8. Which HTML attribute specifies an alternate text for an image, if the image cannot be displayed?','alt','src','title','longdesc','alt'),
(9,'9. What is the correct HTML element for playing audio files?','<audio>','<mp3>','<sound>','None of the above','<audio>'),
(10,'10. How do you select elements with class name \'test\'?','.test','*test','#test','test','.test');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
