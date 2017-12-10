ç7
7/home/derek/landis/Library-Biomass-Cohort/src/Cohort.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{		 
public 

class 
Cohort 
: 	
ICohort
 
{ 
private 
readonly 
ISpecies !
species" )
;) *
private 

CohortData 
data 
;  
public 
ISpecies 
Species 
{ 	
get 
{ 
return 
species 
; 
} 
} 	
public 
ushort 
Age 
{ 	
get   
{   
return!! 
data!! 
.!! 
Age!! 
;!!  
}"" 
}## 	
public'' 
int'' 
Biomass'' 
{(( 	
get)) 
{)) 
return** 
data** 
.** 
Biomass** #
;**# $
}++ 
},, 	
public33 

CohortData33 
Data33 
{44 	
get55 
{55 
return66 
data66 
;66 
}77 
}88 	
public== 
Cohort== 
(== 
ISpecies== 
species== &
,==& '
ushort>> 
age>> "
,>>" #
int?? 
biomass?? #
)??# $
{@@ 	
thisAA 
.AA 
speciesAA 
=AA 
speciesAA "
;AA" #
thisBB 
.BB 
dataBB 
.BB 
AgeBB 
=BB 
ageBB 
;BB  
thisCC 
.CC 
dataCC 
.CC 
BiomassCC 
=CC 
biomassCC  '
;CC' (
}DD 	
publicHH 
CohortHH 
(HH 
ISpeciesHH 
speciesHH! (
,HH( )

CohortDataII  

cohortDataII! +
)II+ ,
{JJ 	
thisKK 
.KK 
speciesKK 
=KK 
speciesKK "
;KK" #
thisLL 
.LL 
dataLL 
=LL 

cohortDataLL "
;LL" #
}MM 	
publicTT 
voidTT 
IncrementAgeTT  
(TT  !
)TT! "
{UU 	
dataVV 
.VV 
AgeVV 
+=VV 
$numVV 
;VV 
}WW 	
public^^ 
void^^ 
ChangeBiomass^^ !
(^^! "
int^^" %
delta^^& +
)^^+ ,
{__ 	
int`` 

newBiomass`` 
=`` 
data`` !
.``! "
Biomass``" )
+``* +
delta``, 1
;``1 2
dataaa 
.aa 
Biomassaa 
=aa 
Systemaa !
.aa! "
Mathaa" &
.aa& '
Maxaa' *
(aa* +
$numaa+ ,
,aa, -

newBiomassaa. 8
)aa8 9
;aa9 :
}bb 	
publicff 
intff "
ComputeNonWoodyBiomassff )
(ff) *

ActiveSiteff* 4
siteff5 9
)ff9 :
{gg 	

Percentagehh 
nonWoodyPercentagehh )
=hh* +
Cohortshh, 3
.hh3 4
BiomassCalculatorhh4 E
.hhE F%
ComputeNonWoodyPercentagehhF _
(hh_ `
thishh` d
,hhd e
sitehhf j
)hhj k
;hhk l
returnii 
(ii 
intii 
)ii 
(ii 
dataii 
.ii 
Biomassii &
*ii' (
nonWoodyPercentageii) ;
)ii; <
;ii< =
}jj 	
publicrr 
staticrr 
eventrr 
DeathEventHandlerrr -
<rr- .
DeathEventArgsrr. <
>rr< =

DeathEventrr> H
;rrH I
publictt 
statictt 
eventtt $
PartialDeathEventHandlertt 4
<tt4 5!
PartialDeathEventArgstt5 J
>ttJ K
PartialDeathEventttL ]
;tt] ^
publiczz 
staticzz 
voidzz 
PartialMortalityzz +
(zz+ ,
objectzz, 2
senderzz3 9
,zz9 :
ICohort{{  '
cohort{{( .
,{{. /

ActiveSite||  *
site||+ /
,||/ 0
ExtensionType}}  -
disturbanceType}}. =
,}}= >
float~~  %
	reduction~~& /
)~~/ 0
{ 	
if
ÄÄ 
(
ÄÄ 
PartialDeathEvent
ÄÄ !
!=
ÄÄ" $
null
ÄÄ% )
)
ÄÄ) *
PartialDeathEvent
ÅÅ !
(
ÅÅ! "
sender
ÅÅ" (
,
ÅÅ( )
new
ÅÅ* -#
PartialDeathEventArgs
ÅÅ. C
(
ÅÅC D
cohort
ÅÅD J
,
ÅÅJ K
site
ÅÅL P
,
ÅÅP Q
disturbanceType
ÅÅR a
,
ÅÅa b
	reduction
ÅÅc l
)
ÅÅl m
)
ÅÅm n
;
ÅÅn o
}
ÇÇ 	
public
ââ 
static
ââ 
void
ââ 
Died
ââ 
(
ââ  
object
ââ  &
sender
ââ+ 1
,
ââ1 2
ICohort
ää  '
cohort
ää+ 1
,
ää1 2

ActiveSite
ãã  *
site
ãã+ /
,
ãã/ 0
ExtensionType
åå  -
disturbanceType
åå. =
)
åå= >
{
çç 	
if
éé 
(
éé 

DeathEvent
éé 
!=
éé 
null
éé "
)
éé" #

DeathEvent
èè 
(
èè 
sender
èè !
,
èè! "
new
èè# &
DeathEventArgs
èè' 5
(
èè5 6
cohort
èè6 <
,
èè< =
site
èè> B
,
èèB C
disturbanceType
èèD S
)
èèS T
)
èèT U
;
èèU V
}
êê 	
public
óó 
static
óó 
event
óó 
DeathEventHandler
óó -
<
óó- .
DeathEventArgs
óó. <
>
óó< =
AgeOnlyDeathEvent
óó> O
;
óóO P
public
ûû 
static
ûû 
void
ûû (
KilledByAgeOnlyDisturbance
ûû 5
(
ûû5 6
object
ûû6 <
sender
ûûA G
,
ûûG H
ICohort
üü6 =
cohort
üüA G
,
üüG H

ActiveSite
††6 @
site
††A E
,
††E F
ExtensionType
°°6 C
disturbanceType
°°D S
)
°°S T
{
¢¢ 	
if
££ 
(
££ 
AgeOnlyDeathEvent
££ !
!=
££" $
null
££% )
)
££) *
AgeOnlyDeathEvent
§§ !
(
§§! "
sender
§§" (
,
§§( )
new
§§* -
DeathEventArgs
§§. <
(
§§< =
cohort
§§= C
,
§§C D
site
§§E I
,
§§I J
disturbanceType
§§K Z
)
§§Z [
)
§§[ \
;
§§\ ]
}
•• 	
}
¶¶ 
}ßß  
;/home/derek/landis/Library-Biomass-Cohort/src/CohortData.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

struct 

CohortData 
{ 
public 
ushort 
Age 
; 
public 
int 
Biomass 
; 
public 

CohortData 
( 
ushort  
age! $
,$ %
int   
biomass   %
)  % &
{!! 	
this"" 
."" 
Age"" 
="" 
age"" 
;"" 
this## 
.## 
Biomass## 
=## 
biomass## "
;##" #
}$$ 	
}%% 
}&& Á
B/home/derek/landis/Library-Biomass-Cohort/src/CohortDefoliation.cs
	namespace		 	
Landis		
 
.		 
Library		 
.		 
BiomassCohorts		 '
{

 
public 

class 
CohortDefoliation "
{ 
public 
static 
class 
	Delegates %
{ 	
public 
delegate 
double "
Compute# *
(* +
ICohort+ 2
cohort6 <
,< =

ActiveSite+ 5
site6 :
,: ;
int+ .
siteBiomass6 A
)A B
;B C
} 	
public   
static   
class   
Defaults   $
{!! 	
public)) 
static)) 
double))  
Compute))! (
())( )
ICohort))) 0
cohort))4 :
,)): ;

ActiveSite**) 3
site**4 8
,**8 9
int++) ,
siteBiomass++4 ?
)++? @
{,, 
return-- 
$num-- 
;-- 
}.. 
}// 	
private33 
static33 
	Delegates33  
.33  !
Compute33! (
computeMethod33) 6
=337 8
Defaults339 A
.33A B
Compute33B I
;33I J
public:: 
static:: 
	Delegates:: 
.::  
Compute::  '
Compute::( /
{;; 	
get<< 
{<< 
return== 
computeMethod== $
;==$ %
}>> 
set@@ 
{@@ 
RequireAA 
.AA 
ArgumentNotNullAA '
(AA' (
valueAA( -
)AA- .
;AA. /
computeMethodBB 
=BB 
valueBB  %
;BB% &
}CC 
}DD 	
}EE 
}FF ˝
F/home/derek/landis/Library-Biomass-Cohort/src/CohortGrowthReduction.cs
	namespace		 	
Landis		
 
