login
login: username using: password

	self halt.
	^ self loginUsing: (ICAuthenticationInfo for: username using: password)
	