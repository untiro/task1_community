# # encoding: utf-8

# Inspec test for recipe task1_community::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe package('net-tools') do
  it { should be_installed }
end

describe command('netstat --version') do
  its('stdout') { should match /net-tools/ }
end

describe command('netstat -tunlp | grep 0.0.0.0') do
  its('stdout') { should match /0.0.0.0/ }
end

