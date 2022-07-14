toolbuilder
buildNotSyncedFolders
	"morph basteln, dann: self settingsPanel moprh: gebastelterMorph"
	| morph builder |
	"morph := AlternatePluggableListMorphOfMany new"
	"autoDeselect: false."
	
	builder := ToolBuilder default.
	morph := builder build: (builder pluggableListSpec new
		list: #getFolderList;
		autoDeselect: false;
		model: self).
	morph extent: settingsPanelWidget extent.
	self settingsPanelWidget morph: morph.
	self changed: #morph.