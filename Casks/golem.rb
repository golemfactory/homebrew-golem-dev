cask 'golem' do
  version '0.1.0'
  sha256 '2336749b6fdceed92daeba23f128a6adfdbfdbdebeda9e501c54968e506c0639'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
