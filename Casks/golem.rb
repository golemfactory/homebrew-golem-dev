cask 'golem' do
  version '0.1.2'
  sha256 '909c256445b2e3933f7b596f5f5fda9fe36fccd576601765a04ff568f9620ebb'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
