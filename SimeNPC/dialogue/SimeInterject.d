CHAIN
IF WEIGHT #-5~ Global("ThiefGroup","GLOBAL",2) Global("AsylumPlot","GLOBAL",1)~THEN PPSAEM WithSime1
~We have arrived! And in good time, I might add. Congratulatory remarks for all the crew - and to our visitors for their delightful company.~
DO~SetGlobal("AsylumPlot","GLOBAL",2) SetGlobalTimer("SaemonHasArrived","GLOBAL",TWO_HOURS)~
==NaliaJ IF~InParty("Nalia")~THEN~Delightful company? This ship is filthy, falling apart, and your crew has been nothing less than boorish. Ick... I've never felt so in need of a good bath!~
==JanJ IF~InParty("Jan")~THEN~Yes, that was quite the voyage, wasn't it? All the swaying to and fro, and then there was that storm two days ago and the close brush with the dragon turtle there. The food reminded me of the time Ma Jansen went on her trip to Smurtlepuss and Uncle Scratchy did all the cooking too. Ahhhh, smell the air! Feel the invigoration!~
==YoshJ IF~InParty("Yoshimo")~THEN~We had to make the best of it. I myself managed to win a fair amount of coin from your crew... they seemed to think they were the only ones who knew how to play cards, oddly.~
==KorganJ IF~InParty("Korgan")~THEN~Bah! Well, I have no intention of being pleasant! I've heaved up enough of me guts on this trip to leave me emptier than a halfling's head! Never will ye get me aboard a ship again!~
==PPSIme~A particular congratulations to you, Captain. It was fortunate you distracted those other ships we saw in the distance. Your signals in the night; were they some type of warning?~
==PPSaem~Yes, well, I thought they might be pirates, so I merely displayed a series of lights that mirrored their own. I wished to appear as though I were one of their own.~
=~Ehem... who are you anyway, beautiful lady? How come I did not notice you before?~
==PPSime~I didn't want you to notice me, that's why. Aran Linvail holds his word, mind that, scoundrel. He promised <CHARNAME> a safe journey and I was on board to assure just that. He did well not to trust anyone too much as I can see now.~
==PPSaem~Eh...Aran - you will understand I had to do what I had to do, nothing personal, you see.~
==PPSime~<CHARNAME> has arrived safely, this was our concern, for the rest you will surely pay later. Again, my compliments. It did seem that they truly believed your signal meant there would be trouble if they attacked.~
==PPSaem~It merely proves how short of wit they can be. One must always be a step ahead of their adversaries.~ DO~SetAreaRestFlag(0)~
==YoshJ IF~InParty("Yoshimo")~THEN~And a step behind their friends. I trust no more will happen to hamper our success. ~
==PPSaem~Regardless, you are now safely at your destination, and I shall cheerfully take my leave of you. It has been a pleasure, Mistress Bodhi.~
END
++~I shall need a guide about town. Perhaps you would accompany us for a while?~ EXTERN PPBodhi3 14
++~Good, I am glad to see you go. I do not trust you in the slightest.~ EXTERN PPBodhi3 17
++~Fare thee well, then. I bid you safe travels.~ EXTERN PPBodhi3 17

I_C_T Amcarras 11 PPSimeCarras
==SimeJ IF~InParty("ppsime")~THEN~Hello Carras, old friend, still working for Saemon, don't you?~
==Amcarras IF~InParty("ppsime")~THEN~Sime? A lot of old acquaintances turn up again these days. Yeah, Saemon, whom am I trying to fool here...~
==SimeJ IF~InParty("ppsime")~THEN~Not me, so much I can assure. Give him mine and <CHARNAME>'s regards just in case he doesn't listen to us from the shadow right now.~
END 

