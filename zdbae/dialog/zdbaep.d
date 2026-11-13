BEGIN ZDBAEP

// Kickout Dialogue
IF ~Global("ZDBAE_JOINED","GLOBAL",1) Global("ZDBAE_LEFT", "GLOBAL", "0")~ THEN BEGIN ZDBAEJ1
  SAY ~不！不！不、不、不！别把我丢在这儿，你这蠢透了的混蛋！别让我死在那些白皮肤蛮子手里！~ [ZDBAE52]
  IF ~~ THEN REPLY ~好吧，你的哀叫管用了。你可以留下。~  DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY ~就在这儿等着。回头我或许会来叫你。~ DO ~SetGlobal("ZDBAE_LEFT", "GLOBAL", "1")~ EXIT
END

// Rejoin
IF ~Global("ZDBAE_JOINED","GLOBAL",1) Global("ZDBAE_LEFT", "GLOBAL", "1")~ THEN BEGIN ZDBAEJ2
  SAY ~希望你还满意。看看我这身衣服！满身都是结块的泥！你知道我一路赶来，得躲开多少毛茸茸的四条腿畜生吗？是“汪”还是“码头”？我也搞不清。~ [ZDBAE50]
  IF ~~ THEN REPLY ~我也向你问好，贝洛斯。我需要你的本事。你愿意加入我吗？~ GOTO ZDBAEJ3
  IF ~~ THEN REPLY ~嗯，继续吧。到目前为止你干得不错。~ EXIT
END

// Join
IF ~~ THEN BEGIN ZDBAEJ3
  SAY ~对！终于有点保护了！是保护 你 ，我是说。我加入你。这样你就能感到安全了。~ [BAB028]
  IF ~~ THEN DO ~SetGlobal("ZDBAE_LEFT","GLOBAL",0) JoinParty()~ EXIT
END
