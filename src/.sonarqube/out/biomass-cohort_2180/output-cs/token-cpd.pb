˜6
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
ISpecies 
species  
;  !
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
)**8 9
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
}FF º!
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
}pp ›
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
{ 
private 
ICohort 
cohort 
; 
private 

ActiveSite 
site 
;  
private 
ExtensionType 
disturbanceType -
;- .
public$$ 
ICohort$$ 
Cohort$$ 
{%% 	
get&& 
{'' 
return(( 
cohort(( 
;(( 
})) 
}** 	
public11 

ActiveSite11 
Site11 
{22 	
get33 
{44 
return55 
site55 
;55 
}66 
}77 	
publicAA 
ExtensionTypeAA 
DisturbanceTypeAA ,
{BB 	
getCC 
{DD 
returnEE 
disturbanceTypeEE &
;EE& '
}FF 
}GG 	
publicNN 
DeathEventArgsNN 
(NN 
ICohortNN %
cohortNN& ,
,NN, -

ActiveSiteOO (
siteOO) -
,OO- .
ExtensionTypePP +
disturbanceTypePP, ;
)PP; <
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
;TT2 3
}UU 	
}VV 
}WW Ñ
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
} ¬

E/home/derek/landis/Library-Biomass-Cohort/src/DisturbanceEventArgs.cs
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
DisturbanceEventArgs %
{ 
private 

ActiveSite 
site 
;  
private 
ExtensionType 
disturbanceType -
;- .
public 

ActiveSite 
Site 
{ 	
get 
{ 
return 
site 
; 
} 
} 	
public## 
ExtensionType## 
DisturbanceType## ,
{$$ 	
get%% 
{%% 
return&& 
disturbanceType&& &
;&&& '
}'' 
}(( 	
public//  
DisturbanceEventArgs// #
(//# $

ActiveSite//$ .
site/// 3
,//3 4
ExtensionType00$ 1
disturbanceType002 A
)00A B
{11 	
this22 
.22 
site22 
=22 
site22 
;22 
this33 
.33 
disturbanceType33  
=33! "
disturbanceType33# 2
;332 3
}44 	
}55 
}66 ⁄
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
int55 
ComputeChange55 
(55 
ICohort55 !
cohort55" (
,55( )

ActiveSite66 $
site66% )
)66) *
;66* +

PercentageEE %
ComputeNonWoodyPercentageEE ,
(EE, -
ICohortEE- 4
cohortEE8 >
,EE> ?

ActiveSiteFF- 7
siteFF8 <
)FF< =
;FF= >
}HH 
}II ∞
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
} Ç!
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
private 
SpeciesCohorts 
cohorts &
;& '
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
{kk 	
ifll 
(ll 
!ll 
indexll 
.ll 
HasValuell  
)ll  !
throwmm $
NoCurrentCohortExceptionmm .
(mm. /
)mm/ 0
;mm0 1
	nextIndexpp 
=pp 
cohortspp 
.pp  

GrowCohortpp  *
(pp* +
indexpp+ 0
.pp0 1
Valuepp1 6
,pp6 7
sitepp8 <
)pp< =
;pp= >
currentCohortDiedrr 
=rr 
(rr  !
	nextIndexrr! *
==rr+ -
indexrr. 3
.rr3 4
Valuerr4 9
)rr9 :
;rr: ;
returnss 
;ss 
}tt 	
public 
bool 
MoveNext 
( 
) 
{
ÄÄ 	
index
ÅÅ 
=
ÅÅ 
	nextIndex
ÅÅ 
;
ÅÅ 
if
ÇÇ 
(
ÇÇ 
$num
ÇÇ 
<=
ÇÇ 
index
ÇÇ 
&&
ÇÇ 
index
ÇÇ #
<
ÇÇ$ %
cohorts
ÇÇ& -
.
ÇÇ- .
Count
ÇÇ. 3
)
ÇÇ3 4
{
ÇÇ5 6
currentCohortAge
ÉÉ  
=
ÉÉ! "
cohorts
ÉÉ# *
.
ÉÉ* +
GetAge
ÉÉ+ 1
(
ÉÉ1 2
index
ÉÉ2 7
.
ÉÉ7 8
Value
ÉÉ8 =
)
ÉÉ= >
;
ÉÉ> ?
return
ÑÑ 
true
ÑÑ 
;
ÑÑ 
}
ÖÖ 
else
ÜÜ 
{
ÜÜ 
index
àà 
=
àà 
null
àà 
;
àà 
return
ââ 
false
ââ 
;
ââ 
}
ää 
}
ãã 	
}
åå 
}çç ´
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
private 
ICohort 
cohort 
; 
private 

ActiveSite 
site 
;  
private 
ExtensionType 
disturbanceType -
;- .
private 
float 
	reduction 
;  
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
} îó
</home/derek/landis/Library-Biomass-Cohort/src/SiteCohorts.cs
	namespace 	
Landis
 
. 
Library 
. 
BiomassCohorts '
{ 
public 

class 
SiteCohorts 
: 	
ISiteCohorts
 
, 
AgeOnlyCohorts &
.& '
ISiteCohorts' 3
{ 
private 
static 
readonly 
ILog  $
log% (
=) *

LogManager+ 5
.5 6
	GetLogger6 ?
(? @

MethodBase@ J
.J K
GetCurrentMethodK [
([ \
)\ ]
.] ^
DeclaringType^ k
)k l
;l m
public 
int 
InitialBiomass !
;! "
private 
List 
< 
SpeciesCohorts #
># $
cohorts% ,
;, -
public 
ISpeciesCohorts 
this #
[# $
ISpecies$ ,
species- 4
]4 5
{   	
get!! 
{"" 
return## 

GetCohorts## !
(##! "
species##" )
)##) *
;##* +
}$$ 
}%% 	
private** 
SpeciesCohorts** 

GetCohorts** )
(**) *
ISpecies*** 2
species**3 :
)**: ;
{++ 	
for,, 
(,, 
int,, 
i,, 
=,, 
$num,, 
;,, 
i,, 
<,, 
cohorts,,  '
.,,' (
Count,,( -
;,,- .
i,,/ 0
++,,0 2
),,2 3
{-- 
SpeciesCohorts.. 
speciesCohorts.. -
=... /
cohorts..0 7
[..7 8
i..8 9
]..9 :
;..: ;
if// 
(// 
speciesCohorts// "
.//" #
Species//# *
==//+ -
species//. 5
)//5 6
return00 
speciesCohorts00 )
;00) *
}11 
return22 
null22 
;22 
}33 	
	AgeCohort88 