INTERJECT PPSanik 1 PPSimeSanikSave
==Pirmur02 IF~InParty("ppsime")~THEN~Hah! A romantic? Perhaps your death will serve some bard well. ~
==SimeJ IF~InParty("ppsime")~THEN~You think the shadow thieves forget traitors, Miratok? That man is under my protection and you know what that means.~
==Pirmur02 IF~InParty("ppsime")~THEN~Damn, it's either Sime or the Lady Galvena who will kill me. I dunno of Galvena's full power but I know yours and the ones you represent. I'm outta here.~
DO ~MoveToPoint([374.675]) Wait(4) EscapeArea()~ EXIT

INTERJECT PPDesh 5 PPDeshSime
==PPDesh IF~InMyArea("ppsime")~THEN~Decent? You bring Aran Linvail's spy Sime along. What kind of idiot do you think stands before you? Don't dare to answer!~ DO~SetGlobal("PirateRefused","GLOBAL",1) Enemy()~EXIT

INTERJECT PPDesh 5 PPDeshSime2
==PPDesh IF~!InMyArea("ppsime") OR(2) !Global("PPSimeSanikSave","Global",0) !Global("PPSimeMetGalvena","Global",0)~THEN~Decent? You have been seen with Aran Linvail's spy Sime. What kind of idiot do you think stands before you? Don't dare to answer.~ DO~SetGlobal("PirateRefused","GLOBAL",1)~
END PPDesh 13

I_C_T Maeguy01 1 PPKamSime
==Maeguy01 IF~InParty("PPSime") Global("PPstillKamJail","Global",1)~THEN~Merella? Is that you?~
==SimeJ IF~InParty("PPSime") Global("PPstillKamJail","Global",1)~THEN~My name is Sime but my mother's name was Merella. They say I resemble her.~
==Maeguy01 IF~InParty("PPSime") Global("PPstillKamJail","Global",1)~THEN~Sime? I had a daughter of that name.~
==SimeJ IF~InParty("PPSime") Global("PPstillKamJail","Global",1)~THEN~Hold out...we will soon free you...father.~DO~SetGlobal("PPstillKamJail","Global",2)~
END

INTERJECT Maeguy01 4 PPKamSime2
==SimeJ IF~InParty("PPSime")~THEN~We will not waste a second...here you go.~
END Maeguy01 5

INTERJECT Maeguy01 12 PPKamSime3
==SimeJ IF~InParty("PPSime")~THEN~We will not waste a second...here you go.~
END Maeguy01 5

I_C_T2 UHrang01 0 PPSimeMerelWitness
==SimeJ IF~InParty("PPSime")~THEN~Mother!...Rest in peace. Your fight will not be forgotten.~
END

CHAIN
IF WEIGHT #-5~Global("PPstillKamJail","Global",4) Global("PPKamSime","Global",0)~THEN Maeguy01 MeetSime1
~Merella? Is that you?~
DO~SetGlobal("PPstillKamJail","Global",5)~
==SimeJ ~My name is Sime but my mother's name was Merella. They say I resemble her.~
==Maeguy01 ~Sime? I had a daughter of that name.~
=~And I had a boy named Keruak.~
==SimeJ ~It's sad news but Keruak is dead. I had to witness his murder by a man named Irenicus with my own eyes. Your daughter is alive - it's me, Sime...father!~
END
++~(You leave father and daughter to their privacy and move your party to the bar meanwhile.)~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF WEIGHT #-5~Global("PPstillKamJail","Global",4) Global("PPKamSime","Global",1)~THEN Maeguy01 MeetSime2
~Sime? You said that was your name, didn't you. I had a daughter of that name.~
DO~SetGlobal("PPstillKamJail","Global",5)~
=~And I had a boy named Keruak.~
==SimeJ ~It's sad news but Keruak is dead. I had to witness his murder by a man named Irenicus with my own eyes. Your daughter is alive - it's me, Sime...father!~
END
++~(You leave father and daughter to their privacy and move your party to the bar meanwhile.)~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

I_C_T PPIreni2 2 PPSimeAsyl1
==SimeJ IF~InParty("ppsime")~THEN~I observed all his actions, but magic poison on food...disgusting.~
==PPIreni2 IF~InParty("ppsime")~THEN~Disgusting? A weakness of yours not to see what is most effective. By this, your defenses fail.~
END

