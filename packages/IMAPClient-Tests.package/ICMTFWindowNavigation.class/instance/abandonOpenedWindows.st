running
abandonOpenedWindows

	self openedWindows do: [:window | window abandon]