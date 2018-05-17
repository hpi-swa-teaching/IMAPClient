toolbuilder
buildWith: builder

	| windowSpec emailButtonSpec folderTreeSpec emailListSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		closeAction: #closeConnection;
		extent: 1200 @ 600.

	emailButtonSpec := builder pluggableButtonSpec new.
	emailButtonSpec
		model: self;
		frame: (0 @ 0 extent: 0.2 @ 0.05);
		label: 'Get Emails';
		action: #getEmails.
				
	folderTreeSpec := builder pluggableTreeSpec new.
	folderTreeSpec
		model: self;
		roots: #rootFolder;
		setSelected: #selectedFolder:;
		getSelected: #selectedFolder;
		getChildren: #subFoldersOf: ;
		label: #folderNameOf:;	
		autoDeselect: false;
		frame: (0 @ 0.05 extent: 0.2 @ 0.95).

	emailListSpec := builder pluggableTreeSpec new.
	emailListSpec
		model: self;
		roots: #emailsOfSelectedFolder;
		label: #labelFor:;
		setSelected: #selectedEmail:;
		getSelected: #selectedEmail;
		autoDeselect: false;
		columns: {
		    [:listMorph | (listMorph filteredItems collect: [:item | 
					item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 2]) max]. 
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 3]) max].
		};
		frame: (0.2 @ 0 extent: 0.8 @ 1);
		color: (Color white).
	
	windowSpec children addAll: { emailButtonSpec . folderTreeSpec . emailListSpec }.
	^ builder build: windowSpec