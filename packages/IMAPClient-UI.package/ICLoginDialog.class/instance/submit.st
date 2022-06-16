action - button
submit

	| accountInfo |
	self insertDefaults.
	accountInfo := self createAccountInfo.
	self loginMorph abandon.
	self addOrEditAccount: accountInfo