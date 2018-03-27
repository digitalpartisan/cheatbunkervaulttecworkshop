Scriptname CheatBunkerDLC06:Autocompletion:HallucigenResearch extends CheatBunker:Autocompletion

ReferenceAlias Property ResearchPapers Auto Const Mandatory

Function executeBehavior()
	Game.GetPlayer().AddItem(ResearchPapers.GetReference())
	conclude()
EndFunction
