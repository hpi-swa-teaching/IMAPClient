comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self header hash bitXor: (self messageID hash bitXor: (self body hash bitXor: (self folder hash bitXor: self uniqueID hash)))