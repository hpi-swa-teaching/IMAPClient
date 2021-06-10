do
add: aCommand for: anAccount
	
	(self at: anAccount ifAbsent: [ self addAccount: anAccount ]) addFirst: aCommand