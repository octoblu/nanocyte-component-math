ReturnValue = require 'nanocyte-component-return-value'

class Math extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = Math
