require 'yaml'

Facter.add(:apache_version) do
  setcode do
      YAML.load(Facter::Util::Resolution.exec('puppet resource package apache-httpd --to_yaml'))
  end
end