BEGIN SimeP

CHAIN
IF~GlobalLT("AsylumPlot","GLOBAL",12)~ THEN SimeP Brynn1
@0
END
++ @1 + Brynn2
++ @2 DO~JoinParty()~EXIT

CHAIN
IF~GlobalGT("AsylumPlot","GLOBAL",11) ~ THEN SimeP LeaveU1
@3
END
++ @1 + LeaveU2
++ @2 DO~JoinParty()~EXIT

CHAIN 
IF~~ THEN SimeP Brynn2
@4
END
IF~AreaCheck("ar1600")~THEN REPLY @5 + Brynn3
IF~!AreaCheck("ar1600")~THEN REPLY  @5 + Brynn4
++ @2 DO~JoinParty()~EXIT

CHAIN 
IF~~ THEN SimeP Brynn3
@6DO~SetDialog("ppsime") Wait(2) ForceSpellPoint([3481.126],WIZARD_DIMENSION_DOOR)~EXIT

CHAIN
IF~~ THEN SimeP Brynn4
@6DO~SetDialog("ppsime") Wait(2) EscapeAreaMove("ar1600",3481,126,5)~EXIT

CHAIN
IF~~ THEN SimeP LeaveU2
@7
END
IF~OR(2) GlobalLT("PPSimeFamily","Global",6)Global("FORCETOBPARTYMOVE4000","GLOBAL",1)~THEN REPLY @8 DO~EscapeAreaDestroy(20)~EXIT
IF~GlobalGT("PPSimeFamily","Global",5)Global("FORCETOBPARTYMOVE4000","GLOBAL",0)~THEN REPLY @8DO~EscapeAreaMove("ar0300",2621,1360,9)~EXIT
++ @2 DO~JoinParty()~EXIT


BEGIN SimeJ

CHAIN 
IF~Global("SimeAranRelation","Locals",1)~ THEN SimeJ NotAran1
@9
DO~SetGlobal("SimeAranRelation","Locals",2)~
END
++@10 + NotAran3
++@11 + NotAran3
++@12 + NotAran2

CHAIN
IF~~THEN SimeJ NotAran2
@13DO~EscapeAreaDestroy(12)~EXIT

CHAIN
IF~~THEN SimeJ NotAran3
@14
=@15
END
++@16 + NotAran5
++@17 + NotAran4

CHAIN
IF~~THEN SimeJ NotAran4
@18 EXTERN SimeJ NotAran5

CHAIN
IF~~THEN SimeJ NotAran5
@19
=@20
==SimeJ IF~Dead("aran")~THEN@21
==SimeJ@22
END
++@23 + NotAran6
++@24 + NotAran6
IF~Dead("aran")~THEN REPLY@25+ NotAran6
IF~!Dead("aran")~THEN REPLY@26+ NotAran6

CHAIN
IF~~THEN SimeJ NotAran6
@27
=@28
=@29DO~RunAwayFrom(Player1,20)~EXIT

CHAIN
IF~Global("SimeDeshRelation","Locals",1)~ THEN SimeJ Deshwarn1
@30
DO~SetGlobal("SimeDeshRelation","Locals",2)~
END
++@31 + Deshwarn2
++@32 + Deshwarn2
++@33 + Deshwarn2
++@34 + Deshwarn3

CHAIN
IF~~ THEN SimeJ Deshwarn2
@35
=@36
END
++@37 + Deshwarn3
++@38 + Deshwarn3

CHAIN
IF~~ THEN SimeJ Deshwarn3
@39EXIT

CHAIN
IF~Global("PPSimeFamily","Global",1)~THEN SimeJ Brother1
@40
DO~SetGlobal("PPSimeFamily","Global",2)~
END
++@41 + Brother2
++@42 + Brother2
++@43 + Brother2

CHAIN
IF~~THEN SimeJ Brother2
@44
END
++@45+ Brother3
++@46+ Brother4

CHAIN
IF~~THEN SimeJ Brother3
@47
END
++@48 + Brother5
++@49 + Brother5
++@50+ Brother4

CHAIN
IF~~THEN SimeJ Brother4
@51 DO~SetGlobal("PPSimeFamily","Global",55)~EXIT

CHAIN
IF~~THEN SimeJ Brother5
@52
=@53
END
IF~Global("FreedKamuzu","GLOBAL",1)~THEN REPLY@54+ Brother6
IF~Global("FreedKamuzu","GLOBAL",2)~THEN REPLY@55+ Brother6
IF~!Global("TalkedToKamuza","GLOBAL",0)~THEN REPLY@56+ Brother6
IF~Global("TalkedToKamuza","GLOBAL",0)~THEN REPLY@57DO~SetGlobal("PPstillKamJail","Global",1)~+ Brother7

CHAIN
IF~~THEN SimeJ Brother6
@58
END
++@59+ Brother8
++@60 + Brother8
++@61 + Brother8

