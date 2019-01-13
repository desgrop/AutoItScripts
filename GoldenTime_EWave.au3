#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Masteryoda - Mari

 Script Function:
	AFK Train Elemental Wave and Golden Time with the use of Shock

	Keyboard Layout :
		- 1 : Golden Time
		- 2 : Elemental Wave
		- 3 : Shock


	Golden Time Cooldowns :
		F - 300
		E - 290
		D - 290
		C - 290
 		B - 280
		A - 280
		9 - 260
		8 - 250
		7 - 240
		6 - 230
		5 - 220
		4 - 210
		3 - 200
		2 - 190
		1 - 180
#ce ----------------------------------------------------------------------------

HotKeySet("{p}","TogglePause")
HotKeySet("{ESC}", "Terminate")

WinActivate("Mabinogi")
WinWaitActive("Mabinogi")

$c = 1

While($c = 1)

	;Golden Time
	Send("{1}")
	Sleep(700)

	;Elemental Wave
	Send("{2}")
	Sleep(700)

	;Shock
	Send("{3}")
	Sleep(1500)

	;Shock Self Target
	Send("{CTRLDOWN}")
	Sleep(400)
	Mouseclick("left")
	Sleep(400)
	Send("{CTRLUP}")

	;Adjust this sleep timer to correspond with Golden Time cooldown
	;Take Cooldown and add 000 (Ex : cooldown = 300 -> Sleep(300000)
	Sleep(180000)

WEnd
