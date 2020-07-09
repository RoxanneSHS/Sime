CHAIN
IF WEIGHT #-5~ Global("ThiefGroup","GLOBAL",2) Global("AsylumPlot","GLOBAL",1)~THEN PPSAEM WithSime1
@0
DO~SetGlobal("AsylumPlot","GLOBAL",2) SetGlobalTimer("SaemonHasArrived","GLOBAL",TWO_HOURS)~
==NaliaJ IF~InParty("Nalia")~THEN@1
==JanJ IF~InParty("Jan")~THEN@2
==YoshJ IF~InParty("Yoshimo")~THEN@3
==KorganJ IF~InParty("Korgan")~THEN@4
==PPSIme@5
==PPSaem@6
=@7
==PPSime@8
==PPSaem@9
==PPSime@10
==PPSaem@11 DO~SetAreaRestFlag(0)~
==YoshJ IF~InParty("Yoshimo")~THEN@12
==PPSaem@13
END
++@14 EXTERN PPBodhi3 14
++@15 EXTERN PPBodhi3 17
++@16 EXTERN PPBodhi3 17

I_C_T Amcarras 11 PPSimeCarras
==SimeJ IF~InParty("ppsime")~THEN@17
==Amcarras IF~InParty("ppsime")~THEN@18
==SimeJ IF~InParty("ppsime")~THEN@19
END 

INTERJECT PPSanik 1 PPSimeSanikSave
==Pirmur02 IF~InParty("ppsime")~THEN@20
==SimeJ IF~InParty("ppsime")~THEN@21
==Pirmur02 IF~InParty("ppsime")~THEN@22
DO ~MoveToPoint([374.675]) Wait(4) EscapeArea()~ EXIT

INTERJECT PPDesh 5 PPDeshSime
==PPDesh IF~InMyArea("ppsime")~THEN@23 DO~SetGlobal("PirateRefused","GLOBAL",1) Enemy()~EXIT

INTERJECT PPDesh 5 PPDeshSime2
==PPDesh IF~!InMyArea("ppsime") OR(2) !Global("PPSimeSanikSave","Global",0) !Global("PPSimeMetGalvena","Global",0)~THEN@24 DO~SetGlobal("PirateRefused","GLOBAL",1)~
END PPDesh 13

I_C_T Maeguy01 1 PPKamSime
==Maeguy01 IF~InParty("PPSime") Global("PPstillKamJail","Global",1)~THEN@25
==SimeJ IF~InParty("PPSime") Global("PPstillKamJail","Global",1)~THEN@26
==Maeguy01 IF~InParty("PPSime") Global("PPstillKamJail","Global",1)~THEN@27
==SimeJ IF~InParty("PPSime") Global("PPstillKamJail","Global",1)~THEN@28DO~SetGlobal("PPstillKamJail","Global",2)~
END

INTERJECT Maeguy01 4 PPKamSime2
==SimeJ IF~InParty("PPSime")~THEN@29
END Maeguy01 5

INTERJECT Maeguy01 12 PPKamSime3
==SimeJ IF~InParty("PPSime")~THEN@29
END Maeguy01 5

I_C_T2 UHrang01 0 PPSimeMerelWitness
==SimeJ IF~InParty("PPSime")~THEN@30
END

CHAIN
IF WEIGHT #-5~Global("PPstillKamJail","Global",4) Global("PPKamSime","Global",0)~THEN Maeguy01 MeetSime1
@25
DO~SetGlobal("PPstillKamJail","Global",5)~
==SimeJ @26
==Maeguy01 @27
=@31
==SimeJ @32
END
++@33DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF WEIGHT #-5~Global("PPstillKamJail","Global",4) Global("PPKamSime","Global",1)~THEN Maeguy01 MeetSime2
@34
DO~SetGlobal("PPstillKamJail","Global",5)~
=@31
==SimeJ @32
END
++@33DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

I_C_T PPIreni2 2 PPSimeAsyl1
==SimeJ IF~InParty("ppsime")~THEN@35
==PPIreni2 IF~InParty("ppsime")~THEN@36
END

I_C_T PPIreni2 16 PPSimeAsyl2
==SimeJ IF~InParty("ppsime")~THEN@37
==PPIreni2 IF~InParty("ppsime")~THEN@38
END

I_C_T PPSaem2 4 PPSaemPoison
==SimeJ IF~InParty("ppsime")~THEN@39
==PPSaem2 IF~InParty("ppsime")~THEN@40
==SimeJ IF~InParty("ppsime")~THEN@41
==PPSaem2 IF~InParty("ppsime")~THEN@42
END

