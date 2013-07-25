require 'rspec'
require 'spec_helper'

if OS.include? "linux"
  describe 'TCPConnectios' do
    it 'should TCP Connections Used' do
      a = Usagewatch.uw_tcpused
      a.class.should be Fixnum
      a.should_not be_nil
      a.should be >= 0
    end
  end

  describe 'UDPConections' do
    it 'should UDP Connections Used ' do
      a = Usagewatch.uw_udpused
      a.class.should be Fixnum
      a.should_not be_nil
      a.should be >= 0
    end
  end

  describe 'DiskREADS' do
    it 'should be current disk reads  ' do
      a = Usagewatch.uw_diskioreads
      a.class.should be Fixnum
      a.should_not be_nil
      a.should be >= 0
    end
  end

  describe 'DiskWrites' do
    it 'should be current disk writes  ' do
      a = Usagewatch.uw_diskiowrites
      a.class.should be Fixnum
      a.should_not be_nil
      a.should be >= 0
    end
  end

  describe 'Bandwidth' do
    it 'should be current received  ' do
      a = Usagewatch.uw_bandrx
      a.class.should be Float
      a.should_not be_nil
      a.should be >= 0
    end
  end

  describe 'Bandwidth' do
    it 'should be current received  ' do
      a = Usagewatch.uw_bandtx
      a.class.should be Float
      a.should_not be_nil
      a.should be >= 0
    end
  end
end
