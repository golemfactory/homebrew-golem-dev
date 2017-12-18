class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'
  url 'https://github.com/golemfactory/golem-dev/releases/download/0.10.0/golem-0.9.1-0x98e86525-macOS.tar.gz'
  sha256 'fb5814a85f79c6a0d7e036cef0e0cfc5d1a9b84d20e54bf590c90cc3153446fd'
  version '0.9.1-0x98e86525'

  depends_on 'docker'
  depends_on 'docker-machine'
  depends_on 'xhyve'
  depends_on 'docker-machine-driver-xhyve'
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

  def post_install

    # docker-machine-driver-xhyve need root owner and uid
    # https://github.com/zchee/docker-machine-driver-xhyve

    opoo "\n\n\nPLEASE EXECUTE THE FOLLOWING COMMANDS MANUALLY:
    sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
    sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve \n\n\n"

  end

end
