#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Masteryoda - Nao

 https://github.com/desgrop/AutoItScripts

 Script Function:
	Trains Encore
	  N > E - 300s
	  D > A - 270s
	  9 > 6 - 240s
	  5 > 2 - 210s
	  1 > M - 180
#ce ----------------------------------------------------------------------------

HotKeySet("{p}","TogglePause")
HotKeySet("{ESC}", "Terminate")

WinActivate("Mabinogi")
WinWaitActive("Mabinogi")

;Main loop
Local $counter=1
Do

   ;Respite + Time for skill charge
   Send("{1}")
   $counter += 1
   Sleep(1000)

   ;210s Cooldown
   Sleep(210000)

Until $counter = 22