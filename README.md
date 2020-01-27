# mx
Now MS Excel and MUMPS database work togethe, all m-commands are located in cells of Excel

How it works :
  - Information is kept not in the Excel books, but on the server in the form of globals MUMPS and virtual Excel sheets
  - When user connects to the server, his real Excel sheet fills with data from required virtual sheet, also, any cell of the sheet can give a query to the database, the query result is displayed. Sheets are closely interrelated – changes are displayed on both
  - User works with the sheet, mx-triggers (commands of MUMPS in cells) monitor his actions and initiate the necessary procedures
  - After disconnection, the real Excel sheet is not being saved, however data still remains on the server if necessary
  - MX work without additional programming of VBA-macros or MUMPS, enough formulas
  
  (MUMPS is an acronym for the Massachusetts General Hospital Utility Multi-Programming System, also known as M)

  MUMPS:  http://mumps.sourceforge.net/docs.html#commands  
	https://community.intersystems.com/post/intersystem-cache-—-high-performence-and-operations-dbms  
	http://www.minimdb.com/download/setup-minim-1.30-win_32.exe
  
  Download: https://www.intersystems.com/try-intersystems-iris-for-free/
		https://download.intersystems.com/download/login.csp

Preparation for start MX :
  -  install IRIS or CACHE preferably in unicode on any win-computer and start terminal 
  -  import m-routines vmx.ro in any M-namespace (USER> zn "yournspace" DO ^%RI) then: DO ^ZSTU
  -  copy **.xlsb files and all folders to a separate folder on the any win-computer, for example, to c:\mx\, or to a removable drive (flash) 
  -  edit the [connections] table in the MX_CONFI.xlsb 
  -  run mx.xlsb (MS EXCEL be sure, required dot . as system-decimal-delimiter)


With MX :
  
  -  you can create new complex projects, or use MX as an auxiliary tool 
  -  your working Microsoft Office applications receive powerful support : the MUMPS data server and M-language
  -  your working Mumps projects (Cache, IRIS, MSM, MiniM) receive an additional interface via Excel
  -  you can use MX as their reporting framework
  -  there is no problem exporting documents to Excel - with MX you are already in Excel and in DB at the same time!
  
  
In MX each cell is a mini-terminal, therefore MX is convenient tool for teaching MUMPS

In future we plan to use browser to simulate Excel.
