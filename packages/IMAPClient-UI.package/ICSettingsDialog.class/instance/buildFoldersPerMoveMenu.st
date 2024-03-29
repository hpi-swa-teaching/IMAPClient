toolbuilder
buildFoldersPerMoveMenu

	| builder morph |
	builder := ToolBuilder default.
	
	morph := builder build: (builder pluggableInputFieldSpec new
		model: self;
		name: self class nameFoldersPerMoveMenuMorph;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		setText: #foldersPerMoveMenu:;
		editText: #foldersPerMoveMenu:;
		help: #helpText).
	
	morph extent: self settingsPanelWidget extent.
	
	self settingsPanelWidget morph: morph.
	self changed: #morph