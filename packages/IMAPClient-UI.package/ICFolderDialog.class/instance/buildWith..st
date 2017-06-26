toolbuilder
buildWith: builder

	| windowSpec folderTreeSpec emailListSpec emailFetchDropDownSpec emailButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		closeAction: #closeConnection;
		extent: 800 @ 600.
		
	folderTreeSpec := builder pluggableTreeSpec new.
	folderTreeSpec
		model: self;
		roots: #rootFolder;
		setSelected: #selectedFolder:;
		getSelected: #selectedFolder;
		getChildren: #subFoldersOf: ;
		label: #folderNameOf:;	
		autoDeselect: false;
		frame: (0 @ 0 extent: 0.2 @ 0.85).
		
	emailListSpec := builder pluggableTreeSpec new.
	emailListSpec
		model: self;
		roots: #emailsOfSelectedFolder;
		label: #labelFor:;
		setSelected: #selectedEmail:;
		getSelected: #selectedEmail;
		autoDeselect: false;
		columns: {[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 2]) max]. 
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 3]) max].};
		frame: (0.2 @ 0 extent: 0.8 @ 1).
		
	"emailFetchDropDownSpec := builder pluggableDropDownListSpec new.
	emailFetchDropDownSpec
		model: self;
		frame: (0 @ 0.85 extent: 0.2 @ 0.05);
		listSelector: #numberOfHeadersToFetchList;
		selectionSelector: #numberOfHeadersToFetchList;
		selectionSetter: #numberOfHeadersToFetch:."
		
	emailFetchDropDownSpec := builder pluggableInputFieldSpec new.
	emailFetchDropDownSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #numberOfHeadersToFetch;
		setText: #numberOfHeadersToFetch:;
		editText: #numberOfHeadersToFetch:;
		help: 'number of mails';
		frame: (0 @ 0.85 extent: 0.2 @ 0.05).
	
	
	emailButtonSpec := builder pluggableButtonSpec new.
	emailButtonSpec
		model: self;
		frame: (0 @ 0.9 extent: 0.2 @ 0.1);
		label: 'Get Emails';
		action: #getEmails.
	
	windowSpec children addAll: { folderTreeSpec . emailListSpec . emailFetchDropDownSpec . emailButtonSpec }.
	^ builder build: windowSpec