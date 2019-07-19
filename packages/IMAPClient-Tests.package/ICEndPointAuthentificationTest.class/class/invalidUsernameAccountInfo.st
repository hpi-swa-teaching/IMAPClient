constants
invalidUsernameAccountInfo
	
	^ ICAccountInfo newWithAccountName: self validAccountName host: self validHost port: self validPort username: self invalidUsername password: self validPassword ssl: true.