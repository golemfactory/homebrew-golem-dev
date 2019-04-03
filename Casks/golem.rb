cask 'golem' do
  name 'Golem Worldwide Supercomputer GUI'
  homepage 'https://github.com/golemfactory/golem-electron-dev/'

  version '0.1.19'
  sha256 'bf784dd91e20efa1d1d3e17eee4ec84e4d64a1fc36a34e54e445c557a6d2f2e3'
  url "https://github.com/golemfactory/golem-electron-dev/releases/download/#{version.major_minor_patch}/golem-electron-beta-macos-#{version.major_minor_patch}.dmg"

  auto_updates true
  depends_on formula: 'golemfactory/golem-dev/golem'
  depends_on cask: 'golem-mainnet-launcher'
  depends_on cask: 'docker'

  app 'golem.app'

  # Creates a symlink for the newly installed 'docker' binary
  postflight do
    FileUtils.ln_sf("/Applications/Docker.app/Contents/Resources/bin/docker", "/usr/local/bin/docker")
  end
  # Removes the symlink on deinstallation
  uninstall delete: "/usr/local/bin/docker"
end
