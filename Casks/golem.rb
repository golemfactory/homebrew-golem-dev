cask 'golem' do
  version '0.1.2'
  sha256 '274cc63dc7d0c5844f93928b3961fa271c2cafc6beff3ef32ecba4afd972abc4'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'

  app 'golem.app'
end
