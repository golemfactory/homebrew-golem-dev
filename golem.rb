class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem-dev/'
  version '0.16.1'
  sha256 '07b8569a1a9261b1bbdc329613d2a83776bba647ae4c75f18a9a4e28d4ad0008'
  url 'https://github.com/golemfactory/golem-dev/releases/download/0.16.1/golem-0.16.0.dev34.g938695205-macOS.tar.gz'

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
