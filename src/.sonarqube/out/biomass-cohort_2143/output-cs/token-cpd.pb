�7
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
�� 
(
�� 
PartialDeathEvent
�� !
!=
��" $
null
��% )
)
��) *
PartialDeathEvent
�� !
(
��! "
sender
��" (
,
��( )
new
��* -#
PartialDeathEventArgs
��. C
(
��C D
cohort
��D J
,
��J K
site
��L P
,
��P Q
disturbanceType
��R a
,
��a b
	reduction
��c l
)
��l m
)
��m n
;
��n o
}
�� 	
public
�� 
static
�� 
void
�� 
Died
�� 
(
��  
object
��  &
sender
��+ 1
,
��1 2
ICohort
��  '
cohort
��+ 1
,
��1 2

ActiveSite
��  *
site
��+ /
,
��/ 0
ExtensionType
��  -
disturbanceType
��. =
)
��= >
{
�� 	
if
�� 
(
�� 

DeathEvent
�� 
!=
�� 
null
�� "
)
��" #

DeathEvent
�� 
(
�� 
sender
�� !
,
��! "
new
��# &
DeathEventArgs
��' 5
(
��5 6
cohort
��6 <
,
��< =
site
��> B
,
��B C
disturbanceType
��D S
)
��S T
)
��T U
;
��U V
}
�� 	
public
�� 
static
�� 
event
�� 
DeathEventHandler
�� -
<
��- .
DeathEventArgs
��. <
>
��< =
AgeOnlyDeathEvent
��> O
;
��O P
public
�� 
static
�� 
void
�� (
KilledByAgeOnlyDisturbance
�� 5
(
��5 6
object
��6 <
sender
��A G
,
��G H
ICohort
��6 =
cohort
��A G
,
��G H

ActiveSite
��6 @
site
��A E
,
��E F
ExtensionType
��6 C
disturbanceType
��D S
)
��S T
{
�� 	
if
�� 
(
�� 
AgeOnlyDeathEvent
�� !
!=
��" $
null
��% )
)
��) *
AgeOnlyDeathEvent
�� !
(
��! "
sender
��" (
,
��( )
new
��* -
DeathEventArgs
��. <
(
��< =
cohort
��= C
,
��C D
site
��E I
,
��I J
disturbanceType
��K Z
)
��Z [
)
��[ \
;
��\ ]
}
�� 	
}
�� 
}�� �
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
}&& �
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
}FF �
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
}EE �!
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
}pp �
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
}MM �
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
} �

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
}55 �
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
} �
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
}66 �
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
}"" �
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
}++ �
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
} �
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
} �
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
} �
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
} � 
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
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
index
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
}XX �
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
} ��
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
ISpecies	55z �
species
55� �
]
55� �
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
�� "
itor
��# '
=
��( )
itors
��* /
[
��/ 0
$num
��0 1
]
��1 2
;
��2 3
itor
�� 
.
�� 
GrowCurrentCohort
�� &
(
��& '
site
��' +
)
��+ ,
;
��, -
if
�� 
(
�� 
itor
�� 
.
�� 
MoveNext
�� !
(
��! "
)
��" #
)
��# $
{
�� 
if
�� 
(
�� 
itors
�� 
.
�� 
Count
�� #
>
��$ %
$num
��& '
&&
��( *
itor
��+ /
.
��/ 0
Age
��0 3
<
��4 5
itors
��6 ;
[
��; <
$num
��< =
]
��= >
.
��> ?
Age
��? B
)
��B C
{
�� 
itors
�� 
.
�� 
RemoveAt
�� &
(
��& '
$num
��' (
)
��( )
;
��) *
InsertIterator
�� &
(
��& '
itor
��' +
,
��+ ,
itors
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 
else
�� 
{
�� 
itors
�� 
.
�� 
RemoveAt
�� "
(
��" #
$num
��# $
)
��$ %
;
��% &
if
�� 
(
�� 
itor
�� 
.
�� 
SpeciesCohorts
�� +
.
��+ ,
Count
��, 1
>
��2 3
$num
��4 5
)
��5 6
itor
�� 
.
�� 
SpeciesCohorts
�� +
.
��+ ,!
UpdateMaturePresent
��, ?
(
��? @
)
��@ A
;
��A B
else
�� 
{
�� 
for
�� 
(
�� 
int
��  
i
��! "
=
��# $
$num
��% &
;
��& '
i
��( )
<
��* +
cohorts
��, 3
.
��3 4
Count
��4 9
;
��9 :
i
��; <
++
��< >
)
��> ?
{
�� 
if
�� 
(
��  
cohorts
��  '
[
��' (
i
��( )
]
��) *
==
��+ -
itor
��. 2
.
��2 3
SpeciesCohorts
��3 A
)
��A B
{
�� 
cohorts
��  '
.
��' (
RemoveAt
��( 0
(
��0 1
i
��1 2
)
��2 3
;
��3 4
break
��  %
;
��% &
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
InsertIterator
�� #
(
��# $ 
OldToYoungIterator
��$ 6
itor
��7 ;
,
��; <
List
��$ (
<
��( ) 
OldToYoungIterator
��) ;
>
��; <
itors
��= B
)
��B C
{
�� 	
bool
�� 
inserted
�� 
=
�� 
false
�� !
;
��! "
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
itors
��  %
.
��% &
Count
��& +
;
��+ ,
i
��- .
++
��. 0
)
��0 1
{
�� 
if
�� 
(
�� 
itor
�� 
.
�� 
Age
�� 
>
�� 
itors
�� $
[
��$ %
i
��% &
]
��& '
.
��' (
Age
��( +
)
��+ ,
{
�� 
itors
�� 
.
�� 
Insert
��  
(
��  !
i
��! "
,
��" #
itor
��$ (
)
��( )
;
��) *
inserted
�� 
=
�� 
true
�� #
;
��# $
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
inserted
�� 
)
�� 
itors
�� 
.
�� 
Add
�� 
(
�� 
itor
�� 
)
�� 
;
��  
}
�� 	
public
�� 
int
�� (
ReduceOrKillBiomassCohorts
�� -
(
��- .
IDisturbance
��. :
disturbance
��; F
)
��F G
{
�� 	
int
�� 
totalReduction
�� 
=
��  
$num
��! "
;
��" #
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
cohorts
��  
.
��  !
Count
��! &
-
��' (
$num
��) *
;
��* +
i
��, -
>=
��. 0
$num
��1 2
;
��2 3
i
��4 5
--
��5 7
)
��7 8
{
�� 
totalReduction
�� 
+=
�� !
cohorts
��" )
[
��) *
i
��* +
]
��+ ,
.
��, -
MarkCohorts
��- 8
(
��8 9
disturbance
��9 D
)
��D E
;
��E F
if
�� 
(
�� 
cohorts
�� 
[
�� 
i
�� 
]
�� 
.
�� 
Count
�� $
==
��% '
$num
��( )
)
��) *
cohorts
�� 
.
�� 
RemoveAt
�� $
(
��$ %
i
��% &
)
��& '
;
��' (
}
�� 
return
�� 
totalReduction
�� !
;
��! "
}
�� 	
void
�� 
	AgeCohort
�� 
.
�� 
ISiteCohorts
�� #
.
��# $!
RemoveMarkedCohorts
��$ 7
(
��7 8
	AgeCohort
��8 A
.
��A B 
ICohortDisturbance
��B T
disturbance
��U `
)
��` a
{
�� 	
if
�� 
(
�� %
AgeOnlyDisturbanceEvent
�� '
!=
��( *
null
��+ /
)
��/ 0%
AgeOnlyDisturbanceEvent
�� '
(
��' (
this
��( ,
,
��, -
new
��. 1"
DisturbanceEventArgs
��2 F
(
��F G
disturbance
��G R
.
��R S
CurrentSite
��S ^
,
��^ _
disturbance
��G R
.
��R S
Type
��S W
)
��W X
)
��X Y
;
��Y Z(
ReduceOrKillBiomassCohorts
�� &
(
��& '
new
��' * 
WrappedDisturbance
��+ =
(
��= >
disturbance
��> I
)
��I J
)
��J K
;
��K L
}
�� 	
void
�� 
	AgeCohort
�� 
.
�� 
ISiteCohorts
�� #
.
��# $!
RemoveMarkedCohorts
��$ 7
(
��7 8
	AgeCohort
��8 A
.
��A B(
ISpeciesCohortsDisturbance
��B \
disturbance
��] h
)
��h i
{
�� 	
if
�� 
(
�� %
AgeOnlyDisturbanceEvent
�� '
!=
��( *
null
��+ /
)
��/ 0%
AgeOnlyDisturbanceEvent
�� '
(
��' (
this
��( ,
,
��, -
new
��. 1"
DisturbanceEventArgs
��2 F
(
��F G
disturbance
��G R
.
��R S
CurrentSite
��S ^
,
��^ _
disturbance
��G R
.
��R S
Type
��S W
)
��W X
)
��X Y
;
��Y Z
int
�� 
totalReduction
�� 
=
��  
$num
��! "
;
��" #
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
cohorts
��  
.
��  !
Count
��! &
-
��' (
$num
��) *
;
��* +
i
��, -
>=
��. 0
$num
��1 2
;
��2 3
i
��4 5
--
��5 7
)
��7 8
{
�� 
totalReduction
�� 
+=
�� !
cohorts
��" )
[
��) *
i
��* +
]
��+ ,
.
��, -
MarkCohorts
��- 8
(
��8 9
disturbance
��9 D
)
��D E
;
��E F
if
�� 
(
�� 
cohorts
�� 
[
�� 
i
�� 
]
�� 
.
�� 
Count
�� $
==
��% '
$num
��( )
)
��) *
cohorts
�� 
.
�� 
RemoveAt
�� $
(
��$ %
i
��% &
)
��& '
;
��' (
}
�� 
}
�� 	
public
�� 
static
�� 
event
�� %
DisturbanceEventHandler
�� 3%
AgeOnlyDisturbanceEvent
��4 K
;
��K L
public
�� 
void
�� 
AddNewCohort
��  
(
��  !
ISpecies
��! )
species
��* 1
,
��1 2
ushort
��3 9
age
��: =
,
��= >
int
��? B
initialBiomass
��C Q
)
��Q R
{
�� 	
bool
�� 
speciesPresent
�� 
=
��  !
false
��" '
;
��' (
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
cohorts
��  '
.
��' (
Count
��( -
;
��- .
i
��/ 0
++
��0 2
)
��2 3
{
�� 
SpeciesCohorts
�� 
speciesCohorts
�� -
=
��. /
cohorts
��0 7
[
��7 8
i
��8 9
]
��9 :
;
��: ;
if
�� 
(
�� 
speciesCohorts
�� "
.
��" #
Species
��# *
==
��+ -
species
��. 5
)
��5 6
{
�� 
speciesCohorts
�� "
.
��" #
AddNewCohort
��# /
(
��/ 0
age
��0 3
,
��3 4
initialBiomass
��5 C
)
��C D
;
��D E
speciesPresent
�� "
=
��# $
true
��% )
;
��) *
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
speciesPresent
�� 
)
��  
cohorts
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
SpeciesCohorts
��  .
(
��. /
species
��/ 6
,
��6 7
age
��8 ;
,
��; <
initialBiomass
��= K
)
��K L
)
��L M
;
��M N
}
�� 	
public
�� 
void
�� 
AddNewCohort
��  
(
��  !
ISpecies
��! )
species
��* 1
)
��1 2
{
�� 	
}
�� 	
public
�� 
bool
�� 
IsMaturePresent
�� #
(
��# $
ISpecies
��$ ,
species
��- 4
)
��4 5
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
cohorts
��  '
.
��' (
Count
��( -
;
��- .
i
��/ 0
++
��0 2
)
��2 3
{
��4 5
SpeciesCohorts
�� 
speciesCohorts
�� -
=
��. /
cohorts
��0 7
[
��7 8
i
��8 9
]
��9 :
;
��: ;
if
�� 
(
�� 
speciesCohorts
�� "
.
��" #
Species
��# *
==
��+ -
species
��. 5
)
��5 6
{
��7 8
return
�� 
speciesCohorts
�� )
.
��) *
IsMaturePresent
��* 9
;
��9 :
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
IEnumerator
�� 
<
�� 
ISpeciesCohorts
�� *
>
��* +
GetEnumerator
��, 9
(
��9 :
)
��: ;
{
�� 	
foreach
�� 
(
�� 
SpeciesCohorts
�� #
speciesCohorts
��$ 2
in
��3 5
cohorts
��6 =
)
��= >
yield
�� 
return
�� 
speciesCohorts
�� +
;
��+ ,
}
�� 	
IEnumerator
�� 
IEnumerable
�� 
.
��  
GetEnumerator
��  -
(
��- .
)
��. /
{
�� 	
return
�� 
GetEnumerator
��  
(
��  !
)
��! "
;
��" #
}
�� 	
IEnumerator
�� 
<
�� 
	AgeCohort
�� 
.
�� 
ISpeciesCohorts
�� -
>
��- .
IEnumerable
��/ :
<
��: ;
	AgeCohort
��; D
.
��D E
ISpeciesCohorts
��E T
>
��T U
.
��U V
GetEnumerator
��V c
(
��c d
)
��d e
{
�� 	
foreach
�� 
(
�� 
SpeciesCohorts
�� #
speciesCohorts
��$ 2
in
��3 5
cohorts
��6 =
)
��= >
yield
�� 
return
�� 
speciesCohorts
�� +
;
��+ ,
}
�� 	
public
�� 
string
�� 
Write
�� 
(
�� 
)
�� 
{
�� 	
StringBuilder
�� 
builder
�� !
=
��" #
new
��$ '
StringBuilder
��( 5
(
��5 6
)
��6 7
;
��7 8
foreach
�� 
(
�� 
ISpeciesCohorts
�� $

sppcohorts
��% /
in
��0 2
this
��3 7
)
��7 8
foreach
�� 
(
�� 
ICohort
��  
cohort
��! '
in
��( *

sppcohorts
��+ 5
)
��5 6
builder
�� 
.
�� 
AppendFormat
�� (
(
��( )
$str
��) 4
,
��4 5
cohort
��6 <
.
��< =
Species
��= D
.
��D E
Name
��E I
,
��I J
cohort
��K Q
.
��Q R
Age
��R U
)
��U V
;
��V W
return
�� 
builder
�� 
.
�� 
ToString
�� #
(
��# $
)
��$ %
;
��% &
}
�� 	
}
�� 
}�� �
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
} �
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
�� 
void
�� 
AddNewCohort
��  
(
��  !
ushort
��! '
age
��( +
,
��+ ,
int
��- 0
initialBiomass
��1 ?
)
��? @
{
�� 	
this
�� 
.
�� 

cohortData
�� 
.
�� 
Add
�� 
(
��  
new
��  #

CohortData
��$ .
(
��. /
age
��/ 2
,
��2 3
initialBiomass
��4 B
)
��B C
)
��C D
;
��D E
}
�� 	
public
�� 
int
�� 
GetAge
�� 
(
�� 
int
�� 
index
�� #
)
��# $
{
�� 	
return
�� 

cohortData
�� 
[
�� 
index
�� #
]
��# $
.
��$ %
Age
��% (
;
��( )
}
�� 	
public
�� 
void
�� !
CombineYoungCohorts
�� '
(
��' (
)
��( )
{
�� 	
int
�� 

youngCount
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
totalBiomass
�� 
=
�� 
$num
��  
;
��  !
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 

cohortData
�� #
.
��# $
Count
��$ )
-
��* +
$num
��, -
;
��- .
i
��/ 0
>=
��1 3
$num
��4 5
;
��5 6
i
��7 8
--
��8 :
)
��: ;
{
�� 

CohortData
�� 
data
�� 
=
��  !

cohortData
��" ,
[
��, -
i
��- .
]
��. /
;
��/ 0
if
�� 
(
�� 
data
�� 
.
�� 
Age
�� 
<=
�� 
Cohorts
��  '
.
��' ( 
SuccessionTimeStep
��( :
)
��: ;
{
�� 

youngCount
�� 
++
��  
;
��  !
totalBiomass
��  
+=
��! #
data
��$ (
.
��( )
Biomass
��) 0
;
��0 1
}
�� 
else
�� 
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 

youngCount
�� 
>
�� 
$num
�� 
)
�� 
{
�� 

cohortData
�� 
.
�� 
RemoveRange
�� &
(
��& '

cohortData
��' 1
.
��1 2
Count
��2 7
-
��8 9

youngCount
��: D
,
��D E

youngCount
��F P
)
��P Q
;
��Q R

cohortData
�� 
.
�� 
Add
�� 
(
�� 
new
�� "

CohortData
��# -
(
��- .
(
��. /
ushort
��/ 5
)
��5 6
(
��7 8
Cohorts
��8 ?
.
��? @ 
SuccessionTimeStep
��@ R
-
��S T
$num
��U V
)
��V W
,
��W X
totalBiomass
��. :
)
��: ;
)
��; <
;
��< =
}
�� 
}
�� 	
public
�� 
int
�� 

GrowCohort
�� 
(
�� 
int
�� !
index
��) .
,
��. /

ActiveSite
�� (
site
��) -
)
��- .
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
$num
�� 
<=
�� 
index
�� #
&&
��$ &
index
��' ,
<=
��- /

cohortData
��0 :
.
��: ;
Count
��; @
)
��@ A
;
��A B
Debug
�� 
.
�� 
Assert
�� 
(
�� 
site
�� 
!=
��  
null
��! %
)
��% &
;
��& '
Cohort
�� 
cohort
�� 
=
�� 
new
�� 
Cohort
��  &
(
��& '
species
��' .
,
��. /

cohortData
��0 :
[
��: ;
index
��; @
]
��@ A
)
��A B
;
��B C
if
�� 
(
�� 
isDebugEnabled
�� 
)
�� 
log
�� 
.
�� 
DebugFormat
�� 
(
��  
$str
��  H
,
��H I
cohort
��  &
.
��& '
Species
��' .
.
��. /
Name
��/ 3
,
��3 4
cohort
��5 ;
.
��; <
Age
��< ?
,
��? @
cohort
��A G
.
��G H
Biomass
��H O
)
��O P
;
��P Q
if
�� 
(
�� 
cohort
�� 
.
�� 
Age
�� 
>=
�� 
species
�� %
.
��% &
	Longevity
��& /
)
��/ 0
{
�� 
RemoveCohort
�� 
(
�� 
index
�� "
,
��" #
cohort
��$ *
,
��* +
site
��, 0
,
��0 1
null
��2 6
)
��6 7
;
��7 8
return
�� 
index
�� 
;
�� 
}
�� 
cohort
�� 
.
�� 
IncrementAge
�� 
(
��  
)
��  !
;
��! "
int
�� 
biomassChange
�� 
=
�� 
Cohorts
��  '
.
��' (
BiomassCalculator
��( 9
.
��9 :
ComputeChange
��: G
(
��G H
cohort
��H N
,
��N O
site
��P T
)
��T U
;
��U V
Debug
�� 
.
�� 
Assert
�� 
(
�� 
-
�� 
(
�� 
cohort
�� !
.
��! "
Biomass
��" )
)
��) *
<=
��+ -
biomassChange
��. ;
)
��; <
;
��< =
cohort
�� 
.
�� 
ChangeBiomass
��  
(
��  !
biomassChange
��! .
)
��. /
;
��/ 0
if
�� 
(
�� 
cohort
�� 
.
�� 
Biomass
�� 
>
��  
$num
��! "
)
��" #
{
�� 

cohortData
�� 
[
�� 
index
��  
]
��  !
=
��" #
cohort
��$ *
.
��* +
Data
��+ /
;
��/ 0
return
�� 
index
�� 
+
�� 
$num
��  
;
��  !
}
�� 
else
�� 
{
�� 
RemoveCohort
�� 
(
�� 
index
�� "
,
��" #
cohort
��$ *
,
��* +
site
��, 0
,
��0 1
null
��2 6
)
��6 7
;
��7 8
return
�� 
index
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
RemoveCohort
�� !
(
��! "
int
��" %
index
��- 2
,
��2 3
ICohort
��" )
cohort
��- 3
,
��3 4

ActiveSite
��" ,
site
��- 1
,
��1 2
ExtensionType
��" /
disturbanceType
��0 ?
)
��? @
{
�� 	
if
�� 
(
�� 
isDebugEnabled
�� 
)
�� 
{
�� 
log
�� 
.
�� 
DebugFormat
�� 
(
��  
$str
��  Q
,
��Q R
cohort
��  &
.
��& '
Species
��' .
.
��. /
Name
��/ 3
,
��3 4
cohort
��5 ;
.
��; <
Age
��< ?
,
��? @
cohort
��A G
.
��G H
Biomass
��H O
,
��O P
disturbanceType
��  /
!=
��0 2
null
��3 7
?
��$ %
disturbanceType
��& 5
.
��5 6
Name
��6 :
:
��$ %
cohort
��& ,
.
��, -
Age
��- 0
>=
��1 3
species
��4 ;
.
��; <
	Longevity
��< E
?
��( )
$str
��* 6
:
��( )
cohort
��* 0
.
��0 1
Biomass
��1 8
==
��9 ;
$num
��< =
?
��, -
$str
��. 9
:
��, -
$str
��. 7
)
��7 8
;
��8 9
}
�� 

cohortData
�� 
.
�� 
RemoveAt
�� 
(
��  
index
��  %
)
��% &
;
��& '
Cohort
�� 
.
�� 
Died
�� 
(
�� 
this
�� 
,
�� 
cohort
�� $
,
��$ %
site
��& *
,
��* +
disturbanceType
��, ;
)
��; <
;
��< =
}
�� 	
public
�� 
void
�� !
UpdateMaturePresent
�� '
(
��' (
)
��( )
{
�� 	
isMaturePresent
�� 
=
�� 
false
�� #
;
��# $
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

cohortData
��  *
.
��* +
Count
��+ 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
�� 
if
�� 
(
�� 

cohortData
�� 
[
�� 
i
��  
]
��  !
.
��! "
Age
��" %
>=
��& (
species
��) 0
.
��0 1
Maturity
��1 9
)
��9 :
{
�� 
isMaturePresent
�� #
=
��$ %
true
��& *
;
��* +
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
MarkCohorts
�� 
(
�� 
IDisturbance
�� +
disturbance
��, 7
)
��7 8
{
�� 	
isMaturePresent
�� 
=
�� 
false
�� #
;
��# $
int
�� 
totalReduction
�� 
=
��  
$num
��! "
;
��" #
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 

cohortData
�� #
.
��# $
Count
��$ )
-
��* +
$num
��, -
;
��- .
i
��/ 0
>=
��1 3
$num
��4 5
;
��5 6
i
��7 8
--
��8 :
)
��: ;
{
�� 
Cohort
�� 
cohort
�� 
=
�� 
new
��  #
Cohort
��$ *
(
��* +
species
��+ 2
,
��2 3

cohortData
��4 >
[
��> ?
i
��? @
]
��@ A
)
��A B
;
��B C
int
�� 
	reduction
�� 
=
�� 
disturbance
��  +
.
��+ ,&
ReduceOrKillMarkedCohort
��, D
(
��D E
cohort
��E K
)
��K L
;
��L M
if
�� 
(
�� 
	reduction
�� 
>
�� 
$num
��  !
)
��! "
{
�� 
totalReduction
�� "
+=
��# %
	reduction
��& /
;
��/ 0
if
�� 
(
�� 
	reduction
�� !
<
��" #
cohort
��$ *
.
��* +
Biomass
��+ 2
)
��2 3
{
�� 
cohort
�� 
.
�� 
ChangeBiomass
�� ,
(
��, -
-
��- .
	reduction
��. 7
)
��7 8
;
��8 9

cohortData
�� "
[
��" #
i
��# $
]
��$ %
=
��& '
cohort
��( .
.
��. /
Data
��/ 3
;
��3 4
}
�� 
else
�� 
{
�� 
RemoveCohort
�� $
(
��$ %
i
��% &
,
��& '
cohort
��( .
,
��. /
disturbance
��0 ;
.
��; <
CurrentSite
��< G
,
��G H
disturbance
��% 0
.
��0 1
Type
��1 5
)
��5 6
;
��6 7
cohort
�� 
=
��  
null
��! %
;
��% &
}
�� 
}
�� 
if
�� 
(
�� 
cohort
�� 
!=
�� 
null
�� "
&&
��# %
cohort
��& ,
.
��, -
Age
��- 0
>=
��1 3
species
��4 ;
.
��; <
Maturity
��< D
)
��D E
isMaturePresent
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
return
�� 
totalReduction
�� !
;
��! "
}
�� 	
private
�� 
static
�� 
AgeOnlyCohorts
�� %
.
��% &$
SpeciesCohortBoolArray
��& <$
isSpeciesCohortDamaged
��= S
;
��S T
static
�� 
SpeciesCohorts
�� 
(
�� 
)
�� 
{
�� 	$
isSpeciesCohortDamaged
�� "
=
��# $
new
��% (
AgeOnlyCohorts
��) 7
.
��7 8$
SpeciesCohortBoolArray
��8 N
(
��N O
)
��O P
;
��P Q
}
�� 	
public
�� 
int
�� 
MarkCohorts
�� 
(
�� 
AgeOnlyCohorts
�� -
.
��- .(
ISpeciesCohortsDisturbance
��. H
disturbance
��I T
)
��T U
{
�� 	$
isSpeciesCohortDamaged
�� "
.
��" #
SetAllFalse
��# .
(
��. /
Count
��/ 4
)
��4 5
;
��5 6
disturbance
�� 
.
�� !
MarkCohortsForDeath
�� +
(
��+ ,
this
��, 0
,
��0 1$
isSpeciesCohortDamaged
��2 H
)
��H I
;
��I J
isMaturePresent
�� 
=
�� 
false
�� #
;
��# $
int
�� 
totalReduction
�� 
=
��  
$num
��! "
;
��" #
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 

cohortData
�� #
.
��# $
Count
��$ )
-
��* +
$num
��, -
;
��- .
i
��/ 0
>=
��1 3
$num
��4 5
;
��5 6
i
��7 8
--
��8 :
)
��: ;
{
�� 
if
�� 
(
�� $
isSpeciesCohortDamaged
�� *
[
��* +
i
��+ ,
]
��, -
)
��- .
{
�� 
Cohort
�� 
cohort
�� !
=
��" #
new
��$ '
Cohort
��( .
(
��. /
species
��/ 6
,
��6 7

cohortData
��8 B
[
��B C
i
��C D
]
��D E
)
��E F
;
��F G
totalReduction
�� "
+=
��# %
cohort
��& ,
.
��, -
Biomass
��- 4
;
��4 5
RemoveCohort
��  
(
��  !
i
��! "
,
��" #
cohort
��$ *
,
��* +
disturbance
��, 7
.
��7 8
CurrentSite
��8 C
,
��C D
disturbance
��! ,
.
��, -
Type
��- 1
)
��1 2
;
��2 3
Cohort
�� 
.
�� (
KilledByAgeOnlyDisturbance
�� 5
(
��5 6
this
��6 :
,
��: ;
cohort
��< B
,
��B C
disturbance
��D O
.
��O P
CurrentSite
��P [
,
��[ \
disturbance
��] h
.
��h i
Type
��i m
)
��m n
;
��n o
}
�� 
else
�� 
if
�� 
(
�� 

cohortData
�� #
[
��# $
i
��$ %
]
��% &
.
��& '
Age
��' *
>=
��+ -
species
��. 5
.
��5 6
Maturity
��6 >
)
��> ?
{
��@ A
isMaturePresent
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
}
�� 
return
�� 
totalReduction
�� !
;
��! "
}
�� 	
IEnumerator
�� 
<
�� 
ICohort
�� 
>
�� 
IEnumerable
�� (
<
��( )
ICohort
��) 0
>
��0 1
.
��1 2
GetEnumerator
��2 ?
(
��? @
)
��@ A
{
�� 	
foreach
�� 
(
�� 

CohortData
�� 
data
��  $
in
��% '

cohortData
��( 2
)
��2 3
yield
�� 
return
�� 
new
��  
Cohort
��! '
(
��' (
species
��( /
,
��/ 0
data
��1 5
)
��5 6
;
��6 7
}
�� 	
IEnumerator
�� 
IEnumerable
�� 
.
��  
GetEnumerator
��  -
(
��- .
)
��. /
{
�� 	
return
�� 
(
�� 
(
�� 
IEnumerable
��  
<
��  !
ICohort
��! (
>
��( )
)
��) *
this
��* .
)
��. /
.
��/ 0
GetEnumerator
��0 =
(
��= >
)
��> ?
;
��? @
}
�� 	
IEnumerator
�� 
<
�� 
Landis
�� 
.
�� 
Library
�� "
.
��" #
AgeOnlyCohorts
��# 1
.
��1 2
ICohort
��2 9
>
��9 :
IEnumerable
��; F
<
��F G
Landis
��G M
.
��M N
Library
��N U
.
��U V
AgeOnlyCohorts
��V d
.
��d e
ICohort
��e l
>
��l m
.
��m n
GetEnumerator
��n {
(
��{ |
)
��| }
{
�� 	
foreach
�� 
(
�� 

CohortData
�� 
data
��  $
in
��% '

cohortData
��( 2
)
��2 3
yield
�� 
return
�� 
new
��  
Landis
��! '
.
��' (
Library
��( /
.
��/ 0
AgeOnlyCohorts
��0 >
.
��> ?
Cohort
��? E
(
��E F
species
��F M
,
��M N
data
��O S
.
��S T
Age
��T W
)
��W X
;
��X Y
}
�� 	
}
�� 
}�� �
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