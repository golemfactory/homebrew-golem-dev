cask 'golem' do
  version '0.1.4'
  sha256 'd59c8fd7df773c80710c8d2ac86f28ca638ef965f22a81aafe9ab3923d2f0818'
  url "https://github.com/golemfactory/golem-electron-dev/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
