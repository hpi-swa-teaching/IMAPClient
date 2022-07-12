toolbuilder
buildNotSyncedFolders
	"morph basteln, dann: self settingsPanel moprh: gebastelterMorph"
	| morph |
	morph := AlternatePluggableListMorphOfMany new
	autoDeselect: false.
	
	
	
	
	self  settingsPanel morph: morph.