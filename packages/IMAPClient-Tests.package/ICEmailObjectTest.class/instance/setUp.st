setup
setUp

	self emailObject: ICEmailObject new.
	self emailObject
		header: self emailObjectHeader;
		body: self emailObjectBody
		
	