Scriptname CheatBunkerDLC06:Updater:v1_1_0_to_v1_2_0 extends Chronicle:Package:Update

CheatBunkerDLC06:Autocompletion:ExperimentUnlocker Property CheatBunkerDLC06AutocompletionExperimentsUnlocker Auto Const Mandatory

Function updateLogic()
	CheatBunker:Autocompletion.retrofitPackage(getPackage())
	
	if (CheatBunkerDLC06AutocompletionExperimentsUnlocker.isConcluded())
		CheatBunkerDLC06AutocompletionExperimentsUnlocker.CheatBunkerDLC06AutocompletionExperimentsUnlockerToggle.SetValue(1)
	endif
	
	sendSuccess()
EndFunction
