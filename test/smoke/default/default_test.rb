# # encoding: utf-8

# Inspec test for recipe LAMP_Ubuntu::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe command('curl http://localhost:80') do
  its(:stdout) { should match(/It works/) }
end

describe package('apache2') do
  it { should be_installed }
end

describe upstart_service('apache2') do
  it { should be_enabled }
  it { should be_running }
end

describe command('systemctl is-enabled apache2') do
  its('exit_status') { should eq 0 }
end

# describe service('apache2') do
#
# end

describe port(80) do
  it { should be_listening }
end
