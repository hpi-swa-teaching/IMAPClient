setup
setUp

	self emailObject: ICEmail new.
	self emailObject
		header: self emailObjectHeader;
		body: self emailObjectBody
		
	