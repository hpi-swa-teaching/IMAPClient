instance creation
openWith: anEmail

	^ ToolBuilder default open: (self new email: anEmail)