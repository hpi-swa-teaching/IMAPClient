accessing
openConnectionToHost: aHost port: aPort

	| instance |
	instance := self new.
	instance server: ICEndPointConnectionTest defaultMockServerConfig.
	
	^ instance connectTo: aHost on: aPort