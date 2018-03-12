cask 'golem' do
  version '0.1.8'
  sha256 '1101f461e63fd0f3eddae5850eff8bd7c9c68643d58a411b88ccf7c8a127fddf'
  url "https://github.com/golemfactory/golem-electron-dev/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
