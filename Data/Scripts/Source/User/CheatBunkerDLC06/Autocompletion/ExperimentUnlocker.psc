Scriptname CheatBunkerDLC06:Autocompletion:ExperimentUnlocker extends CheatBunker:Autocompletion

GlobalVariable Property CheatBunkerDLC06AutocompletionExperimentsUnlockerToggle Auto Const Mandatory

Bool Function canExecute()
	return playerLeftVault() && !isExecutingOrConcluded()
EndFunction

Function executeBehavior()
	CheatBunkerDLC06AutocompletionExperimentsUnlockerToggle.SetValue(1)
	conclude()
EndFunction
