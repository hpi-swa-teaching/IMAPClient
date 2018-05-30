instance creation
openWith: endpoint

	| instance |
	instance := self new.
	instance rootFolder: (Array with: endpoint rootFolder).
	instance getFolderWith: endpoint.
	^ ToolBuilder default open: instance