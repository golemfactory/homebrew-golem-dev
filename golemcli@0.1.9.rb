class Golemcli < Formula
  desc 'Command Line Interface for Golem'
  homepage 'https://github.com/golemfactory/golem-client'

  stable do
    version '0.1.9'
    url 'https://github.com/golemfactory/golem-client/releases/download/v0.1.9/golemcli-osx-v0.1.9.tar.gz'
    sha256 'f15db7cf4e9a6764ae54c9e603ed5408b329a92e8e7f3045d0576f7be74c7dd2'
  end

  def install
    bin.install 'golemcli'
  end
end
