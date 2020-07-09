ALTER_TRANS PPSime BEGIN 9 END BEGIN 0 END BEGIN "ACTION" ~~ "EPILOGUE" ~GOTO join1~ END

APPEND PPSime

IF~~THEN BEGIN join1
SAY@0
IF~~THEN REPLY@1 GOTO joinno
IF~~THEN REPLY@2 GOTO joinmay
IF~~THEN REPLY@3 GOTO joinno
END

IF~~THEN BEGIN joinno
SAY@4
IF~~THEN GOTO 10
END

IF~~THEN BEGIN joinmay
SAY@5
IF~~THEN REPLY@6 DO~JoinParty()~EXIT
IF~~THEN REPLY@7GOTO joinno
END

END

CHAIN
IF~Global("AsylumPlot","GLOBAL",0) AreaCheck("ar0307")~THEN PPSime Firstmeet1
@8
END
++@9 + Firstmeet2
++@10 + Firstmeet2
++@11 + Firstmeet2
++@12 + Firstmeet2

CHAIN
IF~~THEN PPSime Firstmeet2
@13
=@14
END
++@15 + Firstmeet3
++@16 + Firstmeet3

CHAIN
IF~~THEN PPSime Firstmeet3
@17DO~EscapeAreaDestroy(40)~EXIT