.		 
Library		 
.		 
BiomassCohorts		 '
{

 
public 

class !
CohortGrowthReduction &
{ 
public 
static 
class 
	Delegates %
{ 	
public 
delegate 
double "
Compute# *
(* +
ICohort+ 2
cohort6 <
,< =

ActiveSite+ 5
site6 :
): ;
;; <
} 	
public 
static 
class 
Defaults $
{   	
public(( 
static(( 
double((  
Compute((! (
(((( )
ICohort(() 0
cohort((4 :
,((: ;

ActiveSite))) 3
site))4 8
)))8 9
{++ 
return,, 
$num,, 
;,, 
}-- 
}.. 	
private22 
static22 
	Delegates22  
.22  !
Compute22! (
computeMethod22) 6
=227 8
Defaults229 A
.22A B
Compute22B I
;22I J
public99 
static99 
	Delegates99 
.99  
Compute99  '
Compute99( /
{:: 	
get;; 
{;; 
return<< 
computeMethod<< $
;<<$ %
}== 
set?? 
{?? 
Require@@ 
.@@ 
ArgumentNotNull@@ '
(@@' (
value@@( -
)@@- .
;@@. /
computeMethodAA 
=AA 
valueAA  %
;AA% &
}BB 
}CC 	
}DD 
}EE º!
8/home/derek/landis/Library-Biomass-Cohort/src/Cohorts.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

static 
class 
Cohorts 
{ 
private 
static 
int 
successionTimeStep -
;- .
private 
static 
ICalculator "
biomassCalculator# 4
;4 5
public 
static 
int 
SuccessionTimeStep ,
{ 	
get 
{ 
return 
successionTimeStep )
;) *
} 
} 	
public!! 
static!! 
ICalculator!! !
BiomassCalculator!!" 3
{"" 	
get## 
{## 
return$$ 
biomassCalculator$$ (
;$$( )
}%% 
}&& 	
public44 
static44 
void44 

Initialize44 %
(44% &
int44& )
successionTimeStep442 D
,44D E
ICalculator55& 1
biomassCalculator552 C
)55C D
{66 	
Cohorts77 
.77 
successionTimeStep77 &
=77' (
successionTimeStep77) ;
;77; <
Cohorts88 
.88 
biomassCalculator88 %
=88' (
biomassCalculator88) :
;88: ;
}99 	
public@@ 
static@@ 
int@@ 
ComputeBiomass@@ (
(@@( )
ISiteCohorts@@) 5
siteCohorts@@6 A
)@@A B
{AA 	
intBB 
youngBiomassBB 
;BB 
returnCC 
ComputeBiomassCC !
(CC! "
siteCohortsCC" -
,CC- .
outCC/ 2
youngBiomassCC3 ?
)CC? @
;CC@ A
}DD 	
publicLL 
staticLL 
intLL 
ComputeBiomassLL (
(LL( )
ISiteCohortsLL) 5
siteCohortsLL6 A
,LLA B
outMM) ,
intMM- 0
youngBiomassMM6 B
)MMB C
{NN 	
youngBiomassOO 
=OO 
$numOO 
;OO 
intPP 
totalBiomassPP 
=PP 
$numPP  
;PP  !
foreachQQ 
(QQ 
ISpeciesCohortsQQ $
speciesCohortsQQ% 3
inQQ4 6
siteCohortsQQ7 B
)QQB C
{QQD E
foreachRR 
(RR 
ICohortRR  
cohortRR! '
inRR( *
speciesCohortsRR+ 9
)RR9 :
{RR; <
totalBiomassSS  
+=SS! #
cohortSS$ *
.SS* +
BiomassSS+ 2
;SS2 3
ifTT 
(TT 
cohortTT 
.TT 
AgeTT "
<TT# $
successionTimeStepTT% 7
)TT7 8
youngBiomassUU $
+=UU% '
cohortUU( .
.UU. /
BiomassUU/ 6
;UU6 7
}VV 
}WW 
returnXX 
totalBiomassXX 
;XX  
}YY 	
public`` 
static`` 
int`` "
ComputeNonYoungBiomass`` 0
(``0 1
ISiteCohorts``1 =
siteCohorts``> I
)``I J
{aa 	
ifbb 
(bb 
siteCohortsbb 
==bb 
nullbb #
)bb# $
returncc 
$numcc 
;cc 
intdd 
totalBiomassdd 
=dd 
$numdd  
;dd  !
foreachee 
(ee 
ISpeciesCohortsee $
speciesCohortsee% 3
inee4 6
siteCohortsee7 B
)eeB C
{eeD E
foreachff 
(ff 
ICohortff  
cohortff! '
inff( *
speciesCohortsff+ 9
)ff9 :
{ff; <
ifgg 
(gg 
cohortgg 
.gg 
Agegg "
>=gg# %
successionTimeStepgg& 8
)gg8 9
totalBiomasshh $
+=hh% '
cohorthh( .
.hh. /
Biomasshh/ 6
;hh6 7
}ii 
}jj 
returnkk 
totalBiomasskk 
;kk  
}ll 	
}oo 
}pp ü
?/home/derek/landis/Library-Biomass-Cohort/src/DeathEventArgs.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

class 
DeathEventArgs 
{ 
private 
readonly 
ICohort  
cohort! '
;' (
private 
readonly 

ActiveSite #
site$ (
;( )
private 
readonly 
ExtensionType &
disturbanceType' 6
;6 7
public 
ICohort 
Cohort 
{ 	
get 
{ 
return 
cohort 
; 
} 
}   	
public'' 

ActiveSite'' 
Site'' 
{(( 	
get)) 
{** 
return++ 
site++ 
;++ 
},, 
}-- 	
public77 
ExtensionType77 
DisturbanceType77 ,
{88 	
get99 
{:: 
return;; 
disturbanceType;; &
;;;& '
}<< 
}== 	
publicDD 
DeathEventArgsDD 
(DD 
ICohortDD %
cohortDD& ,
,DD, -

ActiveSiteEE (
siteEE) -
,EE- .
ExtensionTypeFF +
disturbanceTypeFF, ;
)FF; <
{GG 	
thisHH 
.HH 
cohortHH 
=HH 
cohortHH  
;HH  !
thisII 
.II 
siteII 
=II 
siteII 
;II 
thisJJ 
.JJ 
disturbanceTypeJJ  
=JJ! "
disturbanceTypeJJ# 2
;JJ2 3
}KK 	
}LL 
}MM Ñ
B/home/derek/landis/Library-Biomass-Cohort/src/DeathEventHandler.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

delegate 
void 
DeathEventHandler *
<* +
TDeathEventArgs+ :
>: ;
(; <
object< B
senderL R
,R S
TDeathEventArgs< K
	eventArgsL U
)U V
;V W
} Ó

E/home/derek/landis/Library-Biomass-Cohort/src/DisturbanceEventArgs.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

class  
DisturbanceEventArgs %
{ 
private 
readonly 

ActiveSite #
site$ (
;( )
private 
readonly 
ExtensionType &
disturbanceType' 6
;6 7
public 

ActiveSite 
Site 
{ 	
get 
{ 
return 
site 
; 
} 
} 	
public"" 
ExtensionType"" 
DisturbanceType"" ,
{## 	
get$$ 
{$$ 
return%% 
disturbanceType%% &
;%%& '
}&& 
}'' 	
public..  
DisturbanceEventArgs.. #
(..# $

ActiveSite..$ .
site../ 3
,..3 4
ExtensionType//$ 1
disturbanceType//2 A
)//A B
{00 	
this11 
.11 
site11 
=11 
site11 
;11 
this22 
.22 
disturbanceType22  
=22! "
disturbanceType22# 2
;222 3
}33 	
}44 
}55 ⁄
H/home/derek/landis/Library-Biomass-Cohort/src/DisturbanceEventHandler.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

delegate 
void #
DisturbanceEventHandler 0
(0 1
object1 7
senderF L
,L M 
DisturbanceEventArgs1 E
	eventArgsF O
)O P
;P Q
} ª
</home/derek/landis/Library-Biomass-Cohort/src/ICalculator.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{		 
public 

	interface 
ICalculator  
{ 
int"" 
ComputeChange"" 
("" 
ICohort"" !
cohort""" (
,""( )

ActiveSite## $
site##% )
)##) *
;##* +

Percentage22 %
ComputeNonWoodyPercentage22 ,
(22, -
ICohort22- 4
cohort228 >
,22> ?

ActiveSite33- 7
site338 <
)33< =
;33= >
}55 
}66 ∞
8/home/derek/landis/Library-Biomass-Cohort/src/ICohort.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

	interface 
ICohort 
: 	
Landis
 
. 
Library 
. 
AgeOnlyCohorts '
.' (
ICohort( /
{ 
int 
Biomass 
{ 	
get 
; 
} 	
int "
ComputeNonWoodyBiomass "
(" #

ActiveSite# -
site. 2
)2 3
;3 4
}!! 
}"" õ
=/home/derek/landis/Library-Biomass-Cohort/src/IDisturbance.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

	interface 
IDisturbance !
{ 
ExtensionType 
Type 
{ 	
get 
; 
} 	

ActiveSite 
CurrentSite 
{ 	
get 
; 
} 	
int)) $
ReduceOrKillMarkedCohort)) $
())$ %
ICohort))% ,
cohort))- 3
)))3 4
;))4 5
}** 
}++ «
=/home/derek/landis/Library-Biomass-Cohort/src/ISiteCohorts.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public		 

	interface		 
ISiteCohorts		 !
:

 	
Landis


 
.

 
Library

 
.

 
Cohorts

  
.

  !
ISiteCohorts

! -
<

- .
BiomassCohorts

. <
.

< =
ISpeciesCohorts

= L
>

L M
{ 
int &
ReduceOrKillBiomassCohorts &
(& '
IDisturbance' 3
disturbance4 ?
)? @
;@ A
} 
} 
H/home/derek/landis/Library-Biomass-Cohort/src/ISpeciesCohortBoolArray.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

	interface #
ISpeciesCohortBoolArray ,
{ 
int 
Count 
{ 	
get 
; 
} 	
bool 
this 
[ 
int 
index 
] 
{ 	
get 
; 
set 
; 
} 	
} 
} ˆ
@/home/derek/landis/Library-Biomass-Cohort/src/ISpeciesCohorts.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 
	interface 
ISpeciesCohorts (
: 
Landis 
. 
Library 
. 
Cohorts %
.% &
ISpeciesCohorts& 5
<5 6
Landis6 <
.< =
Library= D
.D E
BiomassCohortsE S
.S T
ICohortT [
>[ \
{ 	
} 	
} ÷
K/home/derek/landis/Library-Biomass-Cohort/src/ISpeciesCohortsDisturbance.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

	interface &
ISpeciesCohortsDisturbance /
: 	
IDisturbance
 
{		 
void 
MarkCohortsForDeath  
(  !
ISpeciesCohorts! 0
cohorts1 8
,8 9#
ISpeciesCohortBoolArray 1
	isDamaged2 ;
); <
;< =
} 
} ª 
C/home/derek/landis/Library-Biomass-Cohort/src/OldToYoungIterator.cs
	namespace		 	
Landis		
 
.		 
Library		 
.		 
BiomassCohorts		 '
{

 
public 

class 
OldToYoungIterator #
{ 
private 
readonly 
SpeciesCohorts '
cohorts( /
;/ 0
private 
int 
? 
index 
; 
private 
int 
currentCohortAge $
;$ %
private 
int 
	nextIndex 
; 
private 
bool 
currentCohortDied &
;& '
public)) 
int)) 
Age)) 
{** 	
get++ 
{++ 
if,, 
(,, 
index,, 
.,, 
HasValue,, "
),," #
return-- 
currentCohortAge-- +
;--+ ,
throw.. $
NoCurrentCohortException.. .
(... /
)../ 0
;..0 1
}// 
}00 	
public77 
SpeciesCohorts77 
SpeciesCohorts77 ,
{88 	
get99 
{99 
return:: 
cohorts:: 
;:: 
};; 
}<< 	
publicCC 
OldToYoungIteratorCC !
(CC! "
SpeciesCohortsCC" 0
cohortsCC1 8
)CC8 9
{DD 	
thisEE 
.EE 
cohortsEE 
=EE 
cohortsEE "
;EE" #
thisFF 
.FF 
	nextIndexFF 
=FF 
$numFF 
;FF 
thisGG 
.GG 
currentCohortDiedGG "
=GG# $
falseGG% *
;GG* +
MoveNextHH 
(HH 
)HH 
;HH 
}II 	
privateMM %
InvalidOperationExceptionMM )$
NoCurrentCohortExceptionMM* B
(MMB C
)MMC D
{NN 	
stringOO 
mesgOO 
=OO 
$strOO G
;OOG H
ifPP 
(PP 
currentCohortDiedPP !
)PP! "
mesgQQ 
=QQ 
mesgQQ 
+QQ 
$strQQ B
;QQB C
returnRR 
newRR %
InvalidOperationExceptionRR 0
(RR0 1
mesgRR1 5
)RR5 6
;RR6 7
}SS 	
publichh 
voidhh 
GrowCurrentCohorthh %
(hh% &

ActiveSitehh& 0
sitehh1 5
)hh5 6
{ii 	
ifjj 
(jj 
!jj 
indexjj 
.jj 
HasValuejj  
)jj  !
throwkk $
NoCurrentCohortExceptionkk .
(kk. /
)kk/ 0
;kk0 1
	nextIndexmm 
=mm 
cohortsmm 
.mm  

GrowCohortmm  *
(mm* +
indexmm+ 0
.mm0 1
Valuemm1 6
,mm6 7
sitemm8 <
)mm< =
;mm= >
currentCohortDiedoo 
=oo 
(oo  !
	nextIndexoo! *
==oo+ -
indexoo. 3
.oo3 4
Valueoo4 9
)oo9 :
;oo: ;
}pp 	
public{{ 
bool{{ 
MoveNext{{ 
({{ 
){{ 
{|| 	
index}} 
=}} 
	nextIndex}} 
;}} 
if~~ 
(~~ 
$num~~ 
<=~~ 
index~~ 
&&~~ 
index~~ #
<~~$ %
cohorts~~& -
.~~- .
Count~~. 3
)~~3 4
{~~5 6
currentCohortAge  
=! "
cohorts# *
.* +
GetAge+ 1
(1 2
index2 7
.7 8
Value8 =
)= >
;> ?
return
ÄÄ 
true
ÄÄ 
;
ÄÄ 
}
ÅÅ 
else
ÇÇ 
{
ÇÇ 
index
ÑÑ 
=
ÑÑ 
null
ÑÑ 
;
ÑÑ 
return
ÖÖ 
false
ÖÖ 
;
ÖÖ 
}
ÜÜ 
}
áá 	
}
àà 
}ââ É
F/home/derek/landis/Library-Biomass-Cohort/src/PartialDeathEventArgs.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

class !
PartialDeathEventArgs &
{ 
private 
readonly 
ICohort  
cohort! '
;' (
private 
readonly 

ActiveSite #
site$ (
;( )
private 
readonly 
ExtensionType &
disturbanceType' 6
;6 7
private 
readonly 
float 
	reduction (
;( )
public 
ICohort 
Cohort 
{ 	
get 
{ 
return 
cohort 
; 
} 
} 	
public%% 

ActiveSite%% 
Site%% 
{&& 	
get'' 
{(( 
return)) 
site)) 
;)) 
}** 
}++ 	
public55 
ExtensionType55 
DisturbanceType55 ,
{66 	
get77 
{88 
return99 
disturbanceType99 &
;99& '
}:: 
};; 	
publicBB 
floatBB 
	ReductionBB 
{CC 	
getDD 
{EE 
returnFF 
	reductionFF  
;FF  !
}GG 
}HH 	
publicNN !
PartialDeathEventArgsNN $
(NN$ %
ICohortNN% ,
cohortNN- 3
,NN3 4

ActiveSiteOO (
siteOO) -
,OO- .
ExtensionTypePP +
disturbanceTypePP, ;
,PP; <
floatPP= B
	reductionPPC L
)PPL M
{QQ 	
thisRR 
.RR 
cohortRR 
=RR 
cohortRR  
;RR  !
thisSS 
.SS 
siteSS 
=SS 
siteSS 
;SS 
thisTT 
.TT 
disturbanceTypeTT  
=TT! "
disturbanceTypeTT# 2
;TT2 3
thisUU 
.UU 
	reductionUU 
=UU 
	reductionUU &
;UU& '
}VV 	
}WW 
}XX í
I/home/derek/landis/Library-Biomass-Cohort/src/PartialDeathEventHandler.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

delegate 
void $
PartialDeathEventHandler 1
<1 2
TDeathEventArgs2 A
>A B
(B C
objectC I
senderS Y
,Y Z
TDeathEventArgs< K
	eventArgsL U
)U V
;V W
} ¡î
</home/derek/landis/Library-Biomass-Cohort/src/SiteCohorts.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

class 
SiteCohorts 
: 	
ISiteCohorts
 
, 
AgeOnlyCohorts &
.& '
ISiteCohorts' 3
{ 
public 
int 
InitialBiomass !
;! "
private 
readonly 
List 
< 
SpeciesCohorts ,
>, -
cohorts. 5
;5 6
public 
ISpeciesCohorts 
this #
[# $
ISpecies$ ,
species- 4
]4 5
{ 	
get 
{ 
return   

GetCohorts   !
(  ! "
species  " )
)  ) *
;  * +
}!! 
}"" 	
private'' 
SpeciesCohorts'' 

GetCohorts'' )
('') *
ISpecies''* 2
species''3 :
)'': ;
{(( 	
for)) 
()) 
int)) 
i)) 
=)) 
$num)) 
;)) 
i)) 
<)) 
cohorts))  '
.))' (
Count))( -
;))- .
i))/ 0
++))0 2
)))2 3
{** 
SpeciesCohorts++ 
speciesCohorts++ -
=++. /
cohorts++0 7
[++7 8
i++8 9
]++9 :
;++: ;
if,, 
(,, 
speciesCohorts,, "
.,," #
Species,,# *
==,,+ -
species,,. 5
),,5 6
return-- 
speciesCohorts-- )
;--) *
}.. 
return// 
null// 
;// 
}00 	
	AgeCohort55 
.55 
ISpeciesCohorts55 !
Landis55" (
.55( )
Library55) 0
.550 1
Cohorts551 8
.558 9
ISiteCohorts559 E
<55E F
Landis55F L
.55L M
Library55M T
.55T U
AgeOnlyCohorts55U c
.55c d
ISpeciesCohorts55d s
>55s t
.55t u
this55u y
[55y z
ISpecies	55z Ç
species
55É ä
]
55ä ã
{66 	
get77 
{88 
return99 

GetCohorts99 !
(99! "
species99" )
)99) *
;99* +
}:: 
};; 	
public@@ 
SiteCohorts@@ 
(@@ 
)@@ 
{AA 	
thisBB 
.BB 
cohortsBB 
=BB 
newBB 
ListBB #
<BB# $
SpeciesCohortsBB$ 2
>BB2 3
(BB3 4
)BB4 5
;BB5 6
}CC 	
publicEE 
voidEE 
GrowEE 
(EE 
ushortEE 
yearsEE  %
,EE% &

ActiveSiteEE' 1
siteEE2 6
,EE6 7
intEE8 ;
?EE; <
successionTimestepEE= O
,EEO P
ICoreEEQ V
mCoreEEW \
)EE\ ]
{FF 	
GrowGG 
(GG 
siteGG 
,GG 
successionTimestepGG )
.GG) *
HasValueGG* 2
)GG2 3
;GG3 4
}HH 	
publicZZ 
voidZZ 
GrowZZ 
(ZZ 

ActiveSiteZZ #
siteZZ$ (
,ZZ( )
boolZZ* . 
isSuccessionTimestepZZ/ C
)ZZC D
{[[ 	
if\\ 
(\\  
isSuccessionTimestep\\ $
&&\\% '
Cohorts\\( /
.\\/ 0
SuccessionTimeStep\\0 B
>\\C D
$num\\E F
)\\F G
foreach]] 
(]] 
SpeciesCohorts]] '
speciesCohorts]]( 6
in]]7 9
cohorts]]: A
)]]A B
speciesCohorts^^ "
.^^" #
CombineYoungCohorts^^# 6
(^^6 7
)^^7 8
;^^8 9
GrowFor1Year`` 
(`` 
site`` 
)`` 
;`` 
}aa 	
privatell 
voidll 
GrowFor1Yearll !
(ll! "

ActiveSitell" ,
sitell- 1
)ll1 2
{mm 	
Listss 
<ss 
OldToYoungIteratorss #
>ss# $
itorsss% *
=ss+ ,
newss- 0
Listss1 5
<ss5 6
OldToYoungIteratorss6 H
>ssH I
(ssI J
)ssJ K
;ssK L
foreachtt 
(tt 
SpeciesCohortstt #
speciesCohortstt$ 2
intt3 5
cohortstt6 =
)tt= >
{uu 
OldToYoungIteratorvv "
itorvv# '
=vv( )
speciesCohortsvv* 8
.vv8 9

OldToYoungvv9 C
;vvC D
InsertIteratorww 
(ww 
itorww #
,ww# $
itorsww% *
)ww* +
;ww+ ,
}xx 
while{{ 
({{ 
itors{{ 
.{{ 
Count{{ 
>{{  
$num{{! "
){{" #
{||  
OldToYoungIterator
ÄÄ "
itor
ÄÄ# '
=
ÄÄ( )
itors
ÄÄ* /
[
ÄÄ/ 0
$num
ÄÄ0 1
]
ÄÄ1 2
;
ÄÄ2 3
itor
ÇÇ 
.
ÇÇ 
GrowCurrentCohort
ÇÇ &
(
ÇÇ& '
site
ÇÇ' +
)
ÇÇ+ ,
;
ÇÇ, -
if
ÉÉ 
(
ÉÉ 
itor
ÉÉ 
.
ÉÉ 
MoveNext
ÉÉ !
(
ÉÉ! "
)
ÉÉ" #
)
ÉÉ# $
{
ÑÑ 
if
áá 
(
áá 
itors
áá 
.
áá 
Count
áá #
>
áá$ %
$num
áá& '
&&
áá( *
itor
áá+ /
.
áá/ 0
Age
áá0 3
<
áá4 5
itors
áá6 ;
[
áá; <
$num
áá< =
]
áá= >
.
áá> ?
Age
áá? B
)
ááB C
{
àà 
itors
ãã 
.
ãã 
RemoveAt
ãã &
(
ãã& '
$num
ãã' (
)
ãã( )
;
ãã) *
InsertIterator
åå &
(
åå& '
itor
åå' +
,
åå+ ,
itors
åå- 2
)
åå2 3
;
åå3 4
}
çç 
}
éé 
else
èè 
{
êê 
itors
íí 
.
íí 
RemoveAt
íí "
(
íí" #
$num
íí# $
)
íí$ %
;
íí% &
if
îî 
(
îî 
itor
îî 
.
îî 
SpeciesCohorts
îî +
.
îî+ ,
Count
îî, 1
>
îî2 3
$num
îî4 5
)
îî5 6
itor
ïï 
.
ïï 
SpeciesCohorts
ïï +
.
ïï+ ,!
UpdateMaturePresent
ïï, ?
(
ïï? @
)
ïï@ A
;
ïïA B
else
ññ 
{
óó 
for
öö 
(
öö 
int
öö  
i
öö! "
=
öö# $
$num
öö% &
;
öö& '
i
öö( )
<
öö* +
cohorts
öö, 3
.
öö3 4
Count
öö4 9
;
öö9 :
i
öö; <
++
öö< >
)
öö> ?
{
õõ 
if
úú 
(
úú  
cohorts
úú  '
[
úú' (
i
úú( )
]
úú) *
==
úú+ -
itor
úú. 2
.
úú2 3
SpeciesCohorts
úú3 A
)
úúA B
{
ùù 
cohorts
ûû  '
.
ûû' (
RemoveAt
ûû( 0
(
ûû0 1
i
ûû1 2
)
ûû2 3
;
ûû3 4
break
üü  %
;
üü% &
}
†† 
}
°° 
}
¢¢ 
}
££ 
}
§§ 
}
¶¶ 	
private
ÆÆ 
void
ÆÆ 
InsertIterator
ÆÆ #
(
ÆÆ# $ 
OldToYoungIterator
ÆÆ$ 6
itor
ÆÆ7 ;
,
ÆÆ; <
List
ØØ$ (
<
ØØ( ) 
OldToYoungIterator
ØØ) ;
>
ØØ; <
itors
ØØ= B
)
ØØB C
{
∞∞ 	
bool
±± 
inserted
±± 
=
±± 
false
±± !
;
±±! "
for
≤≤ 
(
≤≤ 
int
≤≤ 
i
≤≤ 
=
≤≤ 
$num
≤≤ 
;
≤≤ 
i
≤≤ 
<
≤≤ 
itors
≤≤  %
.
≤≤% &
Count
≤≤& +
;
≤≤+ ,
i
≤≤- .
++
≤≤. 0
)
≤≤0 1
{
≥≥ 
if
¥¥ 
(
¥¥ 
itor
¥¥ 
.
¥¥ 
Age
¥¥ 
>
¥¥ 
itors
¥¥ $
[
¥¥$ %
i
¥¥% &
]
¥¥& '
.
¥¥' (
Age
¥¥( +
)
¥¥+ ,
{
µµ 
itors
∂∂ 
.
∂∂ 
Insert
∂∂  
(
∂∂  !
i
∂∂! "
,
∂∂" #
itor
∂∂$ (
)
∂∂( )
;
∂∂) *
inserted
∑∑ 
=
∑∑ 
true
∑∑ #
;
∑∑# $
break
∏∏ 
;
∏∏ 
}
ππ 
}
∫∫ 
if
ªª 
(
ªª 
!
ªª 
inserted
ªª 
)
ªª 
itors
ºº 
.
ºº 
Add
ºº 
(
ºº 
itor
ºº 
)
ºº 
;
ºº  
}
ΩΩ 	
public
¡¡ 
int
¡¡ (
ReduceOrKillBiomassCohorts
¡¡ -
(
¡¡- .
IDisturbance
¡¡. :
disturbance
¡¡; F
)
¡¡F G
{
¬¬ 	
int
√√ 
totalReduction
√√ 
=
√√  
$num
√√! "
;
√√" #
for
∆∆ 
(
∆∆ 
int
∆∆ 
i
∆∆ 
=
∆∆ 
cohorts
∆∆  
.
∆∆  !
Count
∆∆! &
-
∆∆' (
$num
∆∆) *
;
∆∆* +
i
∆∆, -
>=
∆∆. 0
$num
∆∆1 2
;
∆∆2 3
i
∆∆4 5
--
∆∆5 7
)
∆∆7 8
{
«« 
totalReduction
»» 
+=
»» !
cohorts
»»" )
[
»») *
i
»»* +
]
»»+ ,
.
»», -
MarkCohorts
»»- 8
(
»»8 9
disturbance
»»9 D
)
»»D E
;
»»E F
if
…… 
(
…… 
cohorts
…… 
[
…… 
i
…… 
]
…… 
.
…… 
Count
…… $
==
……% '
$num
……( )
)
……) *
cohorts
   
.
   
RemoveAt
   $
(
  $ %
i
  % &
)
  & '
;
  ' (
}
ÀÀ 
return
ÕÕ 
totalReduction
ÕÕ !
;
ÕÕ! "
}
ŒŒ 	
void
““ 
	AgeCohort
““ 
.
““ 
ISiteCohorts
““ #
.
““# $!
RemoveMarkedCohorts
““$ 7
(
““7 8
	AgeCohort
““8 A
.
““A B 
ICohortDisturbance
““B T
disturbance
““U `
)
““` a
{
”” 	
if
‘‘ 
(
‘‘ %
AgeOnlyDisturbanceEvent
‘‘ '
!=
‘‘( *
null
‘‘+ /
)
‘‘/ 0%
AgeOnlyDisturbanceEvent
’’ '
(
’’' (
this
’’( ,
,
’’, -
new
’’. 1"
DisturbanceEventArgs
’’2 F
(
’’F G
disturbance
’’G R
.
’’R S
CurrentSite
’’S ^
,
’’^ _
disturbance
÷÷G R
.
÷÷R S
Type
÷÷S W
)
÷÷W X
)
÷÷X Y
;
÷÷Y Z(
ReduceOrKillBiomassCohorts
◊◊ &
(
◊◊& '
new
◊◊' * 
WrappedDisturbance
◊◊+ =
(
◊◊= >
disturbance
◊◊> I
)
◊◊I J
)
◊◊J K
;
◊◊K L
}
ÿÿ 	
void
‹‹ 
	AgeCohort
‹‹ 
.
‹‹ 
ISiteCohorts
‹‹ #
.
‹‹# $!
RemoveMarkedCohorts
‹‹$ 7
(
‹‹7 8
	AgeCohort
‹‹8 A
.
‹‹A B(
ISpeciesCohortsDisturbance
‹‹B \
disturbance
‹‹] h
)
‹‹h i
{
›› 	
if
ﬁﬁ 
(
ﬁﬁ %
AgeOnlyDisturbanceEvent
ﬁﬁ '
!=
ﬁﬁ( *
null
ﬁﬁ+ /
)
ﬁﬁ/ 0%
AgeOnlyDisturbanceEvent
ﬂﬂ '
(
ﬂﬂ' (
this
ﬂﬂ( ,
,
ﬂﬂ, -
new
ﬂﬂ. 1"
DisturbanceEventArgs
ﬂﬂ2 F
(
ﬂﬂF G
disturbance
ﬂﬂG R
.
ﬂﬂR S
CurrentSite
ﬂﬂS ^
,
ﬂﬂ^ _
disturbance
‡‡G R
.
‡‡R S
Type
‡‡S W
)
‡‡W X
)
‡‡X Y
;
‡‡Y Z
int
‰‰ 
totalReduction
‰‰ 
=
‰‰  
$num
‰‰! "
;
‰‰" #
for
ÂÂ 
(
ÂÂ 
int
ÂÂ 
i
ÂÂ 
=
ÂÂ 
cohorts
ÂÂ  
.
ÂÂ  !
Count
ÂÂ! &
-
ÂÂ' (
$num
ÂÂ) *
;
ÂÂ* +
i
ÂÂ, -
>=
ÂÂ. 0
$num
ÂÂ1 2
;
ÂÂ2 3
i
ÂÂ4 5
--
ÂÂ5 7
)
ÂÂ7 8
{
ÊÊ 
totalReduction
ÁÁ 
+=
ÁÁ !
cohorts
ÁÁ" )
[
ÁÁ) *
i
ÁÁ* +
]
ÁÁ+ ,
.
ÁÁ, -
MarkCohorts
ÁÁ- 8
(
ÁÁ8 9
disturbance
ÁÁ9 D
)
ÁÁD E
;
ÁÁE F
if
ËË 
(
ËË 
cohorts
ËË 
[
ËË 
i
ËË 
]
ËË 
.
ËË 
Count
ËË $
==
ËË% '
$num
ËË( )
)
ËË) *
cohorts
ÈÈ 
.
ÈÈ 
RemoveAt
ÈÈ $
(
ÈÈ$ %
i
ÈÈ% &
)
ÈÈ& '
;
ÈÈ' (
}
ÍÍ 
}
ÎÎ 	
public
ÚÚ 
static
ÚÚ 
event
ÚÚ %
DisturbanceEventHandler
ÚÚ 3%
AgeOnlyDisturbanceEvent
ÚÚ4 K
;
ÚÚK L
public
˙˙ 
void
˙˙ 
AddNewCohort
˙˙  
(
˙˙  !
ISpecies
˙˙! )
species
˙˙* 1
,
˙˙1 2
ushort
˙˙3 9
age
˙˙: =
,
˙˙= >
int
˙˙? B
initialBiomass
˙˙C Q
)
˙˙Q R
{
˚˚ 	
bool
¸¸ 
speciesPresent
¸¸ 
=
¸¸  !
false
¸¸" '
;
¸¸' (
for
˝˝ 
(
˝˝ 
int
˝˝ 
i
˝˝ 
=
˝˝ 
$num
˝˝ 
;
˝˝ 
i
˝˝ 
<
˝˝ 
cohorts
˝˝  '
.
˝˝' (
Count
˝˝( -
;
˝˝- .
i
˝˝/ 0
++
˝˝0 2
)
˝˝2 3
{
˛˛ 
SpeciesCohorts
ˇˇ 
speciesCohorts
ˇˇ -
=
ˇˇ. /
cohorts
ˇˇ0 7
[
ˇˇ7 8
i
ˇˇ8 9
]
ˇˇ9 :
;
ˇˇ: ;
if
ÄÄ 
(
ÄÄ 
speciesCohorts
ÄÄ "
.
ÄÄ" #
Species
ÄÄ# *
==
ÄÄ+ -
species
ÄÄ. 5
)
ÄÄ5 6
{
ÅÅ 
speciesCohorts
ÇÇ "
.
ÇÇ" #
AddNewCohort
ÇÇ# /
(
ÇÇ/ 0
age
ÇÇ0 3
,
ÇÇ3 4
initialBiomass
ÇÇ5 C
)
ÇÇC D
;
ÇÇD E
speciesPresent
ÉÉ "
=
ÉÉ# $
true
ÉÉ% )
;
ÉÉ) *
break
ÑÑ 
;
ÑÑ 
}
ÖÖ 
}
ÜÜ 
if
àà 
(
àà 
!
àà 
speciesPresent
àà 
)
àà  
cohorts
ââ 
.
ââ 
Add
ââ 
(
ââ 
new
ââ 
SpeciesCohorts
ââ  .
(
ââ. /
species
ââ/ 6
,
ââ6 7
age
ââ8 ;
,
ââ; <
initialBiomass
ââ= K
)
ââK L
)
ââL M
;
ââM N
}
ãã 	
public
ëë 
void
ëë 
AddNewCohort
ëë  
(
ëë  !
ISpecies
ëë! )
species
ëë* 1
)
ëë1 2
{
íí 	
}
ìì 	
public
òò 
bool
òò 
IsMaturePresent
òò #
(
òò# $
ISpecies
òò$ ,
species
òò- 4
)
òò4 5
{
ôô 	
for
öö 
(
öö 
int
öö 
i
öö 
=
öö 
$num
öö 
;
öö 
i
öö 
<
öö 
cohorts
öö  '
.
öö' (
Count
öö( -
;
öö- .
i
öö/ 0
++
öö0 2
)
öö2 3
{
öö4 5
SpeciesCohorts
õõ 
speciesCohorts
õõ -
=
õõ. /
cohorts
õõ0 7
[
õõ7 8
i
õõ8 9
]
õõ9 :
;
õõ: ;
if
úú 
(
úú 
speciesCohorts
úú "
.
úú" #
Species
úú# *
==
úú+ -
species
úú. 5
)
úú5 6
{
úú7 8
return
ùù 
speciesCohorts
ùù )
.
ùù) *
IsMaturePresent
ùù* 9
;
ùù9 :
}
ûû 
}
üü 
return
†† 
false
†† 
;
†† 
}
°° 	
public
¶¶ 
IEnumerator
¶¶ 
<
¶¶ 
ISpeciesCohorts
¶¶ *
>
¶¶* +
GetEnumerator
¶¶, 9
(
¶¶9 :
)
¶¶: ;
{
ßß 	
foreach
®® 
(
®® 
SpeciesCohorts
®® #
speciesCohorts
®®$ 2
in
®®3 5
cohorts
®®6 =
)
®®= >
yield
©© 
return
©© 
speciesCohorts
©© +
;
©©+ ,
}
™™ 	
IEnumerator
ÆÆ 
IEnumerable
ÆÆ 
.
ÆÆ  
GetEnumerator
ÆÆ  -
(
ÆÆ- .
)
ÆÆ. /
{
ØØ 	
return
∞∞ 
GetEnumerator
∞∞  
(
∞∞  !
)
∞∞! "
;
∞∞" #
}
±± 	
IEnumerator
µµ 
<
µµ 
	AgeCohort
µµ 
.
µµ 
ISpeciesCohorts
µµ -
>
µµ- .
IEnumerable
µµ/ :
<
µµ: ;
	AgeCohort
µµ; D
.
µµD E
ISpeciesCohorts
µµE T
>
µµT U
.
µµU V
GetEnumerator
µµV c
(
µµc d
)
µµd e
{
∂∂ 	
foreach
∑∑ 
(
∑∑ 
SpeciesCohorts
∑∑ #
speciesCohorts
∑∑$ 2
in
∑∑3 5
cohorts
∑∑6 =
)
∑∑= >
yield
∏∏ 
return
∏∏ 
speciesCohorts
∏∏ +
;
∏∏+ ,
}
ππ 	
public
ºº 
string
ºº 
Write
ºº 
(
ºº 
)
ºº 
{
ΩΩ 	
StringBuilder
ææ 
builder
ææ !
=
ææ" #
new
ææ$ '
StringBuilder
ææ( 5
(
ææ5 6
)
ææ6 7
;
ææ7 8
foreach
øø 
(
øø 
ISpeciesCohorts
øø $

sppcohorts
øø% /
in
øø0 2
this
øø3 7
)
øø7 8
foreach
¿¿ 
(
¿¿ 
ICohort
¿¿  
cohort
¿¿! '
in
¿¿( *

sppcohorts
¿¿+ 5
)
¿¿5 6
builder
¡¡ 
.
¡¡ 
AppendFormat
¡¡ (
(
¡¡( )
$str
¡¡) 4
,
¡¡4 5
cohort
¡¡6 <
.
¡¡< =
Species
¡¡= D
.
¡¡D E
Name
¡¡E I
,
¡¡I J
cohort
¡¡K Q
.
¡¡Q R
Age
¡¡R U
)
¡¡U V
;
¡¡V W
return
¬¬ 
builder
¬¬ 
.
¬¬ 
ToString
¬¬ #
(
¬¬# $
)
¬¬$ %
;
¬¬% &
}
√√ 	
}
∆∆ 
}«« ◊
G/home/derek/landis/Library-Biomass-Cohort/src/SpeciesCohortBoolArray.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public		 

class		 "
SpeciesCohortBoolArray		 '
:

 	
List


 
<

 
bool

 
>

 
,

 #
ISpeciesCohortBoolArray

 -
{ 
public 
void 
SetAllFalse 
(  
int  #
count$ )
)) *
{ 	
Clear 
( 
) 
; 
for 
( 
int 
i 
= 
count 
; 
i  !
>" #
$num$ %
;% &
i' (
--( *
)* +
Add 
( 
false 
) 
; 
} 	
} 
} ÍÆ
?/home/derek/landis/Library-Biomass-Cohort/src/SpeciesCohorts.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

class 
SpeciesCohorts 
: 	
BiomassCohorts
 
. 
ISpeciesCohorts (
,( )
AgeOnlyCohorts
 
. 
ISpeciesCohorts (
{ 
private 
static 
readonly 
ILog  $
log% (
=) *

LogManager+ 5
.5 6
	GetLogger6 ?
(? @

MethodBase@ J
.J K
GetCurrentMethodK [
([ \
)\ ]
.] ^
DeclaringType^ k
)k l
;l m
private 
static 
readonly 
bool  $
isDebugEnabled% 3
=4 5
log6 9
.9 :
IsDebugEnabled: H
;H I
private 
readonly 
ISpecies !
species" )
;) *
private 
bool 
isMaturePresent $
;$ %
private!! 
List!! 
<!! 

CohortData!! 
>!!  

cohortData!!! +
;!!+ ,
public%% 
int%% 
Count%% 
{&& 	
get'' 
{'' 
return(( 

cohortData(( !
.((! "
Count((" '
;((' (
})) 
}** 	
public.. 
ISpecies.. 
Species.. 
{// 	
get00 
{00 
return11 
species11 
;11 
}22 
}33 	
public77 
bool77 
IsMaturePresent77 #
{88 	
get99 
{99 
return:: 
isMaturePresent:: &
;::& '
};; 
}<< 	
public@@ 
ICohort@@ 
this@@ 
[@@ 
int@@ 
index@@  %
]@@% &
{AA 	
getBB 
{BB 
returnCC 
newCC 
CohortCC !
(CC! "
speciesCC" )
,CC) *

cohortDataCC+ 5
[CC5 6
indexCC6 ;
]CC; <
)CC< =
;CC= >
}DD 
}EE 	
publicLL 
OldToYoungIteratorLL !

OldToYoungLL" ,
{MM 	
getNN 
{NN 
returnOO 
newOO 
OldToYoungIteratorOO -
(OO- .
thisOO. 2
)OO2 3
;OO3 4
}PP 
}QQ 	
publicXX 
SpeciesCohortsXX 
(XX 
ISpeciesXX &
speciesXX' .
,XX. /
ushortYY $

initialAgeYY% /
,YY/ 0
intZZ !
initialBiomassZZ$ 2
)ZZ2 3
{[[ 	
this\\ 
.\\ 
species\\ 
=\\ 
species\\ "
;\\" #
this]] 
.]] 

cohortData]] 
=]] 
new]] !
List]]" &
<]]& '

CohortData]]' 1
>]]1 2
(]]2 3
)]]3 4
;]]4 5
this^^ 
.^^ 
isMaturePresent^^  
=^^! "
false^^# (
;^^( )
AddNewCohort__ 
(__ 

initialAge__ #
,__# $
initialBiomass__% 3
)__3 4
;__4 5
}`` 	
publicgg 
SpeciesCohortsgg 
Clonegg #
(gg# $
)gg$ %
{hh 	
SpeciesCohortsii 
cloneii  
=ii! "
newii# &
SpeciesCohortsii' 5
(ii5 6
thisii6 :
.ii: ;
speciesii; B
)iiB C
;iiC D
clonejj 
.jj 

cohortDatajj 
=jj 
newjj "
Listjj# '
<jj' (

CohortDatajj( 2
>jj2 3
(jj3 4
thisjj4 8
.jj8 9

cohortDatajj9 C
)jjC D
;jjD E
clonekk 
.kk 
isMaturePresentkk !
=kk" #
thiskk$ (
.kk( )
isMaturePresentkk) 8
;kk8 9
returnll 
clonell 
;ll 
}mm 	
privateww 
SpeciesCohortsww 
(ww 
ISpeciesww '
speciesww( /
)ww/ 0
{xx 	
thisyy 
.yy 
speciesyy 
=yy 
speciesyy "
;yy" #
}zz 	
public
ÅÅ 
void
ÅÅ 
AddNewCohort
ÅÅ  
(
ÅÅ  !
ushort
ÅÅ! '
age
ÅÅ( +
,
ÅÅ+ ,
int
ÅÅ- 0
initialBiomass
ÅÅ1 ?
)
ÅÅ? @
{
ÇÇ 	
this
ÉÉ 
.
ÉÉ 

cohortData
ÉÉ 
.
ÉÉ 
Add
ÉÉ 
(
ÉÉ  
new
ÉÉ  #

CohortData
ÉÉ$ .
(
ÉÉ. /
age
ÉÉ/ 2
,
ÉÉ2 3
initialBiomass
ÉÉ4 B
)
ÉÉB C
)
ÉÉC D
;
ÉÉD E
}
ÑÑ 	
public
çç 
int
çç 
GetAge
çç 
(
çç 
int
çç 
index
çç #
)
çç# $
{
éé 	
return
èè 

cohortData
èè 
[
èè 
index
èè #
]
èè# $
.
èè$ %
Age
èè% (
;
èè( )
}
êê 	
public
££ 
void
££ !
CombineYoungCohorts
££ '
(
££' (
)
££( )
{
§§ 	
int
ßß 

youngCount
ßß 
=
ßß 
$num
ßß 
;
ßß 
int
®® 
totalBiomass
®® 
=
®® 
$num
®®  
;
®®  !
for
©© 
(
©© 
int
©© 
i
©© 
=
©© 

cohortData
©© #
.
©©# $
Count
©©$ )
-
©©* +
$num
©©, -
;
©©- .
i
©©/ 0
>=
©©1 3
$num
©©4 5
;
©©5 6
i
©©7 8
--
©©8 :
)
©©: ;
{
™™ 

CohortData
´´ 
data
´´ 
=
´´  !

cohortData
´´" ,
[
´´, -
i
´´- .
]
´´. /
;
´´/ 0
if
¨¨ 
(
¨¨ 
data
¨¨ 
.
¨¨ 
Age
¨¨ 
<=
¨¨ 
Cohorts
¨¨  '
.
¨¨' ( 
SuccessionTimeStep
¨¨( :
)
¨¨: ;
{
≠≠ 

youngCount
ÆÆ 
++
ÆÆ  
;
ÆÆ  !
totalBiomass
ØØ  
+=
ØØ! #
data
ØØ$ (
.
ØØ( )
Biomass
ØØ) 0
;
ØØ0 1
}
∞∞ 
else
±± 
break
≤≤ 
;
≤≤ 
}
≥≥ 
if
µµ 
(
µµ 

youngCount
µµ 
>
µµ 
$num
µµ 
)
µµ 
{
∂∂ 

cohortData
∑∑ 
.
∑∑ 
RemoveRange
∑∑ &
(
∑∑& '

cohortData
∑∑' 1
.
∑∑1 2
Count
∑∑2 7
-
∑∑8 9

youngCount
∑∑: D
,
∑∑D E

youngCount
∑∑F P
)
∑∑P Q
;
∑∑Q R

cohortData
∏∏ 
.
∏∏ 
Add
∏∏ 
(
∏∏ 
new
∏∏ "

CohortData
∏∏# -
(
∏∏- .
(
∏∏. /
ushort
∏∏/ 5
)
∏∏5 6
(
∏∏7 8
Cohorts
∏∏8 ?
.
∏∏? @ 
SuccessionTimeStep
∏∏@ R
-
∏∏S T
$num
∏∏U V
)
∏∏V W
,
∏∏W X
totalBiomass
ππ. :
)
ππ: ;
)
ππ; <
;
ππ< =
}
∫∫ 
}
ªª 	
public
ÿÿ 
int
ÿÿ 

GrowCohort
ÿÿ 
(
ÿÿ 
int
ÿÿ !
index
ÿÿ) .
,
ÿÿ. /

ActiveSite
ŸŸ (
site
ŸŸ) -
)
ŸŸ- .
{
⁄⁄ 	
Debug
€€ 
.
€€ 
Assert
€€ 
(
€€ 
$num
€€ 
<=
€€ 
index
€€ #
&&
€€$ &
index
€€' ,
<=
€€- /

cohortData
€€0 :
.
€€: ;
Count
€€; @
)
€€@ A
;
€€A B
Debug
‹‹ 
.
‹‹ 
Assert
‹‹ 
(
‹‹ 
site
‹‹ 
!=
‹‹  
null
‹‹! %
)
‹‹% &
;
‹‹& '
Cohort
ﬁﬁ 
cohort
ﬁﬁ 
=
ﬁﬁ 
new
ﬁﬁ 
Cohort
ﬁﬁ  &
(
ﬁﬁ& '
species
ﬁﬁ' .
,
ﬁﬁ. /

cohortData
ﬁﬁ0 :
[
ﬁﬁ: ;
index
ﬁﬁ; @
]
ﬁﬁ@ A
)
ﬁﬁA B
;
ﬁﬁB C
if
‡‡ 
(
‡‡ 
isDebugEnabled
‡‡ 
)
‡‡ 
log
·· 
.
·· 
DebugFormat
·· 
(
··  
$str
··  H
,
··H I
cohort
‚‚  &
.
‚‚& '
Species
‚‚' .
.
‚‚. /
Name
‚‚/ 3
,
‚‚3 4
cohort
‚‚5 ;
.
‚‚; <
Age
‚‚< ?
,
‚‚? @
cohort
‚‚A G
.
‚‚G H
Biomass
‚‚H O
)
‚‚O P
;
‚‚P Q
if
ÂÂ 
(
ÂÂ 
cohort
ÂÂ 
.
ÂÂ 
Age
ÂÂ 
>=
ÂÂ 
species
ÂÂ %
.
ÂÂ% &
	Longevity
ÂÂ& /
)
ÂÂ/ 0
{
ÊÊ 
RemoveCohort
ÁÁ 
(
ÁÁ 
index
ÁÁ "
,
ÁÁ" #
cohort
ÁÁ$ *
,
ÁÁ* +
site
ÁÁ, 0
,
ÁÁ0 1
null
ÁÁ2 6
)
ÁÁ6 7
;
ÁÁ7 8
return
ËË 
index
ËË 
;
ËË 
}
ÈÈ 
cohort
ÎÎ 
.
ÎÎ 
IncrementAge
ÎÎ 
(
ÎÎ  
)
ÎÎ  !
;
ÎÎ! "
int
ÌÌ 
biomassChange
ÌÌ 
=
ÌÌ 
Cohorts
ÌÌ  '
.
ÌÌ' (
BiomassCalculator
ÌÌ( 9
.
ÌÌ9 :
ComputeChange
ÌÌ: G
(
ÌÌG H
cohort
ÌÌH N
,
ÌÌN O
site
ÌÌP T
)
ÌÌT U
;
ÌÌU V
Debug
ÔÔ 
.
ÔÔ 
Assert
ÔÔ 
(
ÔÔ 
-
ÔÔ 
(
ÔÔ 
cohort
ÔÔ !
.
ÔÔ! "
Biomass
ÔÔ" )
)
ÔÔ) *
<=
ÔÔ+ -
biomassChange
ÔÔ. ;
)
ÔÔ; <
;
ÔÔ< =
cohort
ÒÒ 
.
ÒÒ 
ChangeBiomass
ÒÒ  
(
ÒÒ  !
biomassChange
ÒÒ! .
)
ÒÒ. /
;
ÒÒ/ 0
if
ÛÛ 
(
ÛÛ 
cohort
ÛÛ 
.
ÛÛ 
Biomass
ÛÛ 
>
ÛÛ  
$num
ÛÛ! "
)
ÛÛ" #
{
ÙÙ 

cohortData
ıı 
[
ıı 
index
ıı  
]
ıı  !
=
ıı" #
cohort
ıı$ *
.
ıı* +
Data
ıı+ /
;
ıı/ 0
return
ˆˆ 
index
ˆˆ 
+
ˆˆ 
$num
ˆˆ  
;
ˆˆ  !
}
˜˜ 
else
¯¯ 
{
˘˘ 
RemoveCohort
˙˙ 
(
˙˙ 
index
˙˙ "
,
˙˙" #
cohort
˙˙$ *
,
˙˙* +
site
˙˙, 0
,
˙˙0 1
null
˙˙2 6
)
˙˙6 7
;
˙˙7 8
return
˚˚ 
index
˚˚ 
;
˚˚ 
}
¸¸ 
}
˝˝ 	
private
ÅÅ 
void
ÅÅ 
RemoveCohort
ÅÅ !
(
ÅÅ! "
int
ÅÅ" %
index
ÅÅ- 2
,
ÅÅ2 3
ICohort
ÇÇ" )
cohort
ÇÇ- 3
,
ÇÇ3 4

ActiveSite
ÉÉ" ,
site
ÉÉ- 1
,
ÉÉ1 2
ExtensionType
ÑÑ" /
disturbanceType
ÑÑ0 ?
)
ÑÑ? @
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
isDebugEnabled
ÜÜ 
)
ÜÜ 
{
áá 
log
àà 
.
àà 
DebugFormat
àà 
(
àà  
$str
àà  Q
,
ààQ R
cohort
ââ  &
.
ââ& '
Species
ââ' .
.
ââ. /
Name
ââ/ 3
,
ââ3 4
cohort
ââ5 ;
.
ââ; <
Age
ââ< ?
,
ââ? @
cohort
ââA G
.
ââG H
Biomass
ââH O
,
ââO P
disturbanceType
ää  /
!=
ää0 2
null
ää3 7
?
ãã$ %
disturbanceType
ãã& 5
.
ãã5 6
Name
ãã6 :
:
åå$ %
cohort
åå& ,
.
åå, -
Age
åå- 0
>=
åå1 3
species
åå4 ;
.
åå; <
	Longevity
åå< E
?
çç( )
$str
çç* 6
:
éé( )
cohort
éé* 0
.
éé0 1
Biomass
éé1 8
==
éé9 ;
$num
éé< =
?
èè, -
$str
èè. 9
:
êê, -
$str
êê. 7
)
êê7 8
;
êê8 9
}
ëë 

cohortData
íí 
.
íí 
RemoveAt
íí 
(
íí  
index
íí  %
)
íí% &
;
íí& '
Cohort
ìì 
.
ìì 
Died
ìì 
(
ìì 
this
ìì 
,
ìì 
cohort
ìì $
,
ìì$ %
site
ìì& *
,
ìì* +
disturbanceType
ìì, ;
)
ìì; <
;
ìì< =
}
îî 	
public
úú 
void
úú !
UpdateMaturePresent
úú '
(
úú' (
)
úú( )
{
ùù 	
isMaturePresent
ûû 
=
ûû 
false
ûû #
;
ûû# $
for
üü 
(
üü 
int
üü 
i
üü 
=
üü 
$num
üü 
;
üü 
i
üü 
<
üü 

cohortData
üü  *
.
üü* +
Count
üü+ 0
;
üü0 1
i
üü2 3
++
üü3 5
)
üü5 6
{
†† 
if
°° 
(
°° 

cohortData
°° 
[
°° 
i
°°  
]
°°  !
.
°°! "
Age
°°" %
>=
°°& (
species
°°) 0
.
°°0 1
Maturity
°°1 9
)
°°9 :
{
¢¢ 
isMaturePresent
££ #
=
££$ %
true
££& *
;
££* +
break
§§ 
;
§§ 
}
•• 
}
¶¶ 
}
ßß 	
public
≤≤ 
int
≤≤ 
MarkCohorts
≤≤ 
(
≤≤ 
IDisturbance
≤≤ +
disturbance
≤≤, 7
)
≤≤7 8
{
≥≥ 	
isMaturePresent
∂∂ 
=
∂∂ 
false
∂∂ #
;
∂∂# $
int
∑∑ 
totalReduction
∑∑ 
=
∑∑  
$num
∑∑! "
;
∑∑" #
for
∏∏ 
(
∏∏ 
int
∏∏ 
i
∏∏ 
=
∏∏ 

cohortData
∏∏ #
.
∏∏# $
Count
∏∏$ )
-
∏∏* +
$num
∏∏, -
;
∏∏- .
i
∏∏/ 0
>=
∏∏1 3
$num
∏∏4 5
;
∏∏5 6
i
∏∏7 8
--
∏∏8 :
)
∏∏: ;
{
ππ 
Cohort
∫∫ 
cohort
∫∫ 
=
∫∫ 
new
∫∫  #
Cohort
∫∫$ *
(
∫∫* +
species
∫∫+ 2
,
∫∫2 3

cohortData
∫∫4 >
[
∫∫> ?
i
∫∫? @
]
∫∫@ A
)
∫∫A B
;
∫∫B C
int
ªª 
	reduction
ªª 
=
ªª 
disturbance
ªª  +
.
ªª+ ,&
ReduceOrKillMarkedCohort
ªª, D
(
ªªD E
cohort
ªªE K
)
ªªK L
;
ªªL M
if
ºº 
(
ºº 
	reduction
ºº 
>
ºº 
$num
ºº  !
)
ºº! "
{
ΩΩ 
totalReduction
ææ "
+=
ææ# %
	reduction
ææ& /
;
ææ/ 0
if
øø 
(
øø 
	reduction
øø !
<
øø" #
cohort
øø$ *
.
øø* +
Biomass
øø+ 2
)
øø2 3
{
¿¿ 
cohort
¡¡ 
.
¡¡ 
ChangeBiomass
¡¡ ,
(
¡¡, -
-
¡¡- .
	reduction
¡¡. 7
)
¡¡7 8
;
¡¡8 9

cohortData
¬¬ "
[
¬¬" #
i
¬¬# $
]
¬¬$ %
=
¬¬& '
cohort
¬¬( .
.
¬¬. /
Data
¬¬/ 3
;
¬¬3 4
}
√√ 
else
ƒƒ 
{
≈≈ 
RemoveCohort
∆∆ $
(
∆∆$ %
i
∆∆% &
,
∆∆& '
cohort
∆∆( .
,
∆∆. /
disturbance
∆∆0 ;
.
∆∆; <
CurrentSite
∆∆< G
,
∆∆G H
disturbance
««% 0
.
««0 1
Type
««1 5
)
««5 6
;
««6 7
cohort
»» 
=
»»  
null
»»! %
;
»»% &
}
…… 
}
   
if
ÀÀ 
(
ÀÀ 
cohort
ÀÀ 
!=
ÀÀ 
null
ÀÀ "
&&
ÀÀ# %
cohort
ÀÀ& ,
.
ÀÀ, -
Age
ÀÀ- 0
>=
ÀÀ1 3
species
ÀÀ4 ;
.
ÀÀ; <
Maturity
ÀÀ< D
)
ÀÀD E
isMaturePresent
ÃÃ #
=
ÃÃ$ %
true
ÃÃ& *
;
ÃÃ* +
}
ÕÕ 
return
ŒŒ 
totalReduction
ŒŒ !
;
ŒŒ! "
}
œœ 	
private
”” 
static
”” 
AgeOnlyCohorts
”” %
.
””% &$
SpeciesCohortBoolArray
””& <$
isSpeciesCohortDamaged
””= S
;
””S T
static
◊◊ 
SpeciesCohorts
◊◊ 
(
◊◊ 
)
◊◊ 
{
ÿÿ 	$
isSpeciesCohortDamaged
ŸŸ "
=
ŸŸ# $
new
ŸŸ% (
AgeOnlyCohorts
ŸŸ) 7
.
ŸŸ7 8$
SpeciesCohortBoolArray
ŸŸ8 N
(
ŸŸN O
)
ŸŸO P
;
ŸŸP Q
}
⁄⁄ 	
public
‰‰ 
int
‰‰ 
MarkCohorts
‰‰ 
(
‰‰ 
AgeOnlyCohorts
‰‰ -
.
‰‰- .(
ISpeciesCohortsDisturbance
‰‰. H
disturbance
‰‰I T
)
‰‰T U
{
ÂÂ 	$
isSpeciesCohortDamaged
ÊÊ "
.
ÊÊ" #
SetAllFalse
ÊÊ# .
(
ÊÊ. /
Count
ÊÊ/ 4
)
ÊÊ4 5
;
ÊÊ5 6
disturbance
ÁÁ 
.
ÁÁ !
MarkCohortsForDeath
ÁÁ +
(
ÁÁ+ ,
this
ÁÁ, 0
,
ÁÁ0 1$
isSpeciesCohortDamaged
ÁÁ2 H
)
ÁÁH I
;
ÁÁI J
isMaturePresent
ÎÎ 
=
ÎÎ 
false
ÎÎ #
;
ÎÎ# $
int
ÏÏ 
totalReduction
ÏÏ 
=
ÏÏ  
$num
ÏÏ! "
;
ÏÏ" #
for
ÌÌ 
(
ÌÌ 
int
ÌÌ 
i
ÌÌ 
=
ÌÌ 

cohortData
ÌÌ #
.
ÌÌ# $
Count
ÌÌ$ )
-
ÌÌ* +
$num
ÌÌ, -
;
ÌÌ- .
i
ÌÌ/ 0
>=
ÌÌ1 3
$num
ÌÌ4 5
;
ÌÌ5 6
i
ÌÌ7 8
--
ÌÌ8 :
)
ÌÌ: ;
{
ÓÓ 
if
ÔÔ 
(
ÔÔ $
isSpeciesCohortDamaged
ÔÔ *
[
ÔÔ* +
i
ÔÔ+ ,
]
ÔÔ, -
)
ÔÔ- .
{
 
Cohort
ÒÒ 
cohort
ÒÒ !
=
ÒÒ" #
new
ÒÒ$ '
Cohort
ÒÒ( .
(
ÒÒ. /
species
ÒÒ/ 6
,
ÒÒ6 7

cohortData
ÒÒ8 B
[
ÒÒB C
i
ÒÒC D
]
ÒÒD E
)
ÒÒE F
;
ÒÒF G
totalReduction
ÚÚ "
+=
ÚÚ# %
cohort
ÚÚ& ,
.
ÚÚ, -
Biomass
ÚÚ- 4
;
ÚÚ4 5
RemoveCohort
ÛÛ  
(
ÛÛ  !
i
ÛÛ! "
,
ÛÛ" #
cohort
ÛÛ$ *
,
ÛÛ* +
disturbance
ÛÛ, 7
.
ÛÛ7 8
CurrentSite
ÛÛ8 C
,
ÛÛC D
disturbance
ÙÙ! ,
.
ÙÙ, -
Type
ÙÙ- 1
)
ÙÙ1 2
;
ÙÙ2 3
Cohort
ıı 
.
ıı (
KilledByAgeOnlyDisturbance
ıı 5
(
ıı5 6
this
ıı6 :
,
ıı: ;
cohort
ıı< B
,
ııB C
disturbance
ııD O
.
ııO P
CurrentSite
ııP [
,
ıı[ \
disturbance
ıı] h
.
ııh i
Type
ııi m
)
ıım n
;
ıın o
}
ˆˆ 
else
˜˜ 
if
˜˜ 
(
˜˜ 

cohortData
˜˜ #
[
˜˜# $
i
˜˜$ %
]
˜˜% &
.
˜˜& '
Age
˜˜' *
>=
˜˜+ -
species
˜˜. 5
.
˜˜5 6
Maturity
˜˜6 >
)
˜˜> ?
{
˜˜@ A
isMaturePresent
¯¯ #
=
¯¯$ %
true
¯¯& *
;
¯¯* +
}
˘˘ 
}
˙˙ 
return
˚˚ 
totalReduction
˚˚ !
;
˚˚! "
}
¸¸ 	
IEnumerator
ÄÄ 
<
ÄÄ 
ICohort
ÄÄ 
>
ÄÄ 
IEnumerable
ÄÄ (
<
ÄÄ( )
ICohort
ÄÄ) 0
>
ÄÄ0 1
.
ÄÄ1 2
GetEnumerator
ÄÄ2 ?
(
ÄÄ? @
)
ÄÄ@ A
{
ÅÅ 	
foreach
ÇÇ 
(
ÇÇ 

CohortData
ÇÇ 
data
ÇÇ  $
in
ÇÇ% '

cohortData
ÇÇ( 2
)
ÇÇ2 3
yield
ÉÉ 
return
ÉÉ 
new
ÉÉ  
Cohort
ÉÉ! '
(
ÉÉ' (
species
ÉÉ( /
,
ÉÉ/ 0
data
ÉÉ1 5
)
ÉÉ5 6
;
ÉÉ6 7
}
ÑÑ 	
IEnumerator
àà 
IEnumerable
àà 
.
àà  
GetEnumerator
àà  -
(
àà- .
)
àà. /
{
ââ 	
return
ää 
(
ää 
(
ää 
IEnumerable
ää  
<
ää  !
ICohort
ää! (
>
ää( )
)
ää) *
this
ää* .
)
ää. /
.
ää/ 0
GetEnumerator
ää0 =
(
ää= >
)
ää> ?
;
ää? @
}
ãã 	
IEnumerator
èè 
<
èè 
Landis
èè 
.
èè 
Library
èè "
.
èè" #
AgeOnlyCohorts
èè# 1
.
èè1 2
ICohort
èè2 9
>
èè9 :
IEnumerable
èè; F
<
èèF G
Landis
èèG M
.
èèM N
Library
èèN U
.
èèU V
AgeOnlyCohorts
èèV d
.
èèd e
ICohort
èèe l
>
èèl m
.
èèm n
GetEnumerator
èèn {
(
èè{ |
)
èè| }
{
êê 	
foreach
ëë 
(
ëë 

CohortData
ëë 
data
ëë  $
in
ëë% '

cohortData
ëë( 2
)
ëë2 3
yield
íí 
return
íí 
new
íí  
Landis
íí! '
.
íí' (
Library
íí( /
.
íí/ 0
AgeOnlyCohorts
íí0 >
.
íí> ?
Cohort
íí? E
(
ííE F
species
ííF M
,
ííM N
data
ííO S
.
ííS T
Age
ííT W
)
ííW X
;
ííX Y
}
ìì 	
}
îî 
}ïï ÿ
C/home/derek/landis/Library-Biomass-Cohort/src/WrappedDisturbance.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{		 
public 

class 
WrappedDisturbance #
: 	
IDisturbance
 
{ 
private 
readonly 
AgeOnlyCohorts '
.' (
ICohortDisturbance( : 
ageCohortDisturbance; O
;O P
public 
WrappedDisturbance !
(! "
AgeOnlyCohorts" 0
.0 1
ICohortDisturbance1 C 
ageCohortDisturbanceD X
)X Y
{ 	
this 
.  
ageCohortDisturbance %
=& ' 
ageCohortDisturbance( <
;< =
} 	
public 
ExtensionType 
Type !
{ 	
get 
{ 
return  
ageCohortDisturbance +
.+ ,
Type, 0
;0 1
} 
}   	
public$$ 

ActiveSite$$ 
CurrentSite$$ %
{%% 	
get&& 
{&& 
return''  
ageCohortDisturbance'' +
.''+ ,
CurrentSite'', 7
;''7 8
}(( 
})) 	
public-- 
int-- $
ReduceOrKillMarkedCohort-- +
(--+ ,
ICohort--, 3
cohort--4 :
)--: ;
{.. 	
if// 
(//  
ageCohortDisturbance// $
.//$ %
MarkCohortForDeath//% 7
(//7 8
cohort//8 >
)//> ?
)//? @
{//A B
Cohort00 
.00 &
KilledByAgeOnlyDisturbance00 1
(001 2
this002 6
,006 7
cohort008 >
,00> ? 
ageCohortDisturbance112 F
.11F G
CurrentSite11G R
,11R S 
ageCohortDisturbance222 F
.22F G
Type22G K
)22K L
;22L M
return33 
cohort33 
.33 
Biomass33 %
;33% &
}44 
else55 
return66 
$num66 
;66 
}77 	
}88 
}99 