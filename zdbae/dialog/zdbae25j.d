BEGIN ZDBAE25J

/* interjections */

/* saradush, volo */
EXTEND_TOP SARVOLO 9 #3
+ ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ + ~跟我说说贝洛斯。~ + ZDBaeVoloBio
END

CHAIN SARVOLO ZDBaeVoloBio
~ 贝洛斯·巴瑞提尔，自封“艺人”，一位力量非凡、自负更甚的卓尔术士。他在幽暗地域因“死斗黑坑”而臭名远扬——那是一座竞技场，他在那里……~
== ZDBAE25J ~闭嘴，你这满嘴胡吣的蠢材！我正在写我自己那部精彩绝伦的故事，必定比你全部话本加起来都卖得好。别想把我缩成一条脚注。~
== SARVOLO ~那么，我干脆把你整个删去？~
== ZDBAE25J ~胡说！把你的卷轴滑过来，我要亲手写下配得上我的文字。~
== ZDBAE25J ~当然，我添上自己这篇妙文的版税，我是要收的。~
== SARVOLO ~……而我料想，我的删改也会相当之多。~
EXTERN SARVOLO 9

/* solar, tob finale */
I_C_T FINSOL01 27 ZDBaeSolar
== ZDBAE25J IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN ~舍弃我的陪伴当然是愚蠢的。不过，你若执意升神，我会等着收你欠我的那些赏赐——你欠得可不少。~
END