I_C_T PPIreni2 16 PPSimeAsyl2
==SimeJ IF~InParty("ppsime")~THEN~Keruak! That one is my brother.~
==PPIreni2 IF~InParty("ppsime")~THEN~Even better, personal knowledge of a victim makes the procedure much more effective. ~
END

I_C_T PPSaem2 4 PPSaemPoison
==SimeJ IF~InParty("ppsime")~THEN~Last time it was poison in our food now it's poison in your ears, <CHARNAME>.~
==PPSaem2 IF~InParty("ppsime")~THEN~Could I have succeeded without your carelessness, Sime? A bit of play with the laterns was enough to distract you.~
==SimeJ IF~InParty("ppsime")~THEN~Play with words does not distract me this time. What is that blade that Irenicus gave you?~
==PPSaem2 IF~InParty("ppsime")~THEN~A mere trinket compared to the service I had provided. Let's make peace, Sime, I came to talk to <CHARNAME>.~
END

CHAIN
IF WEIGHT #-4~Global("GorchOpen","GLOBAL",1) InParty("ppsime")~THEN Gorch OpenSime
~Aha... do come in, come in. Take a look around, if you wish. I am Gorch, the humble proprietor of this modest establishment...Wait, Sime?~
==SIMEJ~Right. Gorch, we have no time for your games, open that door to Mae'Var and you may survive this encounter.~
==Gorch~You! You are a fool to have returned here! Leave this place while you still possess the ability to do so!~
==SIMEJ~This is <CHARNAME> if my own presence here is not enough to convince you.~
==Gorch~I'm not fool enough to go down with Mae'Var, do what you will, I'll be gone, Sime.~
DO~Unlock("DOOR01") Unlock("DOOR02") SetGlobal("GorchOpen","GLOBAL",2) Wait(2) EscapeAreaDestroy(20)~EXIT

EXTEND_BOTTOM Maevar 0
IF ~InParty("ppsime") Global("FreedKamuzu","GLOBAL",0)~THEN REPLY ~You do threaten neither me nor Sime. Release her father Kamuzu.~ + MaeSimeCon
END

CHAIN
IF~~THEN Maevar MaeSimeCon
~Sime, come for me, have you? I should've known. I've still those loyal to me, and they have warned me one day you'd return. We'll not lay down for you! Do as you must!~
DO~ Enemy() ~EXIT

I_C_T PPSaem2 12 PPSaemTrust
==SimeJ IF~InParty("ppsime")~THEN~It may be unexpected advice from my side, <CHARNAME>, but this time I trust him. He can no longer gain anything by trying to betray us.~
==PPSaem2 IF~InParty("ppsime")~THEN~The shadow thieves rule Athkatla because they choose their allies with care. Aran has taught you well, Sime.~
END

I_C_T HGWra01  18 PPGorionTrap
==HGwra01 IF~InParty("ppsime")~THEN~Sime, why do you follow <CHARNAME> still? Did not <PRO_HESHE> cause the death of your brother, mother and father already.~
==SimeJ IF~InParty("ppsime")~THEN~What - <PRO_HESHE> had nothing to do with those killings, we were just present when it happened. And my father is alive, after all.~
==HGwra01 IF~InParty("ppsime")~THEN~<CHARNAME> will cause your death as well, girl.~
==SimeJ IF~InParty("ppsime")~THEN~I have no reason to believe you. I don't even have reason to believe that you're Gorion. I heard enough about that man from people who knew him to be sure you're an imposter.~
END

EXTEND_TOP SARVOLO 9
+ ~InParty("ppsime") InMyArea("ppsime") !StateCheck("ppsime",CD_STATE_NOTVALID) ~ + ~What information do you have about Sime, the shadow thief?~ + VoloBio
END

