cask 'golem' do
  version '0.1.7'
  sha256 '5a0c3f914244a7b891898220c347abd4c19ddb549f90f49ddc82495035ae129d'
  url "https://github.com/golemfactory/golem-electron-dev/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