.88 
ISpeciesCohorts88 !
Landis88" (
.88( )
Library88) 0
.880 1
Cohorts881 8
.888 9
ISiteCohorts889 E
<88E F
Landis88F L
.88L M
Library88M T
.88T U
AgeOnlyCohorts88U c
.88c d
ISpeciesCohorts88d s
>88s t
.88t u
this88u y
[88y z
ISpecies	88z Ç
species
88É ä
]
88ä ã
{99 	
get:: 
{;; 
return<< 

GetCohorts<< !
(<<! "
species<<" )
)<<) *
;<<* +
}== 
}>> 	
publicCC 
SiteCohortsCC 
(CC 
)CC 
{DD 	
thisEE 
.EE 
cohortsEE 
=EE 
newEE 
ListEE #
<EE# $
SpeciesCohortsEE$ 2
>EE2 3
(EE3 4
)EE4 5
;EE5 6
}FF 	
publicHH 
voidHH 
GrowHH 
(HH 
ushortHH 
yearsHH  %
,HH% &

ActiveSiteHH' 1
siteHH2 6
,HH6 7
intHH8 ;
?HH; <
successionTimestepHH= O
,HHO P
ICoreHHQ V
mCoreHHW \
)HH\ ]
{II 	
GrowJJ 
(JJ 
siteJJ 
,JJ 
successionTimestepJJ )
.JJ) *
HasValueJJ* 2
)JJ2 3
;JJ3 4
}KK 	
public]] 
void]] 
Grow]] 
(]] 

