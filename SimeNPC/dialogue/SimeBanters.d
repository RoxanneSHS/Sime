CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("SimeImoen1","Locals",0)~ THEN Bimoen2 SimeImoen1
~He made you watch your brother's death. I mean Irenicus. He waited until he knew you were there to see it and feel the pain.~
DO ~SetGlobal("SimeImoen1","Locals",1)~
== SimeJ ~I would've killed everybody else for bringing this up. But you are another victim, Imoen, it's different in your case.~
== Bimoen2 ~I know how it feels. He made me watch many things. He cut people with knifes and made me watch his killings. He has no emotions and he plays with those of other people.~
== SimeJ ~I can't see him as a playful guy. If you mean he manipulates other's emotions, I'd agree.~
== Bimoen2 ~Guess your right, Sime. He doesn't play, all he does has a purpose, his own shrouded purpose.~
== SimeJ ~It does not matter in the end. We will kill him. He will pay for every little hurt he did to any of us.~
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
~We are on the same side now, Sime, no need to dwell on old times. (Maybe she doesn't remember them too well anyway.)~
DO ~SetGlobal("SimeEdwin1","Locals",1)~
== SimeJ ~Do you think I care, Edwin? You were as loyal to Mae'Var as you are now to <CHARNAME>. The only person in the multiverse you care about is yourself.~
==Bedwin~You understand I had to tell Mae'Var about your treachery back then.~
== SimeJ ~You had, just to advance yourself. Mae'Var is dead, I am alive. My weapons are sharp.~
==Bedwin~No need to use them against a comrade, Sime. (My wit is even sharper than your knife.)~
== SimeJ ~I don't promise anything, Thayan. You would be the safer the further away you stay from me.~EXIT

CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
Dead("uhrang01")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("Simemazzy1","Locals",0)~ THEN Bmazzy Simemazzy1
~She has loved you and Keruak and was very sorry she could not be with you for so long.~
DO ~SetGlobal("Simemazzy1","Locals",1)~
== SimeJ ~You knew my mother Merella, is that true, Mazzy? ~
==BMazzy~It was a short companionship only but long enough to know she was a good woman.~
== SimeJ ~How did you meet her?~
==BMazzy~Lellyn, Patrick and me heard of the trouble around Umar. Your mother, the local ranger, had found evidence for the large pack of shade wolves in the Temple Ruins. Sadly none of us knew about the Shade Lord when we joined our forces to end the spook.~
==BMazzy~I lost my friend Lellyn and my lover Patrick and you lost your mother. Your mother is a herioine who died to protect the land. This is supposed to be the duty of a ranger.~
== SimeJ ~Thank you for sharing this, Mazzy. I know it hurts you as much as it hurts me.~EXIT

CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("PPsimePaldinBanter","Global",0)~ THEN Banomen Simepalad1
~Which type of activities did you perform for shadow thieves, Sime?~
DO~SetGlobal("PPsimePaldinBanter","Global",1)~
== SimeJ~Interrogation or inquisition was not among them. We had specialists for that, often they were fallen paladins.~
==Banomen~I doubt the truth of that!~
== SimeJ~I was never involved in murder or slave trade. I did nothing that I haven't done as well while travelling in <CHARNAME>'s party. I did nothing that I wouldn't do again if circumstances would require it.~
==Banomen~Not regretting anything is the typical mindset of your kind.~
== SimeJ~I could be a paladin then, they have nothing to regret either, or do they?~EXIT

CHAIN
IF ~InParty("ppsime")
See("ppsime")
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("ppsime",CD_STATE_NOTVALID)
Global("PPsimePaldinBanter","Global",0)~ THEN BKeldor Simepalad2
~Which type of activities did you perform for shadow thieves, Sime?~
DO~SetGlobal("PPsimePaldinBanter","Global",1)~
== SimeJ~Interrogation or inquisition was not among them. We had specialists for that, often they were fallen paladins.~
==BKeldor ~I doubt the truth of that!~
== SimeJ~I was never involved in murder or slave trade. I did nothing that I haven't done as well while travelling in <CHARNAME>'s party. I did nothing that I wouldn't do again if circumstances would require it.~
==BKeldor ~Not regretting anything is the typical mindset of your kind.~
== SimeJ~I could be a paladin then, they have nothing to regret either, or do they?~EXIT