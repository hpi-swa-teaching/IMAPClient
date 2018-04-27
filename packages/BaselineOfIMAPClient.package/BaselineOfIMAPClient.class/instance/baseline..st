baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
				package: 'JSON' with: 
					[ spec file: 'JSON-ul.35';	
       					repository: 'http://www.squeaksource.com/JSON' ];
                package: 'IMAPClient-Core';
                package: 'IMAPClient-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('IMAPClient-Core');
                group: 'Tests' with: #('IMAPClient-Tests') ]