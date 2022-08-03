toolbuilder
buildFolderTree: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #shownTopLevelFolders;
		setSelected: #selectedFolder:;
		getSelected: #selectedFolder;
		getChildren: #shownChildFoldersOf:;
		icon: #iconFor:;
		label: #labelForFolder:;
		menu: #folderTreeMenu:;
		autoDeselect: false;
		frame: (0 @ 0.15 corner: 1 @ 1);
		columns: self folderTreeColumns