CHAIN
IF WEIGHT #-4~Global("GorchOpen","GLOBAL",1) InParty("ppsime")~THEN Gorch OpenSime
@43
==SIMEJ@44
==Gorch@45
==SIMEJ@46
==Gorch@47
DO~Unlock("DOOR01") Unlock("DOOR02") SetGlobal("GorchOpen","GLOBAL",2) Wait(2) EscapeAreaDestroy(20)~EXIT

EXTEND_BOTTOM Maevar 0
IF ~InParty("ppsime") Global("FreedKamuzu","GLOBAL",0)~THEN REPLY @48 + MaeSimeCon
END

CHAIN
IF~~THEN Maevar MaeSimeCon
@49
DO~ Enemy() ~EXIT

I_C_T PPSaem2 12 PPSaemTrust
==SimeJ IF~InParty("ppsime")~THEN@50
==PPSaem2 IF~InParty("ppsime")~THEN@51
END

CHAIN
IF~!InPartySlot(LastTalkedToBy,0) Name("ppsime",LastTalkedToBy) Global("Sal_Sime","LOCALS",0)~THEN Salvanas MeetSime
@52
DO~SetGlobal("Sal_Sime","LOCALS",1)~
==SimeJ@53
==Salvanas@54
==SimeJ@55
==Salvanas@56
==SimeJ@57
==Salvanas@58EXIT

I_C_T HGWra01  18 PPGorionTrap
==HGwra01 IF~InParty("ppsime")~THEN@59
==SimeJ IF~InParty("ppsime")~THEN@60
==HGwra01 IF~InParty("ppsime")~THEN@61
==SimeJ IF~InParty("ppsime")~THEN@62
END

EXTEND_TOP SARVOLO 9
+ ~InParty("ppsime") InMyArea("ppsime") !StateCheck("ppsime",CD_STATE_NOTVALID) ~ + @63 + VoloBio
END

CHAIN
IF~~THEN SARVOLO VoloBio
@64
==SimeJ IF~InParty("ppsime")~THEN@65
== Sarvolo IF~InParty("ppsime")~THEN@66
==SimeJ IF~InParty("ppsime")~THEN@67
== Sarvolo IF~InParty("ppsime")~THEN@68
==SimeJ IF~InParty("ppsime")~THEN@69 EXTERN SARVOLO 9

INTERJECT PLAYER1 33 PPSimeTreeofLife
==PLAYER1 IF ~InParty("ppsime") ~ THEN@70EXTERN Player1 SimeTreeofLife

CHAIN
IF~~THEN Player1 SimeTreeofLife
@71
END
++ @72 EXTERN SimeJ TreeofLife1a
++ @73 EXTERN SimeJ TreeofLife1a
++ @74 EXTERN SimeJ TreeofLife1a

CHAIN
IF ~~ THEN SimeJ TreeofLife1a
@75COPY_TRANS PLAYER1 33

I_C_T Amsaemon 3 PPSimeSaemamkt
==Amsaemon IF~InParty("ppsime")~THEN@76
==SimeJ IF~InParty("ppsime")~THEN@77
END

EXTEND_TOP FATESP 6 #17
+ ~InParty("ppsime") !InMyArea("PPsime") Global("PPSimeSummoned","GLOBAL",0)~ + @78
DO ~SetGlobal("PPSimeSummoned","GLOBAL",1)~ GOTO SimeGone
END

CHAIN
IF~~THEN FATESP SimeGone
@79DO~DestroySelf()~EXIT

I_C_T 25Spell 15 PPSimeFootprints
==SimeJ IF~InParty("ppsime")~THEN@80
==25Spell IF~InParty("ppsime")~THEN@81
==SimeJ IF~InParty("ppsime")~THEN@82
END

EXTEND_BOTTOM Sarthf2 2
IF~Global("PPSimeFootprints","Global",1)InParty("ppsime")~THEN REPLY@83EXTERN SimeJ Footprints1
END

CHAIN
IF~~THEN SimeJ Footprints1
@84
DO~SetGlobal("PPSimeFootprints","Global",2)~
==Sarthf2@85
==SimeJ@86DO~ActionOverride("sarthf02",TakePartyGold(5))~EXTERN Sarthf2 5

EXTEND_BOTTOM Sarthf1 2
IF~Global("PPSimeFootprints","Global",1)InParty("ppsime")~THEN REPLY@87 + 6
END