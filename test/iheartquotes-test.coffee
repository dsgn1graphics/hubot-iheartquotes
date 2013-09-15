chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'iheartquotes', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/iheartquotes')(@robot)

  it 'should registered response listeners', ->
    expect(@robot.respond).to.have.been.calledWith(/quote(\s|me\s+)?(.*)/i)
    expect(@robot.respond).to.have.been.calledWith(/whats( my fortune)/)
    expect(@robot.respond).to.have.been.calledWith(/iheart\s?(.*)/i)