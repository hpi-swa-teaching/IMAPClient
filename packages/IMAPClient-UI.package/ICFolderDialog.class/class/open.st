instance creation
open

	| instance endpoint endpoint2 endpoint3 accountCollection|
	
	instance := self new.
	
	"build first endpoint"
	
	endpoint := ICEndPoint new.
	accountCollection := OrderedCollection new.
	
	[ endpoint 
		name: 'David HPI';
		ssl: true;
		connectTo: 'owa.hpi.de' on: 993;
		login: 'david.hennemann' using: self passwordAccOne ]
		on: Error
		do: [ :sig | self inform: sig asString ].
	
	accountCollection add: endpoint.
	
	endpoint2 := ICEndPoint new.
	
	[ endpoint2 
		name: 'Claudia HPI';
		ssl: true;
		connectTo: 'owa.hpi.de' on: 993;
		login: 'claudia.grabowski' using: self passwordAccTwo ]
		on: Error
		do: [ :sig | self inform: sig asString ].
	
	accountCollection add: endpoint2.
	
	endpoint3 := ICEndPoint new.
	
	[ endpoint3 
		name: 'David T-Online';
		ssl: true;
		connectTo: 'secureimap.t-online.de' on: 993;
		login: 'david.hennemann@t-online.de' using: self passwordAccThree ]
		on: Error
		do: [ :sig | self inform: sig asString ].
	
	accountCollection add: endpoint3.
	
	instance 
		emailAccounts: accountCollection.

	^ ToolBuilder default open: instance