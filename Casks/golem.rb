cask 'golem' do
  version '0.1.2'
  sha256 '6f6d4915af79170127ea052b33a4d27bcca79a18c5ca2f33d969ca34ba15f48e'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
