instance creation
open: aOwner onCallback: aMethod

	| instance |
	instance := self new.
	instance closingMethod: aMethod.
	instance owner: aOwner.

	^ ToolBuilder default open: instance