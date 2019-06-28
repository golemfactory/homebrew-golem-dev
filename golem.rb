class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  version '0.20.0'
  sha256 '680e1477d917582832afeed28e73188723b94e4b11da546a8b18052f8e22920e'
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
