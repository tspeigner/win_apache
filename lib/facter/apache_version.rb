Facter.add(:apache_version) do
  confine :kernel => 'windows'
  setcode do
    # Using choco list on the package namage, then splitting the results (on space)
    # then getting the 4 item.  This might change later if choco list has a different output
    # but this works for now.
    Facter::Util::Resolution.exec('choco list apache-httpd').split[3]
  end
end