CHAIN
IF~~THEN SimeJ Brother7
@62
END
++@59+ Brother8
++@63 + Brother8
++@61 + Brother8

CHAIN
IF~~THEN SimeJ Brother8
@64EXIT

CHAIN
IF~Global("PPSimeFamily","Global",3)~THEN SimeJ Keruak1
@65
DO~SetGlobal("PPSimeFamily","Global",4)~
END
++@66 + Keruak2
++@67 + Keruak2

CHAIN
IF~~THEN SimeJ Keruak2
@68
=@69EXIT

CHAIN
IF~Global("PPSimeFamily","Global",5)~THEN SimeJ Mother1
@70
DO~SetGlobal("PPSimeFamily","Global",6)~
=@71
END
IF~Dead("uhrang01")~THEN REPLY@72 + Mother3
IF~Dead("uhrang01")~THEN REPLY@73+ Mother2
++@74 + Mother2
IF~!Dead("uhrang01")~THEN REPLY@75 + Mother3

CHAIN
IF~~THEN SimeJ Mother2
@76EXTERN SimeJ Mother3

CHAIN
IF~~THEN SimeJ Mother3
@77
END
IF~Dead("uhrang01")~THEN REPLY@78 + Mother4
IF~Dead("uhrang01")~THEN REPLY@79+ Mother4
IF~!Dead("uhrang01")~THEN REPLY@80 + Mother5
++@81+ Mother5

CHAIN
IF~~THEN SimeJ Mother4
@82
=@83EXIT

CHAIN
IF~~THEN SimeJ Mother5
@84EXIT

CHAIN
IF~Global("SimeNoKillingSola","Locals",1)~THEN SimeJ NoKillSola1
@85
DO~SetGlobal("SimeNoKillingSola","Locals",2)~
=@86
END
++@87 + NoKillSola2
++@88 + NoKillSola2
++@89 + NoKillSola2

CHAIN
IF~~THEN SimeJ NoKillSola2
@90EXIT

CHAIN
IF~Global("PPWantVisitMae","Locals",1)~THEN SimeJ Aranvsmae1
@91
DO~SetGlobal("PPWantVisitMae","Locals",2)~
END
IF~!Dead("aran")~THEN REPLY@92 + Aranvsmae2
IF~Dead("aran")~THEN REPLY@93 + Aranvsmae3
++@94 + Aranvsmae5
IF~Global("FreedKamuzu","GLOBAL",2)~THEN REPLY@95 + Aranvsmae5

CHAIN
IF~~THEN SimeJ Aranvsmae2
@96
END
++@97+ Aranvsmae3
++@98 + Aranvsmae4
IF~Global("FreedKamuzu","GLOBAL",2)~THEN REPLY@95 + Aranvsmae4

CHAIN
IF~~THEN SimeJ Aranvsmae3
@99
=@100
=@101
=@102
END
++@98 + Aranvsmae4
IF~Global("FreedKamuzu","GLOBAL",2)~THEN REPLY@95 + Aranvsmae4

CHAIN
IF~~THEN SimeJ Aranvsmae4
@103EXIT

CHAIN
IF~~THEN SimeJ Aranvsmae5
@103
=@104
END
++@97+ Aranvsmae6
++@105 + Aranvsmae6

CHAIN
IF~~THEN SimeJ Aranvsmae6
@99
=@100
=@101
=@106 EXIT

CHAIN
IF~Global("FindMerella","Locals",1)~THEN SimeJ Shade1
@107 DO~SetGlobal("FindMerella","Locals",2)~
=@108EXIT

CHAIN
IF~Global("PPstillKamJail","Global",6)~ THEN SimeJ Reuniondad
@109
DO~SetGlobal("PPstillKamJail","Global",7)~
END
++@110 + Reuniondad2
++@111+ Reuniondad2

CHAIN
IF~~ THEN SimeJ Reuniondad2
@112EXIT

CHAIN
IF~Global("SeenJon","Locals",1)~THEN SimeJ SeenJon1
@113
DO~SetGlobal("SeenJon","Locals",2)~
END
++@114 + SeenJon2
++@115 + SeenJon2
++@116 + SeenJon2

CHAIN
IF~~THEN SimeJ SeenJon2
@117
END
++@118 + SeenJon3
++@119 + SeenJon3

CHAIN
IF~~THEN SimeJ SeenJon3
@120EXIT

CHAIN
IF~Global("SeenSlayer","Locals",1)~ THEN SimeJ SeenSlayer1
@121
DO~SetGlobal("SeenSlayer","Locals",2)~
END
++@122 + SeenSlayer2
++@123 + SeenSlayer3
++@124 + SeenSlayer2

CHAIN
IF~~ THEN SimeJ SeenSlayer2
@125EXTERN SimeJ SeenSlayer3

CHAIN
IF~~ THEN SimeJ SeenSlayer3
@126
=@127
=@128EXIT

