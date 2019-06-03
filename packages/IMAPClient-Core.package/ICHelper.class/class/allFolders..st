helper methods
allFolders: initialCollection	
	
	| folders stack |
	
	folders := OrderedCollection new.
	
	"depth first search"
	stack := Stack new.
	initialCollection do: [:each | stack push: each].
	
	[stack isEmpty] whileFalse: [
		| topElement |
		topElement := stack pop.
		folders add: topElement.
		topElement childFolders do: [ :folder | stack push: folder]].

	^ folders