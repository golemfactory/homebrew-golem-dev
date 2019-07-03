class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  version '0.20.0'
  sha256 '28822a8c959976d1fc3f633d2c57dff4b88184acbe5964a88642aa0f95f79ab7'
  url "https://github.com/golemfactory/golem-dev/releases/download/0.20.0/golem-0.20.0-macOS.tar.gz"

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
