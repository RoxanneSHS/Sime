CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("SimeImoen1","Locals",0)~ THEN Bimoen2 SimeImoen1
@0
DO ~SetGlobal("SimeImoen1","Locals",1)~
== SimeJ @1
== Bimoen2 @2
== SimeJ @3
== Bimoen2 @4
== SimeJ @5
EXIT

CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
OR(2)
Global("MaeVarExposed","GLOBAL",1)
Dead("Maevar")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("SimeEdwin1","Locals",0)~ THEN Bedwin SimeEdwin1
@6
DO ~SetGlobal("SimeEdwin1","Locals",1)~
== SimeJ @7
==Bedwin@8
== SimeJ @9
==Bedwin@10
== SimeJ @11EXIT

CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
Dead("uhrang01")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("Simemazzy1","Locals",0)~ THEN Bmazzy Simemazzy1
@12
DO ~SetGlobal("Simemazzy1","Locals",1)~
== SimeJ @13
==BMazzy@14
== SimeJ @15
==BMazzy@16
==BMazzy@17
== SimeJ @18EXIT

CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("PPsimePaldinBanter","Global",0)~ THEN Banomen Simepalad1
@19
DO~SetGlobal("PPsimePaldinBanter","Global",1)~
== SimeJ@20
==Banomen@21
== SimeJ@22
==Banomen@23
== SimeJ@24EXIT

CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("PPsimePaldinBanter","Global",0)~ THEN BKeldor Simepalad2
@19
DO~SetGlobal("PPsimePaldinBanter","Global",1)~
== SimeJ@20
==BKeldor @21
== SimeJ@22
==BKeldor @23
== SimeJ@24EXIT