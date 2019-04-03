class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  version '0.19.1'
  sha256 '310e370bdcc2663419fd3dfdf0a66af148422665c9af2653671dbac8bdc9c6a0'
  url "https://github.com/golemfactory/golem-dev/releases/download/#{version.major_minor_patch}/golem-#{version.major_minor_patch}-macOS.tar.gz"

  depends_on 'gmp'
  depends_on 'openexr'
  depends_on 'freeimage'
  depends_on 'golemfactory/hyperg/hyperg'
  depends_on 'openssl'

  def install
    bin.install 'golemapp'
    bin.install 'golemcli'
    bin.install Dir['*']

  end

end
