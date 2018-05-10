fetch body
modifySeenFlag

		(self seen)
			 ifTrue: [
					 folder endpoint
					select: self folder path;
					resetSeenFlag: self]
			 ifFalse: [
					folder endpoint
					select: self folder path;
					setSeenFlag: self]