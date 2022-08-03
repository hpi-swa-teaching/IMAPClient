comparing
hash

	^ self header hash bitXor: (self messageID hash bitXor: (self body hash bitXor: (self folder hash bitXor: self uniqueID hash)))