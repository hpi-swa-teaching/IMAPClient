toolbuilder
buildFoldersPerMoveMenu

	| builder morph |
	builder := ToolBuilder default.
	
	morph := builder build: (builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #foldersPerMoveMenu;
		setText: #foldersPerMoveMenu:;
		editText: #foldersPerMoveMenu:;
		help: #helpText).
	
	morph extent: settingsPanelWidget extent.
	
	self settingsPanelWidget morph: morph.
	self changed: #morph