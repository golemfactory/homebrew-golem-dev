cask 'golem' do
  version '0.1.10'
  sha256 '45f7228d162d6656f0e0530040f045d0209f4d166244be0b8fddf387f0cae761'
  url "https://github.com/golemfactory/golem-electron-dev/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'
  depends_on cask: 'golem-mainnet-launcher'

  app 'golem.app'
end
