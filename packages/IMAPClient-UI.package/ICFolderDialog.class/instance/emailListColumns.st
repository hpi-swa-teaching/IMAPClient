toolbuilder
emailListColumns

	^ {
		[:listMorph |
			self emphasizeUnseenMessages: listMorph filteredItems.
			(listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 1]) max].
		[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 2]) max].
		[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 3]) max].
		[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 4]) max]}