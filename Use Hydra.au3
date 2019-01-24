#cs ----------------------------------------------------------------------------
AutoIt Version: 3.3.14.5
 Author:         Masteryoda - Mari

 Script Function:
	Trains the "Use Hydra Transmutation" requirement

	Hydra Transmutation Cooldown :
	- 60 AT ALL RANKS

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

HotKeySet("{p}","TogglePause")
HotKeySet("{ESC}", "Terminate")

WinActivate("Mabinogi")
WinWaitActive("Mabinogi")

$c = 1

While($c = 1)

	;Hydra
	Send("{1}")

	;Use
	Sleep(3500)
	Mouseclick("left")

	;Fantastic Chorus + Enduring Melody
	Sleep(2000)
	Send("{2}")
	Sleep(1000)
	Send("{3}")
	Sleep(2000)
	Send('{ESC}')
	Sleep(400)
	Send('{TAB}')

	;Cooldown
	;Do not change, the cooldown is the same regardless of level
	Sleep(55000)

WEnd
