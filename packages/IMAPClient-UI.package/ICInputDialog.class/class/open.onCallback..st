instance creation
open: anOwner onCallback: aMethod

	| instance |
	instance := self new.
	instance closingMethod: aMethod.
	instance owner: anOwner.
	
	^ ToolBuilder default open: instance