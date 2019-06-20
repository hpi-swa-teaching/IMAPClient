toolbuilder
buildEmailList: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #emailsOfSelectedFolder;
		label: #labelForMail:;
		setSelected: #selectedEmail:;
		getSelected: #selectedEmail;
		doubleClick: #openEmail:;
		keyPress: #emailListKeyPress:;
		hScrollBarPolicy: #always;
		vScrollBarPolicy: #always;
		menu: #emailListMenu:;
		autoDeselect: false;
		columns: {
			[:listMorph | self emphasizeUnseenMessages: listMorph filteredItems.
				self emphasizeLoadOlderEmailsButton: listMorph filteredItems.
				(listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 2]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 3]) max].};
		frame: (0.2 @ 0.05 extent: 0.8 @ 0.95);
		color: (Color white)