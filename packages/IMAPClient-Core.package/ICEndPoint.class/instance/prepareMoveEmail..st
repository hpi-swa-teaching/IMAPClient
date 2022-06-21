protocol handling - move
prepareMoveEmail: anEmail

	self
		removeMoved: anEmail;
		deleteMailLocally: anEmail.
	self connectionHandler select: anEmail folder path