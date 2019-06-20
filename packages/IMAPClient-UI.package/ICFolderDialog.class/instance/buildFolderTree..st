toolbuilder
buildFolderTree: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #childFolders;
		setSelected: #selectedFolder:;
		getSelected: #selectedFolder;
		getChildren: #subFoldersOf:;
		label: #labelForFolder:;
		autoDeselect: false;
		frame: (0 @ 0.15 extent: 0.2 @ 0.85);
		columns: {
			[:listMorph | self emphasizeUnseenFolders: listMorph filteredItems.
				(listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
			[:listMorph |
				(listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 2]) max]}