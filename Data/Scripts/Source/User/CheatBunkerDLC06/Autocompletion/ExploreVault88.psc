Scriptname CheatBunkerDLC06:Autocompletion:ExploreVault88 extends CheatBunker:Autocompletion

Struct SectorData
	Int ControlBoardStage
	Int CompleteStage
	
	ReferenceAlias WorkshopActivator
	ReferenceAlias ControlBoard
EndStruct

SectorData[] Property Sectors Auto Const Mandatory

Function executeBehavior()
	Utility.Wait(1) ; to force the player out of the terminal (or else weird things happen)

	Int iCounter = 0
	Quest targetQuest = getQuest()
	Actor aPlayer = Game.GetPlayer()
	SectorData dataSet = None
	
	while(iCounter < Sectors.Length)
		dataSet = Sectors[iCounter]
		
		if (!targetQuest.IsStageDone(dataSet.ControlBoardStage))
			aPlayer.AddItem(dataSet.ControlBoard.GetReference())
		endif
		
		if (!targetQuest.IsStageDone(dataSet.CompleteStage))
			aPlayer.RemoveItem(dataSet.ControlBoard.GetReference())
			(dataSet.WorkshopActivator.GetReference() as DLC06:VaultWorkshopActivatorScript).addBuildArea() ; don't activate the reference since that will kick the game into workshop mode
			targetQuest.SetStage(dataSet.CompleteStage)
		endif
		
		iCounter += 1
	endWhile
	
	conclude()
EndFunction
