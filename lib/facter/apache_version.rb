require 'yaml'

Facter.add(:apache_version) do
  setcode do
    YAML.safe_load(Facter::Util::Resolution.exec('puppet resource package apache-httpd --to_yaml')['package']['apache-httpd']['ensure'])
    #YAML.load(test)['package']['tar']['ensure']
  end
end
