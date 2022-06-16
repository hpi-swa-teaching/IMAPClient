accessing
openedWindows
	
	^ openedWindows ifNil: [openedWindows := OrderedCollection new]