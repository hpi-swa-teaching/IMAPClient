toolbuilder
userListColumns

	^ {
		[:listMorph |
			self emphasizeUnseenAccounts: listMorph filteredItems.
			(listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 1]) max].
		[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 2]) max]}