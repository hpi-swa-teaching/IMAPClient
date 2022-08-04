toolbuilder
emphasizeUnseenAccounts: aCollection

	aCollection do: [:anIndentingListItemMorph |
		((self getItemFrom: anIndentingListItemMorph) rootFolder numberOfUnseenMails > 0)
			ifTrue: [self emphasize: anIndentingListItemMorph]
			ifFalse: [self unemphasize: anIndentingListItemMorph]]