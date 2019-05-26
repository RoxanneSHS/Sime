CHAIN
IF WEIGHT #-5~Global("PPSimeSanikSave","Global",1)~THEN PPSanik Alive1
~As you can see, it is not safe here for me and Claire. However, as urgent as it is that we flee, there are obstacles.~
DO~SetGlobal("PPSimeSanikSave","Global",2)~
==SimeJ IF~InParty("PPSime")~THEN~(Sigh) Still problems? I thought I just solved one for you.~
==PPSanik ~This assassin was sent by Lady Galvena, the owner of the local festhall.~
==PPINN01~By Umberlee's teat! Who does Galvena think she is? Assassination attempts in the Vulgar Monkey! That uppity wench!~DO~SetGlobal("SanikPlot","GLOBAL",1)~
==SimeJ IF~InParty("PPSime")~THEN~Sanik, before I left Athkatla I was informed that you trade with the Asylum and thus know about the ways to enter or how it's protected against intruders.~
==PPSanik ~Perhaps we can help each other. You seek an entrance to the asylum, and I can provide that, if you will assist me.~
END
++ ~Very well. What are your conditions?~ + Alive2
++ ~I have no time for such diversions. Solve your problems and I solve mine.~ + Alive3

CHAIN
IF~~THEN PPSanik Alive2
~My new wife, Claire, was once forced to work for the festhall owner, Galvena. However, knowing of our intent to marry, Galvena is unwilling to free the girl from her service.~
= ~It seems that she has learned of our plans to flee the island. I guess that Claire is now being held somewhere in the festhall.~
= ~I would ask that you save Claire from the clutches of Galvena. In return I will help you as best I can.~
END
++~Fine. I'll do it, but your information had better be good.~+ Alive4
++~No, I have no time for such diversions. Solve your problems and I solve mine.~ + Alive3

CHAIN
IF~~THEN PPSanik Alive3
~I can't stay here longer. They know where I am.~
==SimeJ IF~InParty("PPSime")~THEN~<CHARNAME>, you are...gosh, you need to take the hard way, don't you?~
==PPSanik~A <PRO_MANWOMAN> must do what <PRO_HESHE> must do. And I must do what must be done for Claire's sake.~DO~SetGlobal("PPSimeSanikSave","Global",20) EscapeArea()~ EXIT

CHAIN
IF~~THEN PPSanik Alive4
~We have a deal. Come back here when you have found Claire and I tell you what I know about the asylum.~
DO ~AddJournalEntry(@003,QUEST)~EXIT

I_C_T Pirmur01 4 PPSimeMetGalvena
==SimeJ IF~InParty("ppsime") GlobalGT("PPSimeSanikSave","Global",1)~THEN~Your attempt to have Sanik assassinated has failed. Claire, your husband is unhurt.~
==Pirmur01 IF~InParty("ppsime") GlobalGT("PPSimeSanikSave","Global",1)~THEN~Is nothing ever done the way I want it unless I do it myself?~
END

CHAIN
IF WEIGHT #-6~Dead("pirmur01") Dead("pirmur07") Global("SavedClaire","GLOBAL",0) Global("PPSimeSanikSave","Global",2)~THEN Pirmur10 BothSaved1
~Oh, thank you! She was going to kill me! Did Sanik send you? I must go and find him!~
END
IF ~Global("PPSimeSanikSave","Global",2)~THEN REPLY~I have an agreement with Sanik. He sent me to free you. Meet him in the tavern now, I will soon come so he can deliver his part of the deal.~ DO~SetGlobal("PPSimeSanikSave","Global",3)~ + BothSaved2
IF ~Global("PPSimeSanikSave","Global",20)~THEN REPLY~Sanik was attacked by Galvena's assassin just before he was going to tell me how I might gain access to the Asylum. Even though I saved his life he left before helping me.~ + BothSaved3

CHAIN
IF~~THEN Pirmur10 BothSaved2
~Thank you, I'm so glad Sanik isn't hurt! He surely will give you what is due. He is an honest man.~ DO~ AddexperienceParty(5000) SetGlobal("SavedClaire","GLOBAL",2) EscapeArea()~ EXIT

CHAIN
IF~~THEN Pirmur10 BothSaved3
~You must forgive him, <PRO_LORDLADY>, this is not his usual behaviour. He still must have been too scared of Galvena to stay.~
=~I would be more than glad to help you but I fear I know nothing. I wish you the best of luck in your quest, but I must find Sanik now. Farewell!~ DO~ AddexperienceParty(5000) SetGlobal("SavedClaire","GLOBAL",2) EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-6~AreaCheck("ar1602") GlobalGT("SavedClaire","GLOBAL",0) Global("PPSimeSanikSave","Global",3)~THEN Pirmur10 BothSaved11
~Here <PRO_HESHE> comes, our saviour!~
DO~SetGlobal("PPSimeSanikSave","Global",4)~
==PPSanik~<CHARNAME>, you have my thanks for saving Claire. We are leaving this island soon and will be happy together elsewhere.~
= ~I will fulfill my part of the deal now. Here is my captain, Golin, who has some information that may be of use to you.~
==Pirmur09~Sanik told me that you seek entry to the asylum. I know a little of the place, so perhaps I can assist you.~
= ~Only two kinds of people get in there: Cowled Wizards and "deviants," people with special conditions of the mind.~
END
++~How do the Cowled Wizards enter?~EXTERN Pirmur09 3
++~Who sends the deviants inside?~ EXTERN Pirmur09 6

CHAIN
IF WEIGHT #-6~AreaCheck("ar1602") GlobalGT("SavedClaire","GLOBAL",0) Global("PPSimeSanikSave","Global",4)~THEN Pirmur10 BothSaved12
~I still don't know why you'd want to get in there but I hope we paid our debt with this information.~
DO~SetGlobal("PPSimeSanikSave","Global",5)~
==Pirmur09~Whatever you do there, I wish you well.~
=~Sanik, Claire, now may be the right time to depart.~
==PPSanik~The sooner the better, Golin. I think we have been able to repay some of our debt to you, <CHARNAME>. Farewell.~
==Pirmur10~Farewell.~ DO~ReputationInc(1) ActionOverride("ppsanik",EscapeArea()) ActionOverride("pirmur09",EscapeArea()) EscapeArea()~ EXIT