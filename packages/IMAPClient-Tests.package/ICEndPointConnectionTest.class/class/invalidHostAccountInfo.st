constants
invalidHostAccountInfo

	^ ICAccountInfo newWithAccountName: self validAccountName host: self invalidHost port: self validPort username: self validUsername password: self validPassword ssl: true.