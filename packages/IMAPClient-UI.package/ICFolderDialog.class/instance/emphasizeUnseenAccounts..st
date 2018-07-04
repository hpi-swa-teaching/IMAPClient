toolbuilder
emphasizeUnseenAccounts: aCollection

	aCollection do: [:anIndentingListItemMorph |
		anIndentingListItemMorph complexContents item rootFolder numOfUnseenMails > 0
			ifTrue: [anIndentingListItemMorph emphasis: 9]
			ifFalse: [anIndentingListItemMorph emphasis: nil]]