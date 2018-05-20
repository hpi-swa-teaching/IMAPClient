instance creation
openWith: rootFolder and: endpoint

	| instance |
	instance := self new.
	instance rootFolder: (Array with: rootFolder).
	instance getFolderWith: endpoint.
	^ ToolBuilder default open: instance