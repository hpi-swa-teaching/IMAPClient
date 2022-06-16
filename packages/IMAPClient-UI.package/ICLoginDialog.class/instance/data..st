accessing
data: anAccountInfo

	self accountName: anAccountInfo accountName.
	self serverAddress: anAccountInfo host.
	self serverPort: anAccountInfo port asString.
	self username: anAccountInfo username.
	self password: anAccountInfo password.
	self ssl: anAccountInfo ssl