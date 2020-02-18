# mx
Now MS Excel and MUMPS database work together, all m-commands are located in cells of Excel

How it works :
  - Information is kept not in the Excel books, but on the server in the form of globals MUMPS and virtual Excel sheets
  - When user connects to the server, his real Excel sheet fills with data from required virtual sheet, also, any cell of the sheet can give a query to the database, the query result is displayed. Sheets are closely interrelated – changes are displayed on both
  - User works with the sheet, mx-triggers (commands of MUMPS in cells) monitor his actions and initiate the necessary procedures
  - After disconnection, the real Excel sheet is not being saved, however data still remains on the server if necessary
  - MX work without additional programming of VBA-macros or MUMPS, enough mx-formulas
  
  (MUMPS is an acronym for the Massachusetts General Hospital Utility Multi-Programming System, also known as M)

  MUMPS:  http://mumps.sourceforge.net/docs.html#commands  
	https://community.intersystems.com/post/intersystem-cache-—-high-performence-and-operations-dbms
	https://community.intersystems.com/post/m-cell  
	
  Download IRIS: https://www.intersystems.com/try-intersystems-iris-for-free/
		https://download.intersystems.com/download/login.csp

	Preparation for start MX with Cache 8-bit or unicode, or IRIS InterSystems :
  -  download the repository as ZIP file, then unzip to a separate folder, for example: to c:\mx\
  -  if you don’t yet have Cache or IRIS, download and install IRIS, preferably in unicode, on any win-computer
  -  start IRIS (Cache) terminal, then run the following commands after USER>:
  
			zn "yournspace"
			Set root = "path on filesystem to which repository was downloaded"
			Do $System.OBJ.ImportDir(root,"vmx.ro","ck",,1) Do ^ZSTU
			( Alternative option :   USER> zn "yournspace" Do ^%RI Do ^ZSTU  )
 
  -  edit the [connections] table in the MX_CONFI.xlsb (edit tcp port and $znspace)
  -  run mx.xlsb (MS EXCEL be sure, required dot . as system-decimal-delimiter)

	you will see buttons for calling tests and games

	note : if you import vmx.ro to %SYS as well, MX-server will start automatically.

	With MX :
  
  -  you can create new complex projects, or use MX as an auxiliary tool 
  -  your working Microsoft Excel applications receive powerful support : the MUMPS data server and M-language
  -  your working Mumps projects (Cache, IRIS, MSM, MiniM) receive an additional EXCEL INTERFACE
  -  you can use MX as their reporting framework, M creates tables and controls conditional formatting
  -  there is no problem exporting documents to Excel - with MX you are already in Excel
  
  
	Using the tool is easy enough.
	You write commands in sheet cells in MX_FORMA_TEST.xlsb in design_mode.
	Do not use :    write $zv     in m-commands.
	Instead of this :   ?=$zv     (or:  ?o ; set oo=$zv  ).  Version will be displayed in this cell.
	Question mark to distinguish between mx-formulas and  excel’s native formulas.
	In order to open a sheet for editing click the design_mode icon on the top bar MX.
	After editing click this icon again for save.
	Carefully program For …  loops so as not to cause an infinite loop.
	Do not use column “A” - it is reserved for the system.
	After running the mx.xlsb macro, you will see a few examples. The easiest to learn is game i15.
	Small bonus.  In MX each cell is a mini calculator.
	You entered  345+5=    in a cell, and immediately got the result: 350.
	Try MX - it's just !
