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
		hScrollBarPolicy: #whenNeeded;
		vScrollBarPolicy: #whenNeeded;
		menu: #emailListMenu:;
		autoDeselect: false;
		columns: {
			[:listMorph |
				self emphasizeUnseenMessages: listMorph filteredItems.
				(listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 2]) max].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 3]) max].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 4]) max]};
		frame: (0.2 @ 0.1 extent: 0.8 @ 0.9);
		color: Color white