cask 'golem' do
  version '0.1.9'
  sha256 '30b45a199f813e3b8554a6344e8f112614fe69450957839ab8d8927f5db43a12'
  url "https://github.com/golemfactory/golem-electron-dev/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'
  depends_on cask: 'golem-mainnet-launcher'

  app 'golem.app'
end
