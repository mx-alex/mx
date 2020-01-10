# mx
Now MS Excel and MUMPS database work togethe

MX technology introduction :
  - All information is kept not in the Excel books, but on the server in the form of multidimensional cubes and virtual Excel sheets
  - When user connects to the server, his real Excel sheet fills with data from required virtual sheet. Sheets are closely interrelated – changes are displayed on both
  - After disconnection, the real Excel sheet is not being saved, however data still remains on the server
  - Control and data processing are performed by special formulas (commands of MUMPS)  in the cells of the sheets 
  
  (MUMPS is an acronym for the Massachusetts General Hospital Utility Multi-Programming System, also known as M)
  Commands of the MUMPS see on :  mumps.sourceforge.net/docs.html#commands
  InterSystems Cache : https://community.intersystems.com/post/intersystem-cache-—-high-performence-and-operations-dbms
  InterSystems  IRIS : https://www.intersystems.com/try-intersystems-iris-for-free/
  
Preparation for start MX :
  
  -  vmx.ro (or vmx.txt) programs must be installed in any M-namespace Cache or IRIS InterSystems (Windows)  and then do ^ZSTU
  -  copy the mx.xlsb VBA-macro to a separate folder on the any win-computer, for example, to c:\mx\ 
  -  copy all **.xlsb files and all pictures also to this folder
  -  fill in the connection table in the MX_CONFI.xlsb. By default, it set to 127.0.0.1, Port = 2264, Namespace = USER
  -  run mx.xlsb macro (MS EXCEL be sure, required dot as system decimal separator)
