accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			"Packages"
			spec
				package: 'Ordered-Dictionary';
				package: 'Ordered-Dictionary-Tests' with: [ spec requires: #('Ordered-Dictionary') ].

			"Groups"
			spec
				group: 'Core' with: #('Ordered-Dictionary');
				group: 'Tests' with: #('Ordered-Dictionary-Tests') ]