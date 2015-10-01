ReturnValue = require 'nanocyte-component-return-value'
MathNode = require '../src/math'

describe 'MathNode', ->
  beforeEach ->
    @sut = new MathNode

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should perform the operation and return the message', ->
        envelope =
          config:
            value: '-3'
            key: 'cats'
            operation: 'abs'

        expect(@sut.onEnvelope envelope).to.deep.equal 'cats': 3

    describe 'when called with a different envelope', ->
      it 'should perform the new operation and return the message', ->
        envelope =
          config:
            key: 'crazy-bum'
            value: 'saturn'
            operation: 'sqrt'

        expect(@sut.onEnvelope envelope).to.deep.equal 'crazy-bum': NaN
