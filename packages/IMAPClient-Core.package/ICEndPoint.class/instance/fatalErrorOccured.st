error handling
fatalErrorOccured
	
	"If an error occured, that makes it impossible for a connection to be established, 
	set this variable to true, so other checks do not have to be passed"

	^ fatalErrorOccured ifNil: [fatalErrorOccured := false]