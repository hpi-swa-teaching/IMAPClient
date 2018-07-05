toolbuilder
emphasizeUnseenFolders: aCollection

	aCollection do: [:anIndentingListItemMorph |
		anIndentingListItemMorph complexContents item numOfUnseenMails > 0
			ifTrue: [anIndentingListItemMorph emphasis: 9]
			ifFalse: [anIndentingListItemMorph emphasis: nil]]