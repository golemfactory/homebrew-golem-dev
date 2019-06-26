class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  version '0.20.0'
  sha256 'd402a9638c6687999b02b342687efe67a0b0541f75b102fefab813e8cb102e28'
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
