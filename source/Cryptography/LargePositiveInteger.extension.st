Extension { #name : #LargePositiveInteger }

{ #category : #'*cryptography-core' }
LargePositiveInteger >> destroy [
	"Wipe my bytes so that they cannot possibly be discovered."
	1 to: self size do:
		[ : x |
		self 
			digitAt: x
			put: 0 ]
]
