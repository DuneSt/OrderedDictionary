tests
testAtIfPresent
  | dictionary |
  dictionary := self emptyDictionary.
  self orderedAssociations
    do: [ :each | 
      self assert: (dictionary at: each key ifPresent: [ :v | self fail ]) isNil.
      dictionary add: each.
      self
        assert:
          (dictionary at: each key ifPresent: [ :value | self newValue -> value ])
            = (self newValue -> each value).	"ensure cull: is used"
      self
        assert:
          (dictionary at: each key ifPresent: [ :v | self newValue ]) = self newValue ]