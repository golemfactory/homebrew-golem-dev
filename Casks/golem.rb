cask 'golem' do
  version '0.1.0'
  sha256 '463d5645ddd6dc4adc93862d54fa29e86179f77282a785aa08779a705a922dd0'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
