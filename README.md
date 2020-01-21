# mx
Now MS Excel and MUMPS database work togethe, all m-commands are located in cells of Excel

How it works :
  - Information is kept not in the Excel books, but on the server in the form of globals MUMPS and virtual Excel sheets
  - When user connects to the server, his real Excel sheet fills with data from required virtual sheet, also, any cell of the sheet can give a query to the database, the query result is displayed. Sheets are closely interrelated – changes are displayed on both
  - User works with the sheet, mx-triggers (commands of MUMPS in cells) monitor his actions and initiate the necessary procedures
  - After disconnection, the real Excel sheet is not being saved, however data still remains on the server if necessary
  - MX work without additional programming of VBA-macros or MUMPS, enough formulas
  
  (MUMPS is an acronym for the Massachusetts General Hospital Utility Multi-Programming System, also known as M)

  Commands of the MUMPS see on :  mumps.sourceforge.net/docs.html#commands
  
  For practical work you can download one of these M-servers :
  
  -  InterSystems Cache - https://community.intersystems.com/post/intersystem-cache-—-high-performence-and-operations-dbms
  
  -  InterSystems  IRIS - https://www.intersystems.com/try-intersystems-iris-for-free/
  
  -  MiniM - http://www.minimdb.com/download/setup-minim-1.30-win_32.exe
  

Preparation for start MX :
  -  install the server preferably in unicode on any computer in your local network
  -  import m-routines vmx.ro in any M-namespace then start terminal and: DO ^ZSTU (or: JOB tcp^MX1)
  -  copy **.xlsb files and all folders to a separate folder on the any win-computer, for example, to c:\mx\ 
  -  edit the [connections] table in the MX_CONFI.xlsb 
  -  run mx.xlsb (MS EXCEL be sure, required dot . as system-decimal-delimiter)

With MX :
  
  -  you can create new complex projects, or use MX as an auxiliary tool 
  -  your working Microsoft Office applications receive powerful support : the MUMPS data server and M-language
  -  your working Mumps projects (Cache, IRIS, MSM, MiniM) receive an additional interface via Excel
  

In MX each cell is a mini-terminal, therefore MX is convenient tool for teaching MUMPS

In addition we plan to use browser to simulate Excel.
