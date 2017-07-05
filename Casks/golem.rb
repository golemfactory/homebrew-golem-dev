cask 'golem' do
  version '0.1.0'
  sha256 '719a579c61aa53981b2cd2e141bc8ffb30b9ad1c81e3efdf14cce943cafcad7e'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
