instance creation
openWith: rootFolder

	| instance |
	instance := self new.
	instance rootFolder: (Array with: rootFolder).
	^ ToolBuilder default open: instance