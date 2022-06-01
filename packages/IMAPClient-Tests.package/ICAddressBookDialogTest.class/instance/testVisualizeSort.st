sorting entries
testVisualizeSort
	
	|sortByNameButton sortByMailButton|
	
	sortByNameButton:= self subject findByLabel: 'Sort by name'.
	sortByMailButton:= self subject findByLabel: 'Sort by mail'.
	sortByNameButton click.
	self assert: sortByNameButton label equals: 'Sort by name (asc)'.
	sortByNameButton click.
	self assert: sortByNameButton label equals: 'Sort by name (desc)'.
	sortByMailButton click.
	self assert: sortByNameButton label equals: 'Sort by name'.
	self assert: sortByMailButton label equals: 'Sort by mail (asc)'