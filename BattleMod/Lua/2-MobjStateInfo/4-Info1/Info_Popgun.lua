mobjinfo[MT_CORK].speed = 60*FRACUNIT

freeslot(
    "spr2_fair",
    "spr2_bgun",
	"s_fang_airshot",
	"s_fang_airshot_finish",
	"s_fang_bceshot",
	"s_fang_bceshot_finish"
)
states[S_FANG_AIRSHOT] = {
	sprite = SPR_PLAY,
	frame = SPR2_FAIR|FF_SPR2ENDSTATE,
	tics = 2,
	var1 = S_FANG_AIRSHOT_FINISH,
	nextstate = S_FANG_AIRSHOT,
}
states[S_FANG_AIRSHOT_FINISH] = {
    sprite = SPR_PLAY,
	frame = SPR2_FAIR,
	tics = 1,
	var1 = 3,
	nextstate = S_PLAY_FALL,
}
states[S_FANG_BCESHOT] = {
    sprite = SPR_PLAY,
    frame = SPR2_BGUN|FF_SPR2ENDSTATE,
	tics = 2,
	var1 = S_FANG_BCESHOT_FINISH,
    nextstate = S_FANG_BCESHOT,
}
states[S_FANG_BCESHOT_FINISH] = {
    sprite = SPR_PLAY,
	frame = SPR2_BGUN,
	var1 = S_FANG_BCESHOT,
	tics = 1,
	var1 = 2,
	nextstate = S_PLAY_BOUNCE,
}
