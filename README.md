# mx
Now MS Excel and MUMPS database work togethe

MX technology introduction :
  - All information is kept not in the Excel books, but on the server in the form of multidimensional cubes and virtual Excel sheets
  - When user connects to the server, his real Excel sheet fills with data from required virtual sheet. Sheets are closely interrelated – changes are displayed on both sheets
  - After disconnection, the real Excel sheet is not being saved, however data still remains on the server
  - Control and data processing are performed by special formulas (commands of MUMPS)  in the cells of the sheets 
  
  (MUMPS is an acronym for the Massachusetts General Hospital Utility Multi-Programming System, also known as M)
  Commands of the MUMPS see on :  mumps.sourceforge.net/docs.html#commands
  
  Preparation for the system MX :
  
  -  vmx.ro programs must be installed in any M-namespace Cache or IRIS InterSystems and then execute d ^ZSTU
  -  copy the mx.xlsb VBA-macro to a separate folder on the computer of each client, for example, to c:/mx/ 
  -  copy all **.xlsb files and pictures also 
  -  fill in the connection table in the MX_CONFI.xlsb. By default, it set to 127.0.0.1, Port = 2264, Namespace = USER
  -  run mx.xlsb macro on any computer  (MS EXCEL be sure)
