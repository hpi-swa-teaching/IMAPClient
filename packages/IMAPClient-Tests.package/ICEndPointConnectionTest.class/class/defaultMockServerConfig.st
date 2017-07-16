constants
defaultMockServerConfig

	| mockServer |
	mockServer := ICMockServer new.
	^ mockServer
		validPort: self validPort;
		validHostIP: self validHostIP;
		validHost: self validHost;
		yourself