constants
invalidPasswordAccountInfo
	
	^ ICAccountInfo newWithAccountName: self validAccountName host: self validHost port: self validPort username: self validUsername password: self invalidPassword ssl: true.