cask 'golem' do
  version '0.1.6'
  sha256 'eb7c01d79b0b53bb076283b4e4b55fca9956b256d20820b54187c8f413c4f4d9'
  url "https://github.com/golemfactory/golem-electron-dev/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
