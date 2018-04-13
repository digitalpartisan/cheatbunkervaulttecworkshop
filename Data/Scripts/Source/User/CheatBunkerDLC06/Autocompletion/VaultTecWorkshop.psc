Scriptname CheatBunkerDLC06:Autocompletion:VaultTecWorkshop extends CheatBunker:Autocompletion Conditional

GlobalVariable Property VaultTecGlobalAvailability Auto Const

Bool Function canExecute()
	return playerLeftVault() && 0 == VaultTecGlobalAvailability.GetValue()
EndFunction

Function executeBehavior()
	VaultTecGlobalAvailability.SetValue(1)
	Conclude()
EndFunction
