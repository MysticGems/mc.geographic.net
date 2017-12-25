# # encoding: utf-8

# Inspec test for recipe geo_minecraft::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

describe port(22) do
  it { should be_listening }
end

describe port(25565) do
  it { should be_listening }
end
