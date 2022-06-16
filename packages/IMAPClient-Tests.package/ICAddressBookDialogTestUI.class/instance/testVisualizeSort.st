tests - sorting
testVisualizeSort

	| sortByNameButton sortByMailButton |
	sortByNameButton := self subject findByLabel: 'Name (asc)'.
	sortByMailButton := self subject findByLabel: 'Mail'.
	sortByNameButton click.
	self assert: sortByNameButton label equals: 'Name (desc)'.
	sortByNameButton click.
	self assert: sortByNameButton label equals: 'Name (asc)'.
	sortByMailButton click.
	self assert: sortByNameButton label equals: 'Name'.
	self assert: sortByMailButton label equals: 'Mail (asc)'