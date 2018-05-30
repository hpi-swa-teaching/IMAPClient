instance creation
openWith: endpoint

	| instance |
	
	instance := self new.
	instance 
		rootFolder: (Array with: endpoint rootFolder);
		emailAccounts: OrderedCollection new;
		addEmailAccount: (endpoint authenticationInfo username) asString;
		getFolderWith: endpoint.

	^ ToolBuilder default open: instance