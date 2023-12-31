-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	CameraMode = "Show all",
	Map = "_Cinematic_Intro",
	group = "Cinematic",
	hidden_actors = false,
	id = "Cinematic_Intro_v2",
	PlaceObj('SetpieceCamera', {
		CamType = "Tac",
		Duration = 0,
		LookAt1 = point(152459, 165629, 8146),
		Pos1 = point(157365, 164926, 8810),
		Wait = false,
		Zoom = 1000,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		FadeInTime = 5000,
		Wait = false,
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 5000,
		LookAt1 = point(152459, 165629, 8146),
		LookAt2 = point(154800, 166405, 8314),
		Movement = "decelerated",
		Pos1 = point(157365, 164926, 8810),
		Pos2 = point(157365, 164926, 8810),
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 12000,
		LookAt1 = point(153093, 167389, 7984),
		LookAt2 = point(150791, 168591, 7278),
		Movement = "decelerated",
		Pos1 = point(157365, 164926, 8810),
		Pos2 = point(153084, 167193, 8615),
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 3000,
		LookAt1 = point(149262, 169523, 6386),
		LookAt2 = point(150745, 168074, 6365),
		Movement = "decelerated",
		Pos1 = point(153084, 167193, 8615),
		Pos2 = point(152703, 168031, 8637),
	}),
	PlaceObj('SetpieceCameraFloat', {
		Duration = 90000,
		FloatRadius = 30,
		SwingTime = 5000,
		Wait = false,
	}),
	PlaceObj('SetpieceCamera', {
		CamType = "Tac",
		Disable = true,
		Duration = 0,
		FovX = 3450,
		LookAt1 = point(152875, 167981, 7732),
		Pos1 = point(157803, 167969, 8581),
		Wait = false,
		Zoom = 1000,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "CameraOrigin",
		Disable = true,
		Group = "CameraOrigin",
	}),
	PlaceObj('SetPieceCameraWithAnim', {
		Actors = "CameraOrigin",
		Anim = "camera_IntroCinematic",
		AnimDuration = 15000,
		Disable = true,
	}),
	PlaceObj('SetpieceCamera', {
		Disable = true,
		Duration = 0,
		LookAt1 = point(148172, 168286, 6913),
		LookAt2 = point(151555, 167957, 5395),
		Pos1 = point(153015, 167922, 8103),
		Pos2 = point(152185, 167962, 8330),
		Wait = false,
	}),
	PlaceObj('SetpieceVoice', {
		Actor = "narrator",
		Text = T(657833848133, --[[SetpiecePrg Cinematic_Intro_v2 Text voice:narrator]] "This is <em>Emma LaFontaine</em>. Thank you for agreeing to help me find my father. I don't have much time to talk. I've been told it's no longer safe for me here, so I'm preparing to leave."),
	}),
	PlaceObj('SetpieceVoice', {
		Actor = "narrator",
		Text = T(843574394357, --[[SetpiecePrg Cinematic_Intro_v2 Text voice:narrator]] "I can't believe a city that only a few months ago was filled with joy and hope is now a place of fear and suspicion, but perhaps that tells you just how important <em>my father</em> is to this country."),
	}),
	PlaceObj('SetpieceVoice', {
		Actor = "narrator",
		Text = T(273524094323, --[[SetpiecePrg Cinematic_Intro_v2 Text voice:narrator]] "You see, <em>Alphonse LaFontaine</em> is much more than just the <em>president</em> - he is the symbol of my people's faith in a brighter future for Grand Chien. Since his abduction, that faith has been shaken. "),
	}),
	PlaceObj('SetpieceVoice', {
		Actor = "narrator",
		Text = T(882784467984, --[[SetpiecePrg Cinematic_Intro_v2 Text voice:narrator]] "Things like law and justice are fragile concepts here and the political enemies my father made are already calling for emergency powers to be invoked. I don't know if they are behind the kidnapping, but I am sure they are planning to take advantage of it. "),
	}),
	PlaceObj('SetpieceVoice', {
		Actor = "narrator",
		Text = T(980617204308, --[[SetpiecePrg Cinematic_Intro_v2 Text voice:narrator]] 'The person who took my father calls himself "<em>the Major</em>." I haven\'t been able to find out who he really is, but everyone knows what he wants. He has demanded the entire Adjani River Valley be given to him.'),
	}),
	PlaceObj('SetpieceVoice', {
		Actor = "narrator",
		Text = T(170466064841, --[[SetpiecePrg Cinematic_Intro_v2 Text voice:narrator]] "His followers, who call themselves the <em>Legion</em>, have already seized most of it, but he has vowed to execute my father should the government attempt to intervene."),
	}),
	PlaceObj('SetpieceVoice', {
		Actor = "narrator",
		Text = T(243290865030, --[[SetpiecePrg Cinematic_Intro_v2 Text voice:narrator]] "I've wired the money you requested. Please, assemble your team and come meet me on <em>Ernie Island</em> at <em>Corazon Santiago's</em> villa. She is the <em>Adonis</em> representative I told you about in my email - her diamond mining operations can help with additional funding should you need it."),
	}),
	PlaceObj('SetpieceVoice', {
		Actor = "narrator",
		Text = T(707093581147, --[[SetpiecePrg Cinematic_Intro_v2 Text voice:narrator]] "My car is here. I have to go.\nI'll have more details for you when we meet."),
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 3000,
		LookAt1 = point(149439, 168102, 4849),
		LookAt2 = point(151539, 168006, 5398),
		Movement = "decelerated",
		Pos1 = point(152703, 168031, 8637),
		Pos2 = point(152184, 168006, 8330),
	}),
	PlaceObj('SetpieceSleep', {
		Disable = true,
		Time = 10000,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 2000,
		Wait = false,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 1500,
	}),
})