CHAIN
IF~~THEN SARVOLO VoloBio
~You mean the hooded fair haired beauty to your left?~
==SimeJ IF~InParty("ppsime")~THEN~That wasn't too hard to figure out, Volo?~
== Sarvolo IF~InParty("ppsime")~THEN~"A young woman courageous enough to embark on a journey to Spellhold to save a missing brother."~
==SimeJ IF~InParty("ppsime")~THEN~Attempted but failed...~
== Sarvolo IF~InParty("ppsime")~THEN~It's the intent that matters here and the courage. "Sime did not tremble when she and <CHARNAME> descended into the Underdark, nor did she leave when it was time to face Irenicus at the Tree of Life."~
==SimeJ IF~InParty("ppsime")~THEN~Yes, yes. And I'll be there when Bhaal needs a thrashing because I've got nothing better to do...bards!~ EXTERN SARVOLO 9

INTERJECT PLAYER1 33 PPSimeTreeofLife
==PLAYER1 IF ~InParty("ppsime") ~ THEN~Sime, the young shadow thief who saw so much loss and death already at your side. Now her own fate may be at the stake.~EXTERN Player1 SimeTreeofLife

CHAIN
IF~~THEN Player1 SimeTreeofLife
~(You turn to the young woman.)~
END
++ ~Sime, you have a life to return to. You don't need to go any further. This isn't your fight.~ EXTERN SimeJ TreeofLife1a
++ ~Sime, you witnessed how powerful Irenicus is. This might not end well for most of us. There is no need to endanger yourself.~ EXTERN SimeJ TreeofLife1a
++ ~(You nod reassuringly at her. She will come with you regardless of what you say. Her brother Keruak's blood is on Irenicus' hands.)~ EXTERN SimeJ TreeofLife1a

CHAIN
IF ~~ THEN SimeJ TreeofLife1a
~This IS my fight as well. Irenicus killed my brother and made me watch it. He took a bit of my soul with that. Killing him will restore me, in some way.~COPY_TRANS PLAYER1 33

I_C_T Amsaemon 3 PPSimeSaemamkt
==Amsaemon IF~InParty("ppsime")~THEN~Sime, how good you are still with <CHARNAME>. You can surely influence <PRO_HIMHER> to act reasonable.~
==SimeJ IF~InParty("ppsime")~THEN~Me? I'm not even listening to anything you say. These fool's lives go to your account.~
END

I_C_T 25Spell 15 PPSimeFootprints
==SimeJ IF~InParty("ppsime")~THEN~It reminds me of my childhood days in Aran's guild. Keruak or me would be used for such jobs, this theft was for a child to proof its worth.~
==25Spell IF~InParty("ppsime")~THEN~Squip...? There's a liitle street urchin that often hangs around Hectan to fetch this or that.~
==SimeJ IF~InParty("ppsime")~THEN~I bet he knows who did it if it wasn't himself. Let's go find him. But...please, <CHARNAME> be not to severe with him. It's not the child's fault but the circumstances, believe me.~
END

EXTEND_BOTTOM Sarthf2 2
IF~Global("PPSimeFootprints","Global",1)InParty("ppsime")~THEN REPLY~My friend Sime here is a shadow thief. She's been a thief since she was your age.~EXTERN SimeJ Footprints1
END

CHAIN
IF~~THEN SimeJ Footprints1
~I know the trade, Squip. Hectan wouldn't give you anything to eat and a beating instead until you came up with the mage's book. But you can now pay him back.~
DO~SetGlobal("PPSimeFootprints","Global",2)~
==Sarthf2~Okay, yeah... I might know something about that.~
==SimeJ~I have 5 gold here, I'm sure your memory is clear right now.~DO~ActionOverride("sarthf02",TakePartyGold(5))~EXTERN Sarthf2 5

EXTEND_BOTTOM Sarthf1 2
IF~GlobalGT("PPSimeFootprints","Global",0)InParty("ppsime")~THEN REPLY~My friend Sime here is a shadow thief. She's been a thief since she was a child. Do you know a boy named Squip?~ + 6
END