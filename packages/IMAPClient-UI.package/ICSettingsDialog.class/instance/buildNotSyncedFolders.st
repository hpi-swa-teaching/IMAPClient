toolbuilder
buildNotSyncedFolders

	| morph builder |
	builder := ToolBuilder default.
	morph := builder build: (builder pluggableMultiSelectionListSpec new
		name: self class nameNotSyncedFoldersMorph;
		list: #getFolderList;
		autoDeselect: false;
		vScrollBarPolicy: #whenNeeded;
		hScrollBarPolicy: #whenNeeded;
		getIndex: #folderSelected;
		setIndex: #folderSelected:;
		getSelectionList: #selectedNotSyncedFoldersAt:;
		setSelectionList: #selectedNotSyncedFoldersAt:put:;
		model: self).
	morph extent: self settingsPanelWidget extent.
	self settingsPanelWidget morph: morph.
	self changed: #morph