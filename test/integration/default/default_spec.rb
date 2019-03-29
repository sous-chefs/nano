describe file('/etc/nanorc') do
  it { should be_a_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('content') { should match(%r{include /etc/nanorc.d/ruby.nanorc}) }
end

describe file('/etc/nanorc.d') do
  it { should be_a_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/etc/nanorc.d/ruby.nanorc') do
  it { should be_a_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('content') { should match(/syntax \"ruby\" \"\\\.rb\$\" \"Gemfile\" \"config.ru\" \"Rakefile\" \"Capfile\" \"Vagrantfile\"/) }
  its('content') { should match(%r{header \"\^\#\!\.\*\/\(env \+\)\?ruby\( \|\$\)\"}) }
  its('content') { should match(/color yellow \"\\\<\(BEGIN\|END\|/) }
end
