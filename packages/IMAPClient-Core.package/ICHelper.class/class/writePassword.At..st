as yet unclassified
writePassword: aPassword At: aUsername

	(self class) accountsDictionary do: [:each |
		(each at: 'username' == aUsername)
			ifTrue: [each at: 'password' put: aPassword]]