ActiveSite]] #
site]]$ (
,]]( )
bool]]* . 
isSuccessionTimestep]]/ C
)]]C D
{^^ 	
if__ 
(__  
isSuccessionTimestep__ $
&&__% '
Cohorts__( /
.__/ 0
SuccessionTimeStep__0 B
>__C D
$num__E F
)__F G
foreach`` 
(`` 
SpeciesCohorts`` '
speciesCohorts``( 6
in``7 9
cohorts``: A
)``A B
speciesCohortsaa "
.aa" #
CombineYoungCohortsaa# 6
(aa6 7
)aa7 8
;aa8 9
GrowFor1Yearcc 
(cc 
sitecc 
)cc 
;cc 
}dd 	
privateoo 
voidoo 
GrowFor1Yearoo !
(oo! "

ActiveSiteoo" ,
siteoo- 1
)oo1 2
{pp 	
Listvv 
<vv 
OldToYoungIteratorvv #
>vv# $
itorsvv% *
=vv+ ,
newvv- 0
Listvv1 5
<vv5 6
OldToYoungIteratorvv6 H
>vvH I
(vvI J
)vvJ K
;vvK L
foreachww 
(ww 
SpeciesCohortsww #
speciesCohortsww$ 2
inww3 5
cohortsww6 =
)ww= >
{xx 
OldToYoungIteratoryy "
itoryy# '
=yy( )
speciesCohortsyy* 8
.yy8 9

OldToYoungyy9 C
;yyC D
InsertIteratorzz 
(zz 
itorzz #
,zz# $
itorszz% *
)zz* +
;zz+ ,
}{{ 
while~~ 
(~~ 
itors~~ 
.~~ 
Count~~ 
>~~  
$num~~! "
)~~" #
{  
OldToYoungIterator
ÉÉ "
itor
ÉÉ# '
=
ÉÉ( )
itors
ÉÉ* /
[
ÉÉ/ 0
$num
ÉÉ0 1
]
ÉÉ1 2
;
ÉÉ2 3
itor
ÖÖ 
.
ÖÖ 
GrowCurrentCohort
ÖÖ &
(
ÖÖ& '
site
ÖÖ' +
)
ÖÖ+ ,
;
ÖÖ, -
if
ÜÜ 
(
ÜÜ 
itor
ÜÜ 
.
ÜÜ 
MoveNext
ÜÜ !
(
ÜÜ! "
)
ÜÜ" #
)
ÜÜ# $
{
áá 
if
ää 
(
ää 
itors
ää 
.
ää 
Count
ää #
>
ää$ %
$num
ää& '
&&
ää( *
itor
ää+ /
.
ää/ 0
Age
ää0 3
<
ää4 5
itors
ää6 ;
[
ää; <
$num
ää< =
]
ää= >
.
ää> ?
Age
ää? B
)
ääB C
{
ãã 
itors
éé 
.
éé 
RemoveAt
éé &
(
éé& '
$num
éé' (
)
éé( )
;
éé) *
InsertIterator
èè &
(
èè& '
itor
èè' +
,
èè+ ,
itors
èè- 2
)
èè2 3
;
èè3 4
}
êê 
}
ëë 
else
íí 
{
ìì 
itors
ïï 
.
ïï 
RemoveAt
ïï "
(
ïï" #
$num
ïï# $
)
ïï$ %
;
ïï% &
if
óó 
(
óó 
itor
óó 
.
óó 
SpeciesCohorts
óó +
.
óó+ ,
Count
óó, 1
>
óó2 3
$num
óó4 5
)
óó5 6
itor
òò 
.
òò 
SpeciesCohorts
òò +
.
òò+ ,!
UpdateMaturePresent
òò, ?
(
òò? @
)
òò@ A
;
òòA B
else
ôô 
{
öö 
for
ùù 
(
ùù 
int
ùù  
i
ùù! "
=
ùù# $
$num
ùù% &
;
ùù& '
i
ùù( )
<
ùù* +
cohorts
ùù, 3
.
ùù3 4
Count
ùù4 9
;
ùù9 :
i
ùù; <
++
ùù< >
)
ùù> ?
{
ûû 
if
üü 
(
üü  
cohorts
üü  '
[
üü' (
i
üü( )
]
üü) *
==
üü+ -
itor
üü. 2
.
üü2 3
SpeciesCohorts
üü3 A
)
üüA B
{
†† 
cohorts
°°  '
.
°°' (
RemoveAt
°°( 0
(
°°0 1
i
°°1 2
)
°°2 3
;
°°3 4
break
¢¢  %
;
¢¢% &
}
££ 
}
§§ 
}
•• 
}
¶¶ 
}
ßß 
}
©© 	
private
±± 
void
±± 
InsertIterator
±± #
(
±±# $ 
OldToYoungIterator
±±$ 6
itor
±±7 ;
,
±±; <
List
≤≤$ (
<
≤≤( ) 
OldToYoungIterator
≤≤) ;
>
≤≤; <
itors
≤≤= B
)
≤≤B C
{
≥≥ 	
bool
¥¥ 
inserted
¥¥ 
=
¥¥ 
false
¥¥ !
;
¥¥! "
for
µµ 
(
µµ 
int
µµ 
i
µµ 
=
µµ 
$num
µµ 
;
µµ 
i
µµ 
<
µµ 
itors
µµ  %
.
µµ% &
Count
µµ& +
;
µµ+ ,
i
µµ- .
++
µµ. 0
)
µµ0 1
{
∂∂ 
if
∑∑ 
(
∑∑ 
itor
∑∑ 
.
∑∑ 
Age
∑∑ 
>
∑∑ 
itors
∑∑ $
[
∑∑$ %
i
∑∑% &
]
∑∑& '
.
∑∑' (
Age
∑∑( +
)
∑∑+ ,
{
∏∏ 
itors
ππ 
.
ππ 
Insert
ππ  
(
ππ  !
i
ππ! "
,
ππ" #
itor
ππ$ (
)
ππ( )
;
ππ) *
inserted
∫∫ 
=
∫∫ 
true
∫∫ #
;
∫∫# $
break
ªª 
;
ªª 
}
ºº 
}
ΩΩ 
if
ææ 
(
ææ 
!
ææ 
inserted
ææ 
)
ææ 
itors
øø 
.
øø 
Add
øø 
(
øø 
itor
øø 
)
øø 
;
øø  
}
¿¿ 	
public
ƒƒ 
int
ƒƒ (
ReduceOrKillBiomassCohorts
ƒƒ -
(
ƒƒ- .
IDisturbance
ƒƒ. :
disturbance
ƒƒ; F
)
ƒƒF G
{
≈≈ 	
int
∆∆ 
totalReduction
∆∆ 
=
∆∆  
$num
∆∆! "
;
∆∆" #
for
…… 
(
…… 
int
…… 
i
…… 
=
…… 
cohorts
……  
.
……  !
Count
……! &
-
……' (
$num
……) *
;
……* +
i
……, -
>=
……. 0
$num
……1 2
;
……2 3
i
……4 5
--
……5 7
)
……7 8
{
   
totalReduction
ÀÀ 
+=
ÀÀ !
cohorts
ÀÀ" )
[
ÀÀ) *
i
ÀÀ* +
]
ÀÀ+ ,
.
ÀÀ, -
MarkCohorts
ÀÀ- 8
(
ÀÀ8 9
disturbance
ÀÀ9 D
)
ÀÀD E
;
ÀÀE F
if
ÃÃ 
(
ÃÃ 
cohorts
ÃÃ 
[
ÃÃ 
i
ÃÃ 
]
ÃÃ 
.
ÃÃ 
Count
ÃÃ $
==
ÃÃ% '
$num
ÃÃ( )
)
ÃÃ) *
cohorts
ÕÕ 
.
ÕÕ 
RemoveAt
ÕÕ $
(
ÕÕ$ %
i
ÕÕ% &
)
ÕÕ& '
;
ÕÕ' (
}
ŒŒ 
return
–– 
totalReduction
–– !
;
––! "
}
—— 	
void
’’ 
	AgeCohort
’’ 
.
’’ 
ISiteCohorts
’’ #
.
’’# $!
RemoveMarkedCohorts
’’$ 7
(
’’7 8
	AgeCohort
’’8 A
.
’’A B 
ICohortDisturbance
’’B T
disturbance
’’U `
)
’’` a
{
÷÷ 	
if
◊◊ 
(
◊◊ %
AgeOnlyDisturbanceEvent
◊◊ '
!=
◊◊( *
null
◊◊+ /
)
◊◊/ 0%
AgeOnlyDisturbanceEvent
ÿÿ '
(
ÿÿ' (
this
ÿÿ( ,
,
ÿÿ, -
new
ÿÿ. 1"
DisturbanceEventArgs
ÿÿ2 F
(
ÿÿF G
disturbance
ÿÿG R
.
ÿÿR S
CurrentSite
ÿÿS ^
,
ÿÿ^ _
disturbance
ŸŸG R
.
ŸŸR S
Type
ŸŸS W
)
ŸŸW X
)
ŸŸX Y
;
ŸŸY Z(
ReduceOrKillBiomassCohorts
⁄⁄ &
(
⁄⁄& '
new
⁄⁄' * 
WrappedDisturbance
⁄⁄+ =
(
⁄⁄= >
disturbance
⁄⁄> I
)
⁄⁄I J
)
⁄⁄J K
;
⁄⁄K L
}
€€ 	
void
ﬂﬂ 
	AgeCohort
ﬂﬂ 
.
ﬂﬂ 
ISiteCohorts
ﬂﬂ #
.
ﬂﬂ# $!
RemoveMarkedCohorts
ﬂﬂ$ 7
(
ﬂﬂ7 8
	AgeCohort
ﬂﬂ8 A
.
ﬂﬂA B(
ISpeciesCohortsDisturbance
ﬂﬂB \
disturbance
ﬂﬂ] h
)
ﬂﬂh i
{
‡‡ 	
if
·· 
(
·· %
AgeOnlyDisturbanceEvent
·· '
!=
··( *
null
··+ /
)
··/ 0%
AgeOnlyDisturbanceEvent
‚‚ '
(
‚‚' (
this
‚‚( ,
,
‚‚, -
new
‚‚. 1"
DisturbanceEventArgs
‚‚2 F
(
‚‚F G
disturbance
‚‚G R
.
‚‚R S
CurrentSite
‚‚S ^
,
‚‚^ _
disturbance
„„G R
.
„„R S
Type
„„S W
)
„„W X
)
„„X Y
;
„„Y Z
int
ÁÁ 
totalReduction
ÁÁ 
=
ÁÁ  
$num
ÁÁ! "
;
ÁÁ" #
for
ËË 
(
ËË 
int
ËË 
i
ËË 
=
ËË 
cohorts
ËË  
.
ËË  !
Count
ËË! &
-
ËË' (
$num
ËË) *
;
ËË* +
i
ËË, -
>=
ËË. 0
$num
ËË1 2
;
ËË2 3
i
ËË4 5
--
ËË5 7
)
ËË7 8
{
ÈÈ 
totalReduction
ÍÍ 
+=
ÍÍ !
cohorts
ÍÍ" )
[
ÍÍ) *
i
ÍÍ* +
]
ÍÍ+ ,
.
ÍÍ, -
MarkCohorts
ÍÍ- 8
(
ÍÍ8 9
disturbance
ÍÍ9 D
)
ÍÍD E
;
ÍÍE F
if
ÎÎ 
(
ÎÎ 
cohorts
ÎÎ 
[
ÎÎ 
i
ÎÎ 
]
ÎÎ 
.
ÎÎ 
Count
ÎÎ $
==
ÎÎ% '
$num
ÎÎ( )
)
ÎÎ) *
cohorts
ÏÏ 
.
ÏÏ 
RemoveAt
ÏÏ $
(
ÏÏ$ %
i
ÏÏ% &
)
ÏÏ& '
;
ÏÏ' (
}
ÌÌ 
}
ÓÓ 	
public
ıı 
static
ıı 
event
ıı %
DisturbanceEventHandler
ıı 3%
AgeOnlyDisturbanceEvent
ıı4 K
;
ııK L
public
˝˝ 
void
˝˝ 
AddNewCohort
˝˝  
(
˝˝  !
ISpecies
˝˝! )
species
˝˝* 1
,
˝˝1 2
ushort
˝˝3 9
age
˝˝: =
,
˝˝= >
int
˝˝? B
initialBiomass
˝˝C Q
)
˝˝Q R
{
˛˛ 	
bool
ˇˇ 
speciesPresent
ˇˇ 
=
ˇˇ  !
false
ˇˇ" '
;
ˇˇ' (
for
ÄÄ 
(
ÄÄ 
int
ÄÄ 
i
ÄÄ 
=
ÄÄ 
$num
ÄÄ 
;
ÄÄ 
i
ÄÄ 
<
ÄÄ 
cohorts
ÄÄ  '
.
ÄÄ' (
Count
ÄÄ( -
;
ÄÄ- .
i
ÄÄ/ 0
++
ÄÄ0 2
)
ÄÄ2 3
{
ÅÅ 
SpeciesCohorts
ÇÇ 
speciesCohorts
ÇÇ -
=
ÇÇ. /
cohorts
ÇÇ0 7
[
ÇÇ7 8
i
ÇÇ8 9
]
ÇÇ9 :
;
ÇÇ: ;
if
ÉÉ 
(
ÉÉ 
speciesCohorts
ÉÉ "
.
ÉÉ" #
Species
ÉÉ# *
==
ÉÉ+ -
species
ÉÉ. 5
)
ÉÉ5 6
{
ÑÑ 
speciesCohorts
ÖÖ "
.
ÖÖ" #
AddNewCohort
ÖÖ# /
(
ÖÖ/ 0
age
ÖÖ0 3
,
ÖÖ3 4
initialBiomass
ÖÖ5 C
)
ÖÖC D
;
ÖÖD E
speciesPresent
ÜÜ "
=
ÜÜ# $
true
ÜÜ% )
;
ÜÜ) *
break
áá 
;
áá 
}
àà 
}
ââ 
if
ãã 
(
ãã 
!
ãã 
speciesPresent
ãã 
)
ãã  
cohorts
åå 
.
åå 
Add
åå 
(
åå 
new
åå 
SpeciesCohorts
åå  .
(
åå. /
species
åå/ 6
,
åå6 7
age
åå8 ;
,
åå; <
initialBiomass
åå= K
)
ååK L
)
ååL M
;
ååM N
}
éé 	
public
îî 
void
îî 
AddNewCohort
îî  
(
îî  !
ISpecies
îî! )
species
îî* 1
)
îî1 2
{
ïï 	
}
ññ 	
public
õõ 
bool
õõ 
IsMaturePresent
õõ #
(
õõ# $
ISpecies
õõ$ ,
species
õõ- 4
)
õõ4 5
{
úú 	
for
ùù 
(
ùù 
int
ùù 
i
ùù 
=
ùù 
$num
ùù 
;
ùù 
i
ùù 
<
ùù 
cohorts
ùù  '
.
ùù' (
Count
ùù( -
;
ùù- .
i
ùù/ 0
++
ùù0 2
)
ùù2 3
{
ùù4 5
SpeciesCohorts
ûû 
speciesCohorts
ûû -
=
ûû. /
cohorts
ûû0 7
[
ûû7 8
i
ûû8 9
]
ûû9 :
;
ûû: ;
if
üü 
(
üü 
speciesCohorts
üü "
.
üü" #
Species
üü# *
==
üü+ -
species
üü. 5
)
üü5 6
{
üü7 8
return
†† 
speciesCohorts
†† )
.
††) *
IsMaturePresent
††* 9
;
††9 :
}
°° 
}
¢¢ 
return
££ 
false
££ 
;
££ 
}
§§ 	
public
©© 
IEnumerator
©© 
<
©© 
ISpeciesCohorts
©© *
>
©©* +
GetEnumerator
©©, 9
(
©©9 :
)
©©: ;
{
™™ 	
foreach
´´ 
(
´´ 
SpeciesCohorts
´´ #
speciesCohorts
´´$ 2
in
´´3 5
cohorts
´´6 =
)
´´= >
yield
¨¨ 
return
¨¨ 
speciesCohorts
¨¨ +
;
¨¨+ ,
}
≠≠ 	
IEnumerator
±± 
IEnumerable
±± 
.
±±  
GetEnumerator
±±  -
(
±±- .
)
±±. /
{
≤≤ 	
return
≥≥ 
GetEnumerator
≥≥  
(
≥≥  !
)
≥≥! "
;
≥≥" #
}
¥¥ 	
IEnumerator
∏∏ 
<
∏∏ 
	AgeCohort
∏∏ 
.
∏∏ 
ISpeciesCohorts
∏∏ -
>
∏∏- .
IEnumerable
∏∏/ :
<
∏∏: ;
	AgeCohort
∏∏; D
.
∏∏D E
ISpeciesCohorts
∏∏E T
>
∏∏T U
.
∏∏U V
GetEnumerator
∏∏V c
(
∏∏c d
)
∏∏d e
{
ππ 	
foreach
∫∫ 
(
∫∫ 
SpeciesCohorts
∫∫ #
speciesCohorts
∫∫$ 2
in
∫∫3 5
cohorts
∫∫6 =
)
∫∫= >
yield
ªª 
return
ªª 
speciesCohorts
ªª +
;
ªª+ ,
}
ºº 	
public
øø 
string
øø 
Write
øø 
(
øø 
)
øø 
{
¿¿ 	
StringBuilder
¡¡ 
builder
¡¡ !
=
¡¡" #
new
¡¡$ '
StringBuilder
¡¡( 5
(
¡¡5 6
)
¡¡6 7
;
¡¡7 8
foreach
¬¬ 
(
¬¬ 
ISpeciesCohorts
¬¬ $

sppcohorts
¬¬% /
in
¬¬0 2
this
¬¬3 7
)
¬¬7 8
foreach
√√ 
(
√√ 
ICohort
√√  
cohort
√√! '
in
√√( *

sppcohorts
√√+ 5
)
√√5 6
builder
ƒƒ 
.
ƒƒ 
AppendFormat
ƒƒ (
(
ƒƒ( )
$str
ƒƒ) 4
,
ƒƒ4 5
cohort
ƒƒ6 <
.
ƒƒ< =
Species
ƒƒ= D
.
ƒƒD E
Name
ƒƒE I
,
ƒƒI J
cohort
ƒƒK Q
.
ƒƒQ R
Age
ƒƒR U
)
ƒƒU V
;
ƒƒV W
return
≈≈ 
builder
≈≈ 
.
≈≈ 
ToString
≈≈ #
(
≈≈# $
)
≈≈$ %
;
≈≈% &
}
∆∆ 	
}
…… 
}   ◊
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
} Åµ
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
ISpecies 
species  
;  !
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
©©< =

CohortData
™™ 
data
™™ 
=
™™  !

cohortData
™™" ,
[
™™, -
i
™™- .
]
™™. /
;
™™/ 0
if
´´ 
(
´´ 
data
´´ 
.
´´ 
Age
´´ 
<=
´´ 
Cohorts
´´  '
.
´´' ( 
SuccessionTimeStep
´´( :
)
´´: ;
{
´´< =

youngCount
¨¨ 
++
¨¨  
;
¨¨  !
totalBiomass
≠≠  
+=
≠≠! #
data
≠≠$ (
.
≠≠( )
Biomass
≠≠) 0
;
≠≠0 1
}
ÆÆ 
else
ØØ 
break
∞∞ 
;
∞∞ 
}
±± 
if
≥≥ 
(
≥≥ 

youngCount
≥≥ 
>
≥≥ 
$num
≥≥ 
)
≥≥ 
{
≥≥  !

cohortData
¥¥ 
.
¥¥ 
RemoveRange
¥¥ &
(
¥¥& '

cohortData
¥¥' 1
.
¥¥1 2
Count
¥¥2 7
-
¥¥8 9

youngCount
¥¥: D
,
¥¥D E

youngCount
¥¥F P
)
¥¥P Q
;
¥¥Q R

cohortData
µµ 
.
µµ 
Add
µµ 
(
µµ 
new
µµ "

CohortData
µµ# -
(
µµ- .
(
µµ. /
ushort
µµ/ 5
)
µµ5 6
(
µµ7 8
Cohorts
µµ8 ?
.
µµ? @ 
SuccessionTimeStep
µµ@ R
-
µµS T
$num
µµU V
)
µµV W
,
µµW X
totalBiomass
∂∂. :
)
∂∂: ;
)
∂∂; <
;
∂∂< =
}
∑∑ 
}
∏∏ 	
public
’’ 
int
’’ 

