#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Masteryoda - Mari

 Script Function:
	Trains Flash Launcher -> Grapple Shot -> Bullet Slide inside of provocation
	by targeting barrier spikes.

	Start besides a barrier spike, close enough to use Flash Launcher on it
	Put cursor on top of a BSpike
	Start Macro

#ce ----------------------------------------------------------------------------

HotKeySet("{p}","TogglePause")
HotKeySet("{ESC}", "Terminate")

WinActivate("Mabinogi")
WinWaitActive("Mabinogi")

$c = 1

While($c = 1)

	;Flash Launcher
	Send("{1}")

	Sleep(500)
	Send("{CTRLDOWN}")
	Sleep(400)
	Mouseclick("left")
	Sleep(400)
	Send("{CTRLUP}")

	Sleep(5000)

	;Bullet Slide
	Send("{2}")

	Sleep(5000)

	;Grapple Shot
	Send("{3}")

	Sleep(500)
	Send("{CTRLDOWN}")
	Sleep(400)
	Mouseclick("left")
	Sleep(400)
	Send("{CTRLUP}")

	Sleep(5000)

	Send("{4}")

	Sleep(7000)

WEnd
