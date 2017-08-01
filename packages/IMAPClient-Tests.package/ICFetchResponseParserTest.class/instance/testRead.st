as yet unclassified
testRead
	
	| mail givenMail |
	self class exampleHeader do: [ :x | x do: [:i | parser read: i]. parser read: (Character cr) ]. 
	
	self assert: self parser emails size equals: self class expectedNumberOfMails.
	
	mail := (self parser emails at: 1). 
	givenMail := self class expectedMailObject.
	self assert: mail from equals: givenMail from. 
	self assert: mail to equals: givenMail to.
	self assert: mail subject equals: givenMail subject.
	self assert: mail date equals: givenMail date. 
	