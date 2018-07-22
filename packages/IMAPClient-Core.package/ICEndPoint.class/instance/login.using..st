login
login: username using: password


	^ self loginUsing: (ICAuthenticationInfo for: username using: password)
	