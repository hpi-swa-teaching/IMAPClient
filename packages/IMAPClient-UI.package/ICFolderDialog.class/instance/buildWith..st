toolbuilder
buildWith: builder

	| window windowSpec emailButtonSpec addAccountButtonSpec userListSpec folderTreeSpec emailListSpec emailSearchSpec |
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		closeAction: #closeConnection;
		extent: 1200 @ 600.
		
	userListSpec := builder pluggableTreeSpec new.
	userListSpec
		model: self;
		roots: #emailAccounts;
		label: #labelForAccount:;
		menu: #userListMenu:;
		autoDeselect: false;
		getSelected: #selectedAccount;
		setSelected: #selectedAccount:;
		frame: (0 @ 0.05 extent: 0.2 @ 0.1).
				
	emailButtonSpec := builder pluggableButtonSpec new.
	emailButtonSpec
		model: self;
		frame: (0 @ 0 extent: 0.15 @ 0.05);
		label: 'Update';
		action: #update.
		
	addAccountButtonSpec := builder pluggableButtonSpec new.
	addAccountButtonSpec
		model: self;
		frame: (0.15 @ 0 extent: 0.05 @ 0.05);
		label: '+';
		action: #addAccountButton.
	
	folderTreeSpec := builder pluggableTreeSpec new.
	folderTreeSpec
		model: self;
		roots: #childFolders;
		setSelected: #selectedFolder:;
		getSelected: #selectedFolder;
		getChildren: #subFoldersOf: ;
		label: #folderNameOf:;	
		autoDeselect: false;
		frame: (0 @ 0.15 extent: 0.2 @ 0.85).
		
	emailSearchSpec := builder pluggableInputFieldSpec new.
	emailSearchSpec
		model: self;
		setText: #changeFilter:;
		frame: (0.2 @ 0 extent: 0.8 @ 0.05);
		askBeforeDiscardingEdits: false;
		editText: #changeFilter:;
		help: 'Suche ...';
		indicateUnacceptedChanges: false.
		
	emailListSpec := builder pluggableTreeSpec new.
	emailListSpec
		model: self;
		roots: #emailsOfSelectedFolder;
		label: #labelForMail:;
		setSelected: #selectedEmail:;
		getSelected: #selectedEmail;
		hScrollBarPolicy: #always;
		vScrollBarPolicy: #always;
		menu: #emailListMenu:;
		autoDeselect: false;
		columns: {[:listMorph | self emphasizeUnseenMessages: listMorph filteredItems.
			(listMorph filteredItems collect: [:item | 
					item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 2]) max]. 
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 3]) max].};
		frame: (0.2 @ 0.05 extent: 0.8 @ 1);
		color: (Color white).
	
	windowSpec children addAll: { emailButtonSpec . addAccountButtonSpec . userListSpec . folderTreeSpec . emailListSpec . emailSearchSpec}.
	window := builder build: windowSpec.
	window on: #keyStroke send: #keyEvent: to: self.
	
	^ window
	