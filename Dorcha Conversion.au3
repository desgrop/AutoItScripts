#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Masteryoda - Mari

 https://github.com/desgrop/AutoItScripts

 Script Function:
	Trains Dorcha Conversion - 9 min cooldown

	Change Sleep Timer according to your rank of Dorcha Conversion
	This puts Dorcha conversion on 1 and another chain skill (one you want to train that uses dorcha)
	do use one dorcha to train the "Use the skill to leech Dorcha to the max." condition
	--Add 10 seconds to the cooldown in table below to avoid mistakes--

	Rank F - 600
	Rank E - 600
	Rank D - 600
	Rank C - 600
	Rank B - 600
	Rank A - 600
	Rank 9 - 540
	Rank 8 - 540
	Rank 7 - 540
	Rank 6 - 540
	Rank 5 - 540
	Rank 4 - 540
	Rank 3 - 540
	Rank 2 - 540

	START WITH MAX DORCHA - 1 (One under max)
#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

HotKeySet("{p}","TogglePause")
HotKeySet("{ESC}", "Terminate")

WinActivate("Mabinogi")
WinWaitActive("Mabinogi")

;Main loop
$counter=1
While ($counter=1)

;Part 1 Activating Combat Mode
Send("{1}")

Sleep(750)

;Use skill to consume one dorcha
Send("{2}")
Sleep(400)
Send("{CTRLDOWN}")
Sleep(400)
Mouseclick("left")
Sleep(400)
Send("{CTRLUP}")

;Delay 9m10s
Sleep(550000)

WEnd