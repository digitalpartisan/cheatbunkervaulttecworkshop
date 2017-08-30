Scriptname CheatBunkerDLC06:Autocompletion:ExperimentUnlocker extends cheatbunker:autocompletion Conditional

Bool Function canRun()
	return !isFinished()
EndFunction

Bool Function hasWindowPassed()
	return !canRun()
EndFunction

Function runBehavior()
	finish()
EndFunction

Function install()
{Overriden to do nothing since there are no availability messages to show.}
EndFunction

Function uninstall()
{Overriden to do nothing because no quest is monitored for progress.}
EndFunction
