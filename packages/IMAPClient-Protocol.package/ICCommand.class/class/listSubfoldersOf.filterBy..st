commands
listSubfoldersOf: aFolder filterBy: aFilter

	^ self join: {'LIST'. self putInQuotes: aFolder. self putInQuotes: aFilter}