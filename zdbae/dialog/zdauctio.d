// Auctioneer for Housewives quest
BEGIN ZDAUCTIO

CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 5)~
THEN ZDAUCTIO ZDTRHWOABOOTBID
  ~啊，尊贵的客人们，我看诸位都对这双朴素的靴子很好奇。容我向各位保证：它们瞧着简单，却带着一种力量——虽只是暂时，却会与买主永远绑定。巨灵的担保恐怕不适用，本条款及星界投影则一并适用。~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",6)~
  == ZDAUCTIO ~这双靴子赐予什么力量？亲爱的竞拍者，那要由配得上的人亲自揭晓。因为它们当然会对成交那一刻作出反应！~
  == ZDAUCTIO ~这力量来自物质位面之外——我是说，来自我们认知之外。~
  == EDWINJ ~（他当然会这么说，他把我们当成什么猿猴了。）~
  == ZDAUCTIO ~那位可爱的女士，就是你！~
  == EDWINJ ~我！？你竟敢……我是说，当然？~
  == ZDBAEJ ~得了，“埃德温娜”，我们各有各的角色要演，*眨眼*。~
  == ZDAUCTIO ~来一双这样的好靴子如何？要不给你的丈夫也来一双？他的脚看着都快发灰了！~
  == EDWINJ ~他不是我的丈——！~
  == ZDBAEJ ~啊啊，我的大财主，容我阐释一番这件造物的宏伟构架。也就是说——我出 1000 金币。~
END
 + ~PartyGoldGT(2500)~ + ~贝洛斯，多加价！~ EXTERN ZDBAEJ ZDBAETRHWOABET
 + ~PartyGoldLT(1000)~ + ~贝洛斯，我们买不起这种东西。~ EXTERN ZDAUCTIO ZDTRHWOABOOTBIDNOTHING
 ++ ~……~ EXTERN ZDAUCTIO ZDDAUCTIGOT2.5
 ++ ~贝洛斯，这事我不想沾。~ EXTERN ZDAUCTIO ZDTRHWOABOOTBIDNOTHING

/* simple boots are equipped - how DARE you! */
CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 6)~
THEN ZDAUCTIO ZDTRHWOABOOTBIDNOTHING
  ~真是天大的遗憾。那么多潜力全白费了。好吧，我就可怜可怜你们，拿去这些吧。~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",8) SetGlobal("zdbaesimple","GLOBAL",1)~
  == ZDBAEJ ~见鬼的粗笨靴子！既无美感，设计又平淡，简直勾不住人的眼睛！我这么杰出的贝洛斯，凭什么要穿着这种恶心的鞋赶路？~
  == EDWINJ ~（我宁可听这个卓尔发牢骚，也好过他再把我拽进什么疯计划。）~
END
  ++ ~打起精神来，贝洛斯，至少你的脚不冷了。~ EXIT
  ++ ~现在，你能不能安静点，好让我们继续赶路？~ EXIT

/* luxurious lizardskin leapers are equipped */
CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 7)~
THEN ZDAUCTIO ZDDAUCTIGOT10
  ~退后，好好惊叹这双华丽奢贵的蜥皮跃靴！~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",8) SetGlobal("zdbaeleapers","GLOBAL",1)~
  == ZDBAEJ ~啊，奢贵的蜥皮跃靴！柔韧皮革与绝佳风范的华美交响。穿上它，我摇曳前行，连星辰相形之下都要黯然失色！~
END
  ++ ~希望你满意，贝洛斯。那可花了不少钱。~ EXIT
  ++ ~好好享受吧。现在能别抱怨了吗？~ EXIT

/* boots with da fur are equipped */
CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 7)~
THEN ZDAUCTIO ZDDAUCTIGOT5
  ~这样的时刻，价钱可真公道。享受那嘶嘶作响的感觉吧！或者说，享受这双绝妙的毛绒靴！~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",8) SetGlobal("zdbaefurries","GLOBAL",1)~
  == ZDBAEJ ~样式绝佳，不过对我来说太含蓄了。我要耀眼，我要惊艳。我拒绝像什么阴沉的农奴一样被暗影吞没。~
END
  ++ ~一双好靴子。我们走吧。~ EXIT
  ++ ~太好了，现在能走了吗？~ EXIT

/* sturdy boots are equipped */
CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 7)~
THEN ZDAUCTIO ZDDAUCTIGOT2.5
  ~唉，我看并非每个时刻都能宏大辉煌。拿去这些吧。~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",8) SetGlobal("zdbaesturdy","GLOBAL",1)~
  == ZDBAEJ ~简单的结实靴子。嗯，我想也能凑合。只是对我这讲究的品味来说太沉闷了些。给士兵穿倒合适，可给我这种水准的术士就太勉强了。真是毫无灵感。~
END
  ++ ~嗯，总之希望你穿得舒服。~ EXIT
  ++ ~那双鞋我可是花了大价钱。走吧，给你弄到东西就该知足了。~ EXIT
