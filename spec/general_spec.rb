require 'rspec'
require 'spec_helper'

describe 'IncludeLibrary' do
  it 'should include the library' do
    a = Usagewatch
    a.should be Usagewatch
  end
end

describe 'DiskUsage' do
  it "should be the GB of disk used" do
    a = Usagewatch.uw_diskused
    a.class.should be(Float)
    a.should_not be_nil
    a.should be >= 0
  end
end

describe 'DiskUsage_on' do
  it "should be the GB of disk used on root partition" do
    a = Usagewatch.uw_diskused_on("/")
    a.class.should be(Float)
    a.should_not be_nil
    a.should be >= 0
  end
end

describe 'DiskAvailable' do
  it "should be the GB of disk available" do
    a = Usagewatch.uw_diskavailable
    a.class.should be(Float)
    a.should_not be_nil
  end
end

describe 'DiskAvailable_on' do
  it "should be the GB of disk used on root partition" do
    a = Usagewatch.uw_diskavailable_on("/")
    a.class.should be(Float)
    a.should_not be_nil
  end
end


describe 'CPUUsage' do
  it "should be the percentage of cpu used" do
    a = Usagewatch.uw_cpuused
    a.class.should be(Float)
    a.should_not be_nil
    a.should be <= 100
    a.should be >= 0
  end
end

describe 'PercentageDiskUsage' do
  it "should be the percentage of GB of disk used" do
    a = Usagewatch.uw_diskused_perc
    a.class.should be(Float)
    a.should_not be_nil
    a.should be <= 100
    a.should be >= 0
  end
end

describe 'LoadAverage' do
  it "should be the average load of the past minute" do
    a = Usagewatch.uw_load
    a.class.should be(Float)
    a.should_not be_nil
    a.should be >= 0
  end
end

describe 'TopCPUUsage' do
  it "should be an array of top cpu consumption proccesses " do
    a = Usagewatch.uw_cputop
    a.class.should be(Array )
    a.should_not be_nil
    a[0][0].class.should be String
    a[0][1].class.should be String
    a.count.should be == 10
  end
end

describe 'TopMEMUsage' do
  it "should be an array of top mem consumption proccesses " do
    a = Usagewatch.uw_cputop
    a.class.should be(Array )
    a.should_not be_nil
    a[0][0].class.should be String
    a[0][1].class.should be String
    a.count.should be == 10
  end
end

describe 'HTTPConns' do
  it 'should be the number of current apache connections' do
    a = Usagewatch.uw_httpconns
    a.class.should be Fixnum
    a.should_not be_nil
    a.should be >= 0
  end
end