GrowCohort
’’ 
(
’’ 
int
’’ !
index
’’) .
,
’’. /

ActiveSite
÷÷ (
site
÷÷) -
)
÷÷- .
{
◊◊ 	
Debug
ÿÿ 
.
ÿÿ 
Assert
ÿÿ 
(
ÿÿ 
$num
ÿÿ 
<=
ÿÿ 
index
ÿÿ #
&&
ÿÿ$ &
index
ÿÿ' ,
<=
ÿÿ- /

cohortData
ÿÿ0 :
.
ÿÿ: ;
Count
ÿÿ; @
)
ÿÿ@ A
;
ÿÿA B
Debug
ŸŸ 
.
ŸŸ 
Assert
ŸŸ 
(
ŸŸ 
site
ŸŸ 
!=
ŸŸ  
null
ŸŸ! %
)
ŸŸ% &
;
ŸŸ& '
Cohort
€€ 
cohort
€€ 
=
€€ 
new
€€ 
Cohort
€€  &
(
€€& '
species
€€' .
,
€€. /

cohortData
€€0 :
[
€€: ;
index
€€; @
]
€€@ A
)
€€A B
;
€€B C
if
ﬁﬁ 
(
ﬁﬁ 
isDebugEnabled
ﬁﬁ 
)
ﬁﬁ 
log
ﬂﬂ 
.
ﬂﬂ 
DebugFormat
ﬂﬂ 
(
ﬂﬂ  
$str
ﬂﬂ  H
,
ﬂﬂH I
cohort
‡‡  &
.
‡‡& '
Species
‡‡' .
.
‡‡. /
Name
‡‡/ 3
,
‡‡3 4
cohort
‡‡5 ;
.
‡‡; <
Age
‡‡< ?
,
‡‡? @
cohort
‡‡A G
.
‡‡G H
Biomass
‡‡H O
)
‡‡O P
;
‡‡P Q
if
„„ 
(
„„ 
cohort
„„ 
.
„„ 
Age
„„ 
>=
„„ 
species
„„ %
.
„„% &
	Longevity
„„& /
)
„„/ 0
{
„„1 2
RemoveCohort
‰‰ 
(
‰‰ 
index
‰‰ "
,
‰‰" #
cohort
‰‰$ *
,
‰‰* +
site
‰‰, 0
,
‰‰0 1
null
‰‰2 6
)
‰‰6 7
;
‰‰7 8
return
ÂÂ 
index
ÂÂ 
;
ÂÂ 
}
ÊÊ 
cohort
ËË 
.
ËË 
IncrementAge
ËË 
(
ËË  
)
ËË  !
;
ËË! "
int
ÍÍ 
biomassChange
ÍÍ 
=
ÍÍ 
(
ÍÍ  !
int
ÍÍ! $
)
ÍÍ$ %
Cohorts
ÍÍ% ,
.
ÍÍ, -
BiomassCalculator
ÍÍ- >
.
ÍÍ> ?
ComputeChange
ÍÍ? L
(
ÍÍL M
cohort
ÍÍM S
,
ÍÍS T
site
ÍÍU Y
)
ÍÍY Z
;
ÍÍZ [
Debug
ÏÏ 
.
ÏÏ 
Assert
ÏÏ 
(
ÏÏ 
-
ÏÏ 
(
ÏÏ 
cohort
ÏÏ !
.
ÏÏ! "
Biomass
ÏÏ" )
)
ÏÏ) *
<=
ÏÏ+ -
biomassChange
ÏÏ. ;
)
ÏÏ; <
;
ÏÏ< =
cohort
ÓÓ 
.
ÓÓ 
ChangeBiomass
ÓÓ  
(
ÓÓ  !
biomassChange
ÓÓ! .
)
ÓÓ. /
;
ÓÓ/ 0
if
ıı 
(
ıı 
cohort
ıı 
.
ıı 
Biomass
ıı 
>
ıı  
$num
ıı! "
)
ıı" #
{
ıı$ %

cohortData
ˆˆ 
[
ˆˆ 
index
ˆˆ  
]
ˆˆ  !
=
ˆˆ" #
cohort
ˆˆ$ *
.
ˆˆ* +
Data
ˆˆ+ /
;
ˆˆ/ 0
return
˜˜ 
index
˜˜ 
+
˜˜ 
$num
˜˜  
;
˜˜  !
}
¯¯ 
else
˘˘ 
{
˘˘ 
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
ÜÜ 
log
áá 
.
áá 
DebugFormat
áá 
(
áá  
$str
áá  Q
,
ááQ R
cohort
àà  &
.
àà& '
Species
àà' .
.
àà. /
Name
àà/ 3
,
àà3 4
cohort
àà5 ;
.
àà; <
Age
àà< ?
,
àà? @
cohort
ààA G
.
ààG H
Biomass
ààH O
,
ààO P
disturbanceType
ââ  /
!=
ââ0 2
null
ââ3 7
?
ää$ %
disturbanceType
ää& 5
.
ää5 6
Name
ää6 :
:
ãã$ %
cohort
ãã& ,
.
ãã, -
Age
ãã- 0
>=
ãã1 3
species
ãã4 ;
.
ãã; <
	Longevity
ãã< E
?
åå( )
$str
åå* 6
:
çç( )
cohort
çç* 0
.
çç0 1
Biomass
çç1 8
==
çç9 ;
$num
çç< =
?
éé, -
$str
éé. 9
:
èè, -
$str
èè. 7
)
èè7 8
;
èè8 9

cohortData
ëë 
.
ëë 
RemoveAt
ëë 
(
ëë  
index
ëë  %
)
ëë% &
;
ëë& '
Cohort
íí 
.
íí 
Died
íí 
(
íí 
this
íí 
,
íí 
cohort
íí $
,
íí$ %
site
íí& *
,
íí* +
disturbanceType
íí, ;
)
íí; <
;
íí< =
}
ìì 	
private
ïï 
void
ïï 
ReduceCohort
ïï !
(
ïï! "
int
ïï" %
index
ïï& +
,
ïï+ ,
ICohort
ññ" )
cohort
ññ* 0
,
ññ0 1

ActiveSite
óó" ,
site
óó- 1
,
óó1 2
ExtensionType
òò" /
disturbanceType
òò0 ?
,
òò? @
float
òòA F
	reduction
òòG P
)
òòP Q
{
ôô 	
Cohort
õõ 
.
õõ 
PartialMortality
õõ #
(
õõ# $
this
õõ$ (
,
õõ( )
cohort
õõ* 0
,
õõ0 1
site
õõ2 6
,
õõ6 7
disturbanceType
õõ8 G
,
õõG H
	reduction
õõI R
)
õõR S
;
õõS T
}
úú 	
public
•• 
void
•• !
UpdateMaturePresent
•• '
(
••' (
)
••( )
{
¶¶ 	
isMaturePresent
ßß 
=
ßß 
false
ßß #
;
ßß# $
for
®® 
(
®® 
int
®® 
i
®® 
=
®® 
$num
®® 
;
®® 
i
®® 
<
®® 

cohortData
®®  *
.
®®* +
Count
®®+ 0
;
®®0 1
i
®®2 3
++
®®3 5
)
®®5 6
{
®®7 8
if
©© 
(
©© 

cohortData
©© 
[
©© 
i
©©  
]
©©  !
.
©©! "
Age
©©" %
>=
©©& (
species
©©) 0
.
©©0 1
Maturity
©©1 9
)
©©9 :
{
©©; <
isMaturePresent
™™ #
=
™™$ %
true
™™& *
;
™™* +
break
´´ 
;
´´ 
}
¨¨ 
}
≠≠ 
}
ÆÆ 	
public
ππ 
int
ππ 
MarkCohorts
ππ 
(
ππ 
IDisturbance
ππ +
disturbance
ππ, 7
)
ππ7 8
{
∫∫ 	
isMaturePresent
ΩΩ 
=
ΩΩ 
false
ΩΩ #
;
ΩΩ# $
int
ææ 
totalReduction
ææ 
=
ææ  
$num
ææ! "
;
ææ" #
for
øø 
(
øø 
int
øø 
i
øø 
=
øø 

cohortData
øø #
.
øø# $
Count
øø$ )
-
øø* +
$num
øø, -
;
øø- .
i
øø/ 0
>=
øø1 3
$num
øø4 5
;
øø5 6
i
øø7 8
--
øø8 :
)
øø: ;
{
øø< =
Cohort
¿¿ 
cohort
¿¿ 
=
¿¿ 
new
¿¿  #
Cohort
¿¿$ *
(
¿¿* +
species
¿¿+ 2
,
¿¿2 3

cohortData
¿¿4 >
[
¿¿> ?
i
¿¿? @
]
¿¿@ A
)
¿¿A B
;
¿¿B C
int
¡¡ 
	reduction
¡¡ 
=
¡¡ 
disturbance
¡¡  +
.
¡¡+ ,&
ReduceOrKillMarkedCohort
¡¡, D
(
¡¡D E
cohort
¡¡E K
)
¡¡K L
;
¡¡L M
if
¬¬ 
(
¬¬ 
	reduction
¬¬ 
>
¬¬ 
$num
¬¬  !
)
¬¬! "
{
¬¬# $
totalReduction
√√ "
+=
√√# %
	reduction
√√& /
;
√√/ 0
if
ƒƒ 
(
ƒƒ 
	reduction
ƒƒ !
<
ƒƒ" #
cohort
ƒƒ$ *
.
ƒƒ* +
Biomass
ƒƒ+ 2
)
ƒƒ2 3
{
ƒƒ4 5
cohort
≈≈ 
.
≈≈ 
ChangeBiomass
≈≈ ,
(
≈≈, -
-
≈≈- .
	reduction
≈≈. 7
)
≈≈7 8
;
≈≈8 9

cohortData
∆∆ "
[
∆∆" #
i
∆∆# $
]
∆∆$ %
=
∆∆& '
cohort
∆∆( .
.
∆∆. /
Data
∆∆/ 3
;
∆∆3 4
}
   
else
ÀÀ 
{
ÀÀ 
RemoveCohort
ÃÃ $
(
ÃÃ$ %
i
ÃÃ% &
,
ÃÃ& '
cohort
ÃÃ( .
,
ÃÃ. /
disturbance
ÃÃ0 ;
.
ÃÃ; <
CurrentSite
ÃÃ< G
,
ÃÃG H
disturbance
ÕÕ% 0
.
ÕÕ0 1
Type
ÕÕ1 5
)
ÕÕ5 6
;
ÕÕ6 7
cohort
ŒŒ 
=
ŒŒ  
null
ŒŒ! %
;
ŒŒ% &
}
œœ 
}
–– 
if
—— 
(
—— 
cohort
—— 
!=
—— 
null
—— "
&&
——# %
cohort
——& ,
.
——, -
Age
——- 0
>=
——1 3
species
——4 ;
.
——; <
Maturity
——< D
)
——D E
isMaturePresent
““ #
=
““$ %
true
““& *
;
““* +
}
”” 
return
‘‘ 
totalReduction
‘‘ !
;
‘‘! "
}
’’ 	
private
ŸŸ 
static
ŸŸ 
AgeOnlyCohorts
ŸŸ %
.
ŸŸ% &$
SpeciesCohortBoolArray
ŸŸ& <$
isSpeciesCohortDamaged
ŸŸ= S
;
ŸŸS T
static
›› 
SpeciesCohorts
›› 
(
›› 
)
›› 
{
ﬁﬁ 	$
isSpeciesCohortDamaged
ﬂﬂ "
=
ﬂﬂ# $
new
ﬂﬂ% (
AgeOnlyCohorts
ﬂﬂ) 7
.
ﬂﬂ7 8$
SpeciesCohortBoolArray
ﬂﬂ8 N
(
ﬂﬂN O
)
ﬂﬂO P
;
ﬂﬂP Q
}
‡‡ 	
public
ÍÍ 
int
ÍÍ 
MarkCohorts
ÍÍ 
(
ÍÍ 
AgeOnlyCohorts
ÍÍ -
.
ÍÍ- .(
ISpeciesCohortsDisturbance
ÍÍ. H
disturbance
ÍÍI T
)
ÍÍT U
{
ÎÎ 	$
isSpeciesCohortDamaged
ÏÏ "
.
ÏÏ" #
SetAllFalse
ÏÏ# .
(
ÏÏ. /
Count
ÏÏ/ 4
)
ÏÏ4 5
;
ÏÏ5 6
disturbance
ÌÌ 
.
ÌÌ !
MarkCohortsForDeath
ÌÌ +
(
ÌÌ+ ,
this
ÌÌ, 0
,
ÌÌ0 1$
isSpeciesCohortDamaged
ÌÌ2 H
)
ÌÌH I
;
ÌÌI J
isMaturePresent
ÒÒ 
=
ÒÒ 
false
ÒÒ #
;
ÒÒ# $
int
ÚÚ 
totalReduction
ÚÚ 
=
ÚÚ  
$num
ÚÚ! "
;
ÚÚ" #
for
ÛÛ 
(
ÛÛ 
int
ÛÛ 
i
ÛÛ 
=
ÛÛ 

cohortData
ÛÛ #
.
ÛÛ# $
Count
ÛÛ$ )
-
ÛÛ* +
$num
ÛÛ, -
;
ÛÛ- .
i
ÛÛ/ 0
>=
ÛÛ1 3
$num
ÛÛ4 5
;
ÛÛ5 6
i
ÛÛ7 8
--
ÛÛ8 :
)
ÛÛ: ;
{
ÛÛ< =
if
ÙÙ 
(
ÙÙ $
isSpeciesCohortDamaged
ÙÙ *
[
ÙÙ* +
i
ÙÙ+ ,
]
ÙÙ, -
)
ÙÙ- .
{
ÙÙ/ 0
Cohort
ıı 
cohort
ıı !
=
ıı" #
new
ıı$ '
Cohort
ıı( .
(
ıı. /
species
ıı/ 6
,
ıı6 7

cohortData
ıı8 B
[
ııB C
i
ııC D
]
ııD E
)
ııE F
;
ııF G
totalReduction
ˆˆ "
+=
ˆˆ# %
cohort
ˆˆ& ,
.
ˆˆ, -
Biomass
ˆˆ- 4
;
ˆˆ4 5
RemoveCohort
˜˜  
(
˜˜  !
i
˜˜! "
,
˜˜" #
cohort
˜˜$ *
,
˜˜* +
disturbance
˜˜, 7
.
˜˜7 8
CurrentSite
˜˜8 C
,
˜˜C D
disturbance
¯¯! ,
.
¯¯, -
Type
¯¯- 1
)
¯¯1 2
;
¯¯2 3
Cohort
˘˘ 
.
˘˘ (
KilledByAgeOnlyDisturbance
˘˘ 5
(
˘˘5 6
this
˘˘6 :
,
˘˘: ;
cohort
˘˘< B
,
˘˘B C
disturbance
˘˘D O
.
˘˘O P
CurrentSite
˘˘P [
,
˘˘[ \
disturbance
˘˘] h
.
˘˘h i
Type
˘˘i m
)
˘˘m n
;
˘˘n o
cohort
˚˚ 
=
˚˚ 
null
˚˚ !
;
˚˚! "
}
¸¸ 
else
˝˝ 
if
˝˝ 
(
˝˝ 

cohortData
˝˝ #
[
˝˝# $
i
˝˝$ %
]
˝˝% &
.
˝˝& '
Age
˝˝' *
>=
˝˝+ -
species
˝˝. 5
.
˝˝5 6
Maturity
˝˝6 >
)
˝˝> ?
isMaturePresent
˛˛ #
=
˛˛$ %
true
˛˛& *
;
˛˛* +
}
ˇˇ 
return
ÄÄ 
totalReduction
ÄÄ !
;
ÄÄ! "
}
ÅÅ 	
IEnumerator
ÖÖ 
<
ÖÖ 
ICohort
ÖÖ 
>
ÖÖ 
IEnumerable
ÖÖ (
<
ÖÖ( )
ICohort
ÖÖ) 0
>
ÖÖ0 1
.
ÖÖ1 2
GetEnumerator
ÖÖ2 ?
(
ÖÖ? @
)
ÖÖ@ A
{
ÜÜ 	
foreach
àà 
(
àà 

CohortData
àà 
data
àà  $
in
àà% '

cohortData
àà( 2
)
àà2 3
yield
ââ 
return
ââ 
new
ââ  
Cohort
ââ! '
(
ââ' (
species
ââ( /
,
ââ/ 0
data
ââ1 5
)
ââ5 6
;
ââ6 7
}
ää 	
IEnumerator
éé 
IEnumerable
éé 
.
éé  
GetEnumerator
éé  -
(
éé- .
)
éé. /
{
èè 	
return
ëë 
(
ëë 
(
ëë 
IEnumerable
ëë  
<
ëë  !
ICohort
ëë! (
>
ëë( )
)
ëë) *
this
ëë* .
)
ëë. /
.
ëë/ 0
GetEnumerator
ëë0 =
(
ëë= >
)
ëë> ?
;
ëë? @
}
íí 	
IEnumerator
ññ 
<
ññ 
Landis
ññ 
.
ññ 
Library
ññ "
.
ññ" #
AgeOnlyCohorts
ññ# 1
.
ññ1 2
ICohort
ññ2 9
>
ññ9 :
IEnumerable
ññ; F
<
ññF G
Landis
ññG M
.
ññM N
Library
ññN U
.
ññU V
AgeOnlyCohorts
ññV d
.
ññd e
ICohort
ññe l
>
ññl m
.
ññm n
GetEnumerator
ññn {
(
ññ{ |
)
ññ| }
{
óó 	
foreach
ôô 
(
ôô 

CohortData
ôô 
data
ôô  $
in
ôô% '

cohortData
ôô( 2
)
ôô2 3
yield
öö 
return
öö 
new
öö  
Landis
öö! '
.
öö' (
Library
öö( /
.
öö/ 0
AgeOnlyCohorts
öö0 >
.
öö> ?
Cohort
öö? E
(
ööE F
species
ööF M
,
ööM N
data
ööO S
.
ööS T
Age
ööT W
)
ööW X
;
ööX Y
}
õõ 	
}
úú 
}ùù ¬
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
private 
AgeOnlyCohorts 
. 
ICohortDisturbance 1 
ageCohortDisturbance2 F
;F G
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