CHAIN
IF~Global("SeenSlayer","Locals",3)~ THEN SimeJ SeenSlayer11
@129
DO~SetGlobal("SeenSlayer","Locals",4)~
END
++@130 + SeenSlayer12
++@131 + SeenSlayer13
++@132 + SeenSlayer12

CHAIN
IF~~ THEN SimeJ SeenSlayer12
@133EXIT

CHAIN
IF~~ THEN SimeJ SeenSlayer13
@134EXIT

CHAIN
IF~Global("PPSaemTrust","Global",2)~THEN SimeJ RevisitJon
@135
DO~SetGlobal("PPSaemTrust","Global",3)~
END
++@136 + RevisitJon2
++@137 + RevisitJon2

CHAIN
IF~~THEN SimeJ RevisitJon2
@138EXIT

CHAIN
IF~Global("PPSaemTrust","Global",4)~THEN SimeJ SaemAgain
@139
DO~SetGlobal("PPSaemTrust","Global",5)~
END
++@140+ SaemA2
++@141 + SaemA2

CHAIN
IF~~ THEN SimeJ  SaemA2
@142EXIT


CHAIN
IF~Global("PPSimeMerelWitness","Global",1)~ THEN SimeJ SeenMerel1
@143
DO~SetGlobal("PPSimeMerelWitness","Global",2)~
END
IF~Global("PPKamSime","GLOBAL",0)~THEN REPLY@144 + SeenMerel3
IF~OR(3)!Global("TalkedToKamuza","GLOBAL",0)!Global("FreedKamuzu","GLOBAL",0)Global("PPKamSime","GLOBAL",1)~THEN REPLY@145 + SeenMerel2
IF~Global("PPKamSime","GLOBAL",0)~THEN REPLY@146+ SeenMerel4
++@147 + SeenMerel3

CHAIN
IF~~THEN SimeJ SeenMerel3
@148 EXTERN SimeJ SeenMerel2

CHAIN
IF~~THEN SimeJ SeenMerel2
@149
=@150EXIT

CHAIN
IF~~THEN SimeJ SeenMerel4
@151 EXTERN SimeJ SeenMerel2

CHAIN
IF~Global("PPSimeEggChange","Global",1)~THEN SimeJ Eggchange1
@152
DO~SetGlobal("PPSimeEggChange","Global",2)~
END
++@153+ Eggchange2
IF~!Name("ppsime",Player2) Class(Player2,THIEF_ALL)~THEN REPLY@154 + Eggchange2
IF~!Name("ppsime",Player3) Class(Player3,THIEF_ALL)~THEN REPLY@155 + Eggchange2
IF~!Name("ppsime",Player4) Class(Player4,THIEF_ALL)~THEN REPLY@156 + Eggchange2
IF~!Name("ppsime",Player5) Class(Player5,THIEF_ALL)~THEN REPLY@157 + Eggchange2
IF~!Name("ppsime",Player6) Class(Player6,THIEF_ALL)~THEN REPLY@158 + Eggchange2
IF~PartyHasItem("misc9u")~THEN REPLY@159 + EggchangeP
IF~PartyHasItem("misc9v")~THEN REPLY@160 + EggchangeS
IF~PartyHasItem("lk#xeggs")~THEN REPLY@161 + EggchangeX

CHAIN
IF~~THEN SimeJ Eggchange2
@162EXIT

CHAIN
IF~~THEN SimeJ EggchangeP
@163DO~StartCutSceneMode() Wait(1) StartCutScene("PP_Eggsu")~EXIT

CHAIN
IF~~THEN SimeJ EggchangeS
@163DO~StartCutSceneMode() Wait(1) StartCutScene("PP_Eggsv")~EXIT

CHAIN
IF~~THEN SimeJ EggchangeX
@163DO~StartCutSceneMode() Wait(1) StartCutScene("PP_Eggsx")~EXIT

CHAIN
IF~Global("PPSimeFamily","Global",7)~THEN SimeJ Retire1
@164
DO~SetGlobal("PPSimeFamily","Global",8)~
END
++@165 + Retire2
++@166 + Retire3
IF~OR(2) Race(Player1,ELF)Race(Player1,HALF_ELF)~THEN REPLY@167 + Retire3
IF~!Race(Player1,ELF)!Race(Player1,HALF_ELF)~THEN REPLY@167 + Retire7
++@168 + Retire4

CHAIN
IF~~THEN SimeJ Retire2
@169 EXIT

CHAIN
IF~~THEN SimeJ Retire3
@170
=@171
END
++@172+ Retire6
++@173+ Retire5

CHAIN
IF~~THEN SimeJ Retire4
@174
=@175
END
++@173+ Retire5
++@172+ Retire6

CHAIN
IF~~THEN SimeJ Retire5
@176
=@177EXTERN SimeJ Retire6

CHAIN
IF~~THEN SimeJ Retire6
@178
=@179
=@180EXIT

CHAIN
IF~~THEN SimeJ Retire7
@181 EXTERN SimeJ Retire3