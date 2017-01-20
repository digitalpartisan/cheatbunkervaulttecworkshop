Scriptname CheatBunkerDLC06:Autocompletion:VaultTecWorkshop extends cheatbunker:autocompletion Conditional

GlobalVariable Property VaultTecGlobalAvailability Auto Const

Bool Function canRun()
	return 0 == VaultTecGlobalAvailability.GetValue()
EndFunction

Bool Function hasWindowPassed()
	return !canRun()
EndFunction

Function runBehavior()
	VaultTecGlobalAvailability.SetValue(1)
	finish()
EndFunction
