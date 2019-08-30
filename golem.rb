class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'

  version '0.20.1'
  sha256 '48806104bbce6d474fe0d9a291699fd6d5f4ee7f506ac822849bce662fc7afd0'
  url "https://github.com/golemfactory/golem-dev/releases/download/0.20.1/golem-0.20.1-macOS.tar.gz"

  depends_on 'gmp'
  depends_on 'openexr'
  depends_on 'freeimage'
  depends_on 'golemfactory/hyperg/hyperg'
  depends_on 'golemcli'
  depends_on 'openssl'

  def install
    bin.install 'golemapp'
    bin.install Dir['*']

  end

end
