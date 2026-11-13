BEGIN ZDBAE25B

// Sarevok 1 - Chaotic Evil
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("Sarevok")
    See("Sarevok")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Alignment("SAREVOK",CHAOTIC_EVIL)
    Global("ZDBAE25BSARV1","GLOBAL",0)~
THEN BSAREV25 ZDBAE25BSARV1
~卓尔，在你那些做戏之下，我嗅到和我一样的那股渴求。~
DO ~SetGlobal("ZDBAE25BSARV1","GLOBAL",1)~
== ZDBAE25B ~哦！多么动人的恭维！我竟叫那位令人胆寒的萨瑞沃克倾倒了？~
== BSAREV25 ~你渴求以场面征服人心，我渴求以杀戮征服一切。我们并没有那么不同。~
== ZDBAE25B ~你在竞技场里那无穷的嗜血欲，确实有看头；可你对权力那反复无常的贪欲就不那么有趣了。头一个机会，你就会出卖我。~
== BSAREV25 ~你倒没看上去那么蠢。~
EXIT

// Sarevok 1 - Chaotic Good
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("Sarevok")
    See("Sarevok")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Alignment("SAREVOK",CHAOTIC_GOOD)
    Global("ZDBAE25BSARV1","GLOBAL",0)~
THEN BSAREV25 ZDBAE25BSARV1
~我望着你，贝洛斯，看见的是我昔日旧影。~
DO ~SetGlobal("ZDBAE25BSARV1","GLOBAL",1)~
== ZDBAE25B ~哦！多么动人的恭维！我叫那位令人胆寒的萨瑞沃克倾倒了？~
== BSAREV25 ~没有。你这条路我走过。我知道野心与骄傲只会引向败亡。~
== ZDBAE25B ~啊！败亡、救赎、欢庆，接着是可怕的悲剧！全都是人生这场大戏的一部分。~
== BSAREV25 ~你想怎么演就怎么演。我的警告已经给过了。~
EXIT

// Sarevok 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("Sarevok")
    See("Sarevok")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAE25BSARV2","GLOBAL",0)~
THEN ZDBAE25B ZDBAE25BSARV2
~跟我说说。你是怎么谋划着玩弄博德之门的政局，自封大公爵，还挑起与安姆的战争的？~
DO ~SetGlobal("ZDBAE25BSARV2","GLOBAL",1)~
== BSAREV25 IF ~Alignment("SAREVOK",CHAOTIC_EVIL)~ THEN ~来探我的秘密，是吗？我的计划很简单：我有金子与人脉来施行意志，也有力量把野心贯彻到底。~
== BSAREV25 IF ~Alignment("SAREVOK",CHAOTIC_GOOD)~ THEN ~我的作为，最好留给史书。我没兴趣为了逗你开心去翻挖自己的过去。~
== ZDBAE25B ~我问这个，是因为我也曾在幽暗地域握住过滔天的权势与名望。唉，失宠的命数，我实在熟得过分。~
== BSAREV25 ~别来求同情，贝洛斯，我没有可给的。永远别求怜悯，要求教训。~
EXIT
