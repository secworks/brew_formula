class Cxmon < Formula
  desc "Interactive command-driven file manipulation tool."
  homepage "http://cxmon.cebix.net/"
  url "http://cxmon.cebix.net/downloads/cxmon-3.2.tar.gz"
  sha256 "707a453e5cb397c82a706bd61e1a7533c520e0064859f4365b7504182f438889"

  def install
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test cxmon`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
