require 'rspec'
require 'spec_helper'

describe 'Version' do
  it 'should be the version number' do
    a = UsagewatchExt::VERSION
    a.class.should be(String)
    a.should_not be_nil
  end
end

describe 'OSVersion' do
  it 'should be the OS version' do
    a = UsagewatchExt::OS
    a.class.should be(String)
    a.should_not be_nil
  end
end

if OS.include? "linux"
  describe 'Version' do
    it 'should be the version number of usagewatch' do
      a = Usagewatch::VERSION
      a.class.should be(String)
      a.should_not be_nil
    end
  end
end