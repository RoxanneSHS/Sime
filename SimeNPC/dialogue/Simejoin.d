ALTER_TRANS PPSime BEGIN 9 END BEGIN 0 END BEGIN "ACTION" ~~ "EPILOGUE" ~GOTO join1~ END

APPEND PPSime

IF~~THEN BEGIN join1
SAY~Or...even better - how about doing this together, <CHARNAME>. We got to know each other during that recent travel, didn't we? I have come to trust you, I hope you trust me too.~
IF~~THEN REPLY~Yes, Sime, I trust you but I have enough friends with me already.~ GOTO joinno
IF~~THEN REPLY~You have been useful so far and may become useful during this quest.~ GOTO joinmay
IF~~THEN REPLY~What? I trust you as little as I trust Aran or Seamon.~ GOTO joinno
END

IF~~THEN BEGIN joinno
SAY~Yeah, I was afraid you'd say that. It was worth a try anyway.~
IF~~THEN GOTO 10
END

IF~~THEN BEGIN joinmay
SAY~Useful for sure. I appreciate the way you respect your companions. I appreciate loyalty. I will be loyal to your task if you give me a chance, <CHARNAME>.~
IF~~THEN REPLY~I will let you join, Sime, this island has already proven to be dangerous. Our chances are better if we stay together.~ DO~JoinParty()~EXIT
IF~~THEN REPLY~I give you that chance but I don't need to let you join my party for that.~GOTO joinno
END

END

CHAIN
IF~Global("AsylumPlot","GLOBAL",0) AreaCheck("ar0307")~THEN PPSime Firstmeet1
~They say you're trying to reach Brynnlaw and the asylum there - Spellhold.~
END
++~Can you do anything for me to make Aran speed up the transportation?~ + Firstmeet2
++~That's not your business at all.~ + Firstmeet2
++~Most people know something about me even if I never met them before.~ + Firstmeet2
++~And who may you be?~ + Firstmeet2

CHAIN
IF~~THEN PPSime Firstmeet2
~Excuse me, where are my manners? My name is Sime.~
=~I have an agreement with Aran to travel to Brynnlaw as well. I've some contacts and information about the island. We'll surely be on the same ship, so I can't await for the journey to start.~
END
++~I'm not paying for your passage if that's what you ask me next.~ + Firstmeet3
++~A spy for Aran I may assume. That's not what I need.~ + Firstmeet3

CHAIN
IF~~THEN PPSime Firstmeet3
~(She lowers her voice.) I have a personal reason to get into the Asylum. You don't need to worry, I ask nothing of you but I may be helpful if we meet again.~DO~EscapeAreaDestroy(40)~EXIT