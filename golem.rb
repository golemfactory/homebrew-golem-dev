class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  version '0.20.1'
  sha256 'db6779549ba94150f2c5afb13a3590e4ef98d6364305402ecb9b1968346ed952'
  url "https://github.com/golemfactory/golem-dev/releases/download/0.20.1/golem-0.20.1-macOS.tar.gz"

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
