comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	"^ self username bitXor: (self accountName bitXor: (self host bitXor: self port hash))"
	^ 'test'