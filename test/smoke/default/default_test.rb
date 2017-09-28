# # encoding: utf-8

# Inspec test for recipe sensei_chef_build_server::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe command('ruby -v') do
  its(:exit_status) { should eq 0 }
  its('stdout') { should match /2.3.1/ }
end
