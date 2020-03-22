Class Reports.Term
{

ClassMethod Tree(%p,%p1,%p2,%p3,%p4,%p5,%p6,%p7,%p8,%p9) As %Numeric
{
  set %USID=$g(%USID,"u127") s (%mxSheet,%mxForma)="mxReport",%B=$c(42510) s:$zv'["U)" %B=$c(254) 
 k ^oTQM(%USID,%mxSheet) s zRC=$zr,%line="",$p(%line,"-",77)=""
 
 if $e(%p)="^",$l(%p,"|")>4 set @zRC@(1,5)="?$$omQuery 12"_%p
 else  w !,"not correct argument --> ",%p q 0
 ;
 w !,@zRC@(1,5),!
 for z=1:1:9 {
	if $d(@("%p"_z)) s ooo="%mxIndex "_z_" | "_@("%p"_z) s x=2 f %=1:1:99 s o=$p(ooo," | ",%) i $l(o) s @zRC@(z*5,x)="?_"_o,x=x+12 
 }

 set o=$$TQM^MXTQM(1)
 set z=$name(^oTQMo(%USID,%mxSheet)),it=0
 set y=4 for  s y=$o(@z@(y)) q:'y  w:it ! s it=0 d:y\1=y  w ! s x=4,c=1 f  set x=$o(@z@(y,x)) q:'x  s oo=$p(^(x),"<mx ") s:$e(oo)[%B it=1,oo=oo_"TOTAL"_%B w ?c,oo s c=c+12
 . w !,$p(@zRC@(1,5),"|",6)
 . w ! s x=4,c=1 for  set x=$o(@zRC@(y,x)) q:'x  w ?c,$tr($p(^(x)," "),"?") s c=c+12
 . w !,%line
 q $d(@z)
}

ClassMethod TreeDemo()
{
   do oPeat
   set o="^oPeat | Country Country:Date | tn cost | d8 Province Product | | if Date'<20200101,Date'>20200222 | set cost=summa,d8=$$gmd^MXD(Date)"
   set %p1="Country | tn | cost oo ; s oo=$j(oo,9,2) | d8 "
   set %p2="Country | Date oo ; s oo=$$gmd^MXD(oo) | tn | cost oo ; s oo=$j(oo,9,2)"
   set o=..Tree(o,%p1,%p2)
   q 0 
oPeat ;  for demo 
	set ^oPeat(1,"Country")="Italy"
	set ^oPeat(1,"Date")=20200102
	set ^oPeat(1,"Product")="frezkudra"
	set ^oPeat(1,"Province")=22
	set ^oPeat(1,"n")=1
	set ^oPeat(1,"summa")=700
	set ^oPeat(1,"tn")=67.877
	set ^oPeat(2,"Country")="Italy"
	set ^oPeat(2,"Date")=20200102
	set ^oPeat(2,"Product")="gabalkudra"
	set ^oPeat(2,"Province")=22
	set ^oPeat(2,"n")=2
	set ^oPeat(2,"summa")=960.88
	set ^oPeat(2,"tn")=50
	set ^oPeat(3,"Country")="Germany"
	set ^oPeat(3,"Date")=20200102
	set ^oPeat(3,"Product")="frezkudra"
	set ^oPeat(3,"Province")=2
	set ^oPeat(3,"n")=3
	set ^oPeat(3,"summa")=1200.01
	set ^oPeat(3,"tn")=144.876
	set ^oPeat(4,"Country")="Germany"
	set ^oPeat(4,"Date")=20200102
	set ^oPeat(4,"Product")="gabalkudra"
	set ^oPeat(4,"Province")=2
	set ^oPeat(4,"n")=4
	set ^oPeat(4,"summa")=466
	set ^oPeat(4,"tn")=20
	set ^oPeat(5,"Country")="Italy"
	set ^oPeat(5,"Date")=20200105
	set ^oPeat(5,"Product")="frezkudra"
	set ^oPeat(5,"Province")=3
	set ^oPeat(5,"n")=5
	set ^oPeat(5,"summa")=550
	set ^oPeat(5,"tn")=60
	set ^oPeat(6,"Country")="Italy"
	set ^oPeat(6,"Date")=20200105
	set ^oPeat(6,"Product")="gabalkudra"
	set ^oPeat(6,"Province")=3
	set ^oPeat(6,"n")=6
	set ^oPeat(6,"summa")=600
	set ^oPeat(6,"tn")=40
	set ^oPeat(7,"Country")="Germany"
	set ^oPeat(7,"Date")=20200106
	set ^oPeat(7,"Product")="frezkudra"
	set ^oPeat(7,"Province")=5
	set ^oPeat(7,"n")=7
	set ^oPeat(7,"summa")=1100
	set ^oPeat(7,"tn")=120
	set ^oPeat(8,"Country")="Germany"
	set ^oPeat(8,"Date")=20200106
	set ^oPeat(8,"Product")="gabalkudra"
	set ^oPeat(8,"Province")=5
	set ^oPeat(8,"n")=8
	set ^oPeat(8,"summa")=333
	set ^oPeat(8,"tn")=10
	set ^oPeat(9,"Country")="Germany"
	set ^oPeat(9,"Date")=20200205
	set ^oPeat(9,"Product")="frezkudra"
	set ^oPeat(9,"Province")=7
	set ^oPeat(9,"n")=9
	set ^oPeat(9,"summa")=200
	set ^oPeat(9,"tn")=35
	set ^oPeat(10,"Country")="France"
	set ^oPeat(10,"Date")=20200216
	set ^oPeat(10,"Product")="frezkudra"
	set ^oPeat(10,"Province")=15
	set ^oPeat(10,"n")=10
	set ^oPeat(10,"summa")=990
	set ^oPeat(10,"tn")=65
	set ^oPeat(11,"Country")="Austria"
	set ^oPeat(11,"Date")=20200226
	set ^oPeat(11,"Product")="frezkudra"
	set ^oPeat(11,"Province")=4
	set ^oPeat(11,"n")=11
	set ^oPeat(11,"summa")=1098
	set ^oPeat(11,"tn")=75
	set ^oPeat(12,"Country")="France"
	set ^oPeat(12,"Date")=20200217
	set ^oPeat(12,"Product")="frezkudra"
	set ^oPeat(12,"Province")=15
	set ^oPeat(12,"n")=12
	set ^oPeat(12,"summa")=990
	set ^oPeat(12,"tn")=65
	set ^oPeat(13,"Country")="Austria"
	set ^oPeat(13,"Date")=20200227
	set ^oPeat(13,"Product")="frezkudra"
	set ^oPeat(13,"Province")=4
	set ^oPeat(13,"n")=13
	set ^oPeat(13,"summa")=1098
	set ^oPeat(13,"tn")=75
	set ^oPeat(14,"Country")="France"
	set ^oPeat(14,"Date")=20200218
	set ^oPeat(14,"Product")="gabalkudra"
	set ^oPeat(14,"Province")=15
	set ^oPeat(14,"n")=14
	set ^oPeat(14,"summa")=600
	set ^oPeat(14,"tn")=65
	set ^oPeat(15,"Country")="Austria"
	set ^oPeat(15,"Date")=20200229
	set ^oPeat(15,"Product")="frezkudra"
	set ^oPeat(15,"Province")=4
	set ^oPeat(15,"n")=15
	set ^oPeat(15,"summa")=1098
	set ^oPeat(15,"tn")=75
	set ^oPeat(21,"Country")="Italy"
	set ^oPeat(21,"Date")=20200102
	set ^oPeat(21,"Product")="frezkudra"
	set ^oPeat(21,"Province")=22
	set ^oPeat(21,"n")=1
	set ^oPeat(21,"summa")=700
	set ^oPeat(21,"tn")=67.877
	set ^oPeat(22,"Country")="Italy"
	set ^oPeat(22,"Date")=20200102
	set ^oPeat(22,"Product")="gabalkudra"
	set ^oPeat(22,"Province")=22
	set ^oPeat(22,"n")=2
	set ^oPeat(22,"summa")=960.88
	set ^oPeat(22,"tn")=50
	set ^oPeat(23,"Country")="Germany"
	set ^oPeat(23,"Date")=20200102
	set ^oPeat(23,"Product")="frezkudra"
	set ^oPeat(23,"Province")=2
	set ^oPeat(23,"n")=3
	set ^oPeat(23,"summa")=1200.01
	set ^oPeat(23,"tn")=144.876
	set ^oPeat(24,"Country")="Germany"
	set ^oPeat(24,"Date")=20200102
	set ^oPeat(24,"Product")="gabalkudra"
	set ^oPeat(24,"Province")=2
	set ^oPeat(24,"n")=4
	set ^oPeat(24,"summa")=466
	set ^oPeat(24,"tn")=20
	set ^oPeat(25,"Country")="Italy"
	set ^oPeat(25,"Date")=20200105
	set ^oPeat(25,"Product")="frezkudra"
	set ^oPeat(25,"Province")=3
	set ^oPeat(25,"n")=5
	set ^oPeat(25,"summa")=550
	set ^oPeat(25,"tn")=60
	set ^oPeat(26,"Country")="Italy"
	set ^oPeat(26,"Date")=20200105
	set ^oPeat(26,"Product")="gabalkudra"
	set ^oPeat(26,"Province")=3
	set ^oPeat(26,"n")=6
	set ^oPeat(26,"summa")=600
	set ^oPeat(26,"tn")=40
	set ^oPeat(27,"Country")="Germany"
	set ^oPeat(27,"Date")=20200106
	set ^oPeat(27,"Product")="frezkudra"
	set ^oPeat(27,"Province")=5
	set ^oPeat(27,"n")=7
	set ^oPeat(27,"summa")=1100
	set ^oPeat(27,"tn")=120
	set ^oPeat(28,"Country")="Germany"
	set ^oPeat(28,"Date")=20200106
	set ^oPeat(28,"Product")="gabalkudra"
	set ^oPeat(28,"Province")=5
	set ^oPeat(28,"n")=8
	set ^oPeat(28,"summa")=333
	set ^oPeat(28,"tn")=10
	set ^oPeat(29,"Country")="Germany"
	set ^oPeat(29,"Date")=20200205
	set ^oPeat(29,"Product")="frezkudra"
	set ^oPeat(29,"Province")=7
	set ^oPeat(29,"n")=9
	set ^oPeat(29,"summa")=200
	set ^oPeat(29,"tn")=35
	set ^oPeat(30,"Country")="France"
	set ^oPeat(30,"Date")=20200216
	set ^oPeat(30,"Product")="frezkudra"
	set ^oPeat(30,"Province")=15
	set ^oPeat(30,"n")=10
	set ^oPeat(30,"summa")=990
	set ^oPeat(30,"tn")=65
	set ^oPeat(31,"Country")="Austria"
	set ^oPeat(31,"Date")=20200226
	set ^oPeat(31,"Product")="frezkudra"
	set ^oPeat(31,"Province")=4
	set ^oPeat(31,"n")=11
	set ^oPeat(31,"summa")=1098
	set ^oPeat(31,"tn")=75
	set ^oPeat(32,"Country")="France"
	set ^oPeat(32,"Date")=20200217
	set ^oPeat(32,"Product")="frezkudra"
	set ^oPeat(32,"Province")=15
	set ^oPeat(32,"n")=12
	set ^oPeat(32,"summa")=990
	set ^oPeat(32,"tn")=65
	set ^oPeat(33,"Country")="Austria"
	set ^oPeat(33,"Date")=20200227
	set ^oPeat(33,"Province")=4
	set ^oPeat(33,"n")=13
	set ^oPeat(33,"summa")=1098
	set ^oPeat(33,"tn")=75
	set ^oPeat(34,"Country")="France"
	set ^oPeat(34,"Date")=20200218
	set ^oPeat(34,"Product")="gabalkudra"
	set ^oPeat(34,"Province")=15
	set ^oPeat(34,"n")=14
	set ^oPeat(34,"summa")=600
	set ^oPeat(34,"tn")=65
	set ^oPeat(35,"Country")="Austria"
	set ^oPeat(35,"Date")=20200229
	set ^oPeat(35,"Product")="frezkudra"
	set ^oPeat(35,"Province")=4
	set ^oPeat(35,"n")=15
	set ^oPeat(35,"summa")=1098
	set ^oPeat(35,"tn")=75
	q  
   
}



}