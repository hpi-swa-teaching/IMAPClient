toolbuilder
buildFolderTree: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #childFolders;
		setSelected: #selectedFolder:;
		getSelected: #selectedFolder;
		getChildren: #subFoldersOf:;
		icon: #iconFor:;
		label: #labelForFolder:;
		menu: #folderTreeMenu:;
		autoDeselect: false;
		frame: (0 @ 0.15 corner: 1 @ 1);
		columns: {
			[:listMorph | self emphasizeUnseenFolders: listMorph filteredItems.
				(listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 2]) max].
			[:listMorph |
				(listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 3]) max]}