as yet unclassified
resetMailData
	
	| directory |
	
	"warning: this will delete whole Maildir Directory"
	directory := FileDirectory default.
	
	(directory directoryExists: 'Maildir')
		ifFalse: [^ 'No Maildir exists'].
		
	directory := directory directoryNamed: 'Maildir'.
	directory recursiveDelete.
	
	ICLoadOlderMail instance: nil.
	
	^ 'OK'