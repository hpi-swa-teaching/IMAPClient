action - button
submit

	| accountInfo |
 
	self insertDefaults.
	accountInfo := self createAccountInfo.
	(self checkAccountInfoValidity: accountInfo)
		ifFalse: [^ self].
 
	self loginMorph abandon.
	self addOrEditAccount: accountInfo