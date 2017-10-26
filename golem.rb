class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'
  url 'https://github.com/golemfactory/golem-dev/releases/download/0.9.0/golem-macos-0.9.0.tar.gz'
  sha256 '7a5dbc3c45fb796c530d9e69794662e4a4743eb054af52bb1ee068db3592db6b'
  version '0.9.0'

  depends_on 'docker'
  depends_on 'docker-machine'
  depends_on 'xhyve'
  depends_on 'docker-machine-driver-xhyve'
  depends_on 'gmp'
  depends_on 'openexr'
  depends_on 'freeimage'
  depends_on 'golemfactory/hyperg/hyperg'
  depends_on 'openssl'
  depends_on 'ethereum/ethereum/ethereum'

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
