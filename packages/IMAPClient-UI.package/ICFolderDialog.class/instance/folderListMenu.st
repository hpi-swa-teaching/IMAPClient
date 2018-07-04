folder selection
folderListMenu

	| aMenu stack folders |
	
	aMenu := MenuMorph new.
	
	folders := OrderedCollection new.
	
	"breadth first search"
	stack := Stack new.
	stack push: ((self rootFolder) at:1).
	
	[stack isEmpty] whileFalse: [
		|topElement|
		topElement := stack pop.
		folders add: topElement.
		topElement childFolders do: [ :folder | stack push: folder]
	].

	folders allButFirst do: [ :each | 
		aMenu 
			add: (self folderNameOf: each) 
			action: [self moveEmail: (each path)]].
		
	^aMenu