instance creation
open: aOwner with: aLabel onCallback: aMethod

	| instance |
	instance := self new.
	instance closingMethod: aMethod.
	instance owner: aOwner.
	instance label: aLabel.
	
	^ ToolBuilder default open: instance