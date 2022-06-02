baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [ 
			spec
				package: 'JSON' with: [ spec file: 'JSON-ul.35'; repository: 'http://www.squeaksource.com/JSON' ];
				baseline: 'Widgets' with: [ spec repository: 'github://hpi-swa/widgets:master/repository' ];
				baseline: 'MorphicTestingFramework' with: [spec repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'];
				package: 'IMAPClient-Core' with: [ spec requires: #('libraries') ];
				package: 'IMAPClient-UI';
				package: 'IMAPClient-Util';
				package: 'IMAPClient-Protocol';
				package: 'IMAPClient-Tests' with: [ spec requires: #('default')];
				package: 'IMAPClient-Tests-UI' with: [ spec requires: #('Tests')].
			spec
				group: 'default' with: #('IMAPClient-UI' 'IMAPClient-Core' 'IMAPClient-Protocol' 'IMAPClient-Util');
				group: 'Tests' with: #('IMAPClient-Tests');
				group: 'TestsUI' with: #('IMAPClient-Tests-UI');
				group: 'libraries' with: #('JSON' 'Widgets' 'MorphicTestingFramework')]
