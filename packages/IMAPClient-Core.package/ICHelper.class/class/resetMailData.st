as yet unclassified
resetMailData
	
	| directory |
	
	"warning: this will delete whole Maildir Directory"
	directory := FileDirectory default.
	
	(directory directoryExists: 'Maildir')
		ifFalse: [^ self].
		
	directory := directory directoryNamed: 'Maildir'.
	directory recursiveDelete.
	
	ICLoadOlderMail instance: nil.
		
		
	