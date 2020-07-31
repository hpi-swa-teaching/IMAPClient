storage
eraseStoredPasswords
	self basicConnectionConfigurations do: [:anAccountInfo |
		anAccountInfo eraseStoredPassword].