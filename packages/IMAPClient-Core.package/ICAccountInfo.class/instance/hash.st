comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self user bitXor: (self email bitXor: (self server bitXor: self port hash))