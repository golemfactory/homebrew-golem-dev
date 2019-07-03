cask 'golem' do
  name 'Golem Worldwide Supercomputer GUI'
  homepage 'https://github.com/golemfactory/golem-electron-dev/'

  version '0.2.0'
  sha256 'f504f01482ed1fba3cd76311fe175e7db4dae4728cd11e1a3dc1c277d7198551'
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
