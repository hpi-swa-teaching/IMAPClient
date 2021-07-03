action - remove emails
removeMail: anICEmail

	self emails remove: anICEmail ifAbsent: [ Transcript show: 'ICFolder removeMail is not there' ]