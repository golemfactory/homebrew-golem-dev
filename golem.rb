class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'
  version '0.18.2'
  sha256 '0a27c1315643763578a1556dad2762f6527ea429dd6b67c5d22af0ffdf01e27d'
  url 'https://github.com/golemfactory/golem-dev/releases/download/0.18.2/golem-0.18.2-macOS.tar.gz'

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
