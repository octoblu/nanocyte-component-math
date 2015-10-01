ReturnValue = require 'nanocyte-component-return-value'

MathOperations =
  'abs': Math.abs
  'acos': Math.acos
  'asin': Math.asin
  'atan': Math.atan
  'ceil': Math.ceil
  'cos': Math.cos
  'exp': Math.exp
  'floor': Math.floor
  'log': Math.log
  'pow': Math.pow
  'round': Math.round
  'sign': Math.sign
  'sin': Math.sin
  'sqrt': Math.sqrt
  'tan': Math.tan

class MathNode extends ReturnValue
  onEnvelope: (envelope) =>
    {operation, key, value} = envelope.config
    "#{key}": MathOperations[operation](value)


module.exports = MathNode
