cask 'golem' do
  version '0.1.5'
  sha256 'ca8f453e5c2debfc636c8ed7b0b396a4c778cf3081be8bdbb4208a957fc8eb70'
  url "https://github.com/golemfactory/golem-electron-dev/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
