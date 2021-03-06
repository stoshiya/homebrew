require 'formula'

class Speex < Formula
  desc "Audio codec designed for speech"
  homepage 'http://speex.org'
  url 'http://downloads.us.xiph.org/releases/speex/speex-1.2rc1.tar.gz'
  sha1 '52daa72572e844e5165315e208da539b2a55c5eb'

  bottle do
    cellar :any
    revision 2
    sha1 "035c405657c5debb5e41d291bb44f508797a7b51" => :yosemite
    sha1 "123e086d2548614ff66691f46e6f6e3dce3fa362" => :mavericks
    sha1 "d9cb07f7de4d226c25d0b8ddbddd3fb0de5f5c53" => :mountain_lion
  end

  depends_on 'pkg-config' => :build
  depends_on 'libogg' => :recommended

  def install
    ENV.j1
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
