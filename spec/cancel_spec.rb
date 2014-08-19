
require 'spec_helper'

RSpec.describe Timers::Group do
  it "should be able to cancel twice" do
    fired = false

    handle = subject.after(0.1) { fired = true }
    handle.cancel
    handle.cancel

    expect(fired).to be false
  end
end