require 'spec_helper'

describe user('vagrant') do
  it { should exist }
  it { should have_home_directory '/home/vagrant' }
end

describe package('git')  do
  it { should be_installed }
end

describe file('/home/vagrant/.nvm') do
  it { should be_directory }
end

describe command('node -v') do
  its(:stdout) { should match /v0.10.*/ }
end
