instance creation
newWithUsername: username password: password

	^ self newWithAccountName: self initialAccountName host: self invalidHost port: self invalidPort username: username password: password ssl: self initialSsl