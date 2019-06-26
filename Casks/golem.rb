cask 'golem' do
  name 'Golem Worldwide Supercomputer GUI'
  homepage 'https://github.com/golemfactory/golem-electron-dev/'

  version '0.2.0'
  sha256 '964d921206d8c07f00af0548d91248c2a8afaa24eeda141af77c62a1e1541489'
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
