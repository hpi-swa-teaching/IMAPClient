accessing
getEndpointByName: name

	| foundEndpointIndex foundEndpoint |

	foundEndpointIndex := self emailAccounts findFirst: [:endpoint | endpoint name = name].
	foundEndpoint := self emailAccounts at: foundEndpointIndex.
	
	^ foundEndpoint