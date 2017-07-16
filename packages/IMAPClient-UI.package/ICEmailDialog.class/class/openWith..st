instance creation
openWith: email

	^ ToolBuilder default open: (self new email: email)