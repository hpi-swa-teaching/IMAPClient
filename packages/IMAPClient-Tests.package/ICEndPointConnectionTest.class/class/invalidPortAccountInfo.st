constants
invalidPortAccountInfo

	^ ICAccountInfo newWithAccountName: self validAccountName host: self validHost port: self invalidPort username: self validUsername password: self validPassword ssl: true.