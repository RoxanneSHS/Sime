CHAIN
IF WEIGHT #-5~Global("PPSimeSanikSave","Global",1)~THEN PPSanik Alive1
@0
DO~SetGlobal("PPSimeSanikSave","Global",2)~
==SimeJ IF~InParty("PPSime")~THEN@1
==PPSanik @2
==PPINN01@3DO~SetGlobal("SanikPlot","GLOBAL",1)~
==SimeJ IF~InParty("PPSime")~THEN@4
==PPSanik @5
END
++ @6 + Alive2
++ @7 + Alive3

CHAIN
IF~~THEN PPSanik Alive2
@8
= @9
= @10
END
++@11+ Alive4
++@12 + Alive3

CHAIN
IF~~THEN PPSanik Alive3
@13
==SimeJ IF~InParty("PPSime")~THEN@14
==PPSanik@15DO~SetGlobal("PPSimeSanikSave","Global",20) EscapeArea()~ EXIT

CHAIN
IF~~THEN PPSanik Alive4
@16
DO ~AddJournalEntry(@6003,QUEST)~EXIT

I_C_T Pirmur01 4 PPSimeMetGalvena
==SimeJ IF~InParty("ppsime") GlobalGT("PPSimeSanikSave","Global",1)~THEN@17
==Pirmur01 IF~InParty("ppsime") GlobalGT("PPSimeSanikSave","Global",1)~THEN@18
END

CHAIN
IF WEIGHT #-6~Dead("pirmur01") Dead("pirmur07") Global("SavedClaire","GLOBAL",0) Global("PPSimeSanikSave","Global",2)~THEN Pirmur10 BothSaved1
@19
END
IF ~Global("PPSimeSanikSave","Global",2)~THEN REPLY@20 DO~SetGlobal("PPSimeSanikSave","Global",3)~ + BothSaved2
IF ~Global("PPSimeSanikSave","Global",20)~THEN REPLY@21 + BothSaved3

CHAIN
IF~~THEN Pirmur10 BothSaved2
@22 DO~ AddexperienceParty(5000) SetGlobal("SavedClaire","GLOBAL",2) EscapeArea()~ EXIT

CHAIN
IF~~THEN Pirmur10 BothSaved3
@23
=@24 DO~ AddexperienceParty(5000) SetGlobal("SavedClaire","GLOBAL",2) EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-6~AreaCheck("ar1602") GlobalGT("SavedClaire","GLOBAL",0) Global("PPSimeSanikSave","Global",3)~THEN Pirmur10 BothSaved11
@25
DO~SetGlobal("PPSimeSanikSave","Global",4)~
==PPSanik@26
= @27
==Pirmur09@28
= @29
END
++@30EXTERN Pirmur09 3
++@31 EXTERN Pirmur09 6

CHAIN
IF WEIGHT #-6~AreaCheck("ar1602") GlobalGT("SavedClaire","GLOBAL",0) Global("PPSimeSanikSave","Global",4)~THEN Pirmur10 BothSaved12
@32
DO~SetGlobal("PPSimeSanikSave","Global",5)~
==Pirmur09@33
=@34
==PPSanik@35
==Pirmur10@36 DO~ReputationInc(1) ActionOverride("ppsanik",EscapeArea()) ActionOverride("pirmur09",EscapeArea()) EscapeArea()~ EXIT