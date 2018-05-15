fetch body
modifyFlagSeen

		(self retrieveFlags at: #seen)
			 ifTrue: [
					 folder endpoint
					select: self folder path;
					resetFlagSeen: self]
			 ifFalse: [
					folder endpoint
					select: self folder path;
					setFlagSeen: self]