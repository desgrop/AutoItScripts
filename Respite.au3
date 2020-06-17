#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Masteryoda - Nao

 https://github.com/desgrop/AutoItScripts

 Script Function:
	Trains Respite - 2 Minute Cooldown

	You do not have to change anything. Cooldown does not scale with rank nor does
	cast time.

	MAKE SURE YOU ARE IN DEADLY FOR BEST TRAINING
#ce ----------------------------------------------------------------------------

HotKeySet("{p}","TogglePause")
HotKeySet("{ESC}", "Terminate")

WinActivate("Mabinogi")
WinWaitActive("Mabinogi")

;Main loop
$counter=1
While ($counter=1)

;Respite + Time for skill charge
Send("{1}")
Sleep(2500)

;Cancel Skill to not heal too much
Send("{ESC}")

;Delay 2m5secons to account for "lag"
Sleep(125000)

WEnd