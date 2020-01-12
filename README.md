# mx
Now MS Excel and MUMPS database work togethe, all m-commands are located in cells of Excel

How it works :
  - All information is kept not in the Excel books, but on the server in the form of multidimensional cubes and virtual Excel sheets
  - When user connects to the server, his real Excel sheet fills with data from required virtual sheet. Sheets are closely interrelated – changes are displayed on both
  - After disconnection, the real Excel sheet is not being saved, however data still remains on the server
  - Control and data processing are performed by special formulas (commands of MUMPS)  in the cells of the Excel
  - Without additional programming of VBA-macros and MUMPS-programs
  
  (MUMPS is an acronym for the Massachusetts General Hospital Utility Multi-Programming System, also known as M)

  Commands of the MUMPS see on :  mumps.sourceforge.net/docs.html#commands
  
  InterSystems Cache : https://community.intersystems.com/post/intersystem-cache-—-high-performence-and-operations-dbms
  InterSystems  IRIS : https://www.intersystems.com/try-intersystems-iris-for-free/

Preparation for start MX :
  
  -  import vmx.ro in any M-namespace Cache or IRIS InterSystems (Windows) and then do ^ZSTU (or job tcp^MX1)
  -  copy the mx.xlsb VBA-macro to a separate folder on the any win-computer, for example, to c:\mx\ 
  -  copy all **.xlsb files and all pictures and folders also to this folder
  -  fill in the connection table in the MX_CONFI.xlsb (by default, port = 2264, nspace = USER)
  -  run mx.xlsb macro (MS EXCEL be sure, required dot as system decimal separator)

Benefits of using MX :
  
  -  Can be used to create complex systems or as an auxiliary tool 
  -  Microsoft Office applications receive powerful support in the form of the MUMPS data server and language
  -  Mumps projects (Cache, IRIS, MSM, MiniM) receive an additional interface via Excel
  -  Convenient tool for teaching MUMPS

To work with mobile devices, there is an option to simulate Excel-grid via browser.
