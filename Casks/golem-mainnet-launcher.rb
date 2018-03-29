cask 'golem-mainnet-launcher' do
  version '1.0'
  sha256 'c8f17a69191773b1255d93f974a299cb9c31dd163a33f316921628f5d3bf4006'
  url "https://github.com/golemfactory/golem-mainnet-launcher-macos/releases/download/v#{version.major_minor}/Golem-mainnet-v#{version.major_minor}.zip"

  name 'Golem Worldwide Supercomputer (mainnet)'
  homepage 'https://github.com/golemfactory/golem-mainnet-launcher-macos/'

  auto_updates true

  app 'Golem mainnet.app'
end
