constants
validAccountInfo

	^ ICAccountInfo newWithAccountName: self validAccountName host: self validHost port: self validPort username: self validUsername password: self validPassword ssl: true.