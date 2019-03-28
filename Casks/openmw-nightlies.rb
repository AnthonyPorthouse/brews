
cask 'openmw-nightlies' do

  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = "https://downloads.openmw.org/osx/nightly"
    search_url = "#{base_url}/?C=M&O=D"
    latest_filename = URI(search_url).open.read.scan(%r((OpenMW-\d{8}-[0-9a-f]+\.dmg)")i).flatten.first

    "#{base_url}/#{latest_filename}"
  end

  appcast 'https://downloads.openmw.org/osx/nightly'
  name 'OpenMW Nightlies'
  homepage 'https://downloads.openmw.org/osx/nightly'

  app 'OpenMW.app'
  app 'OpenMW-CS.app'
end
