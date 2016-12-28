class Cxmon < Formula
  desc "Interactive command-driven file manipulation tool similar to a
        machine code monitor/debugger. There are built-in PowerPC, 680x0, 80x86
        (including x86-64), 6502 and Z80 disassemblers."
  homepage "http://cxmon.cebix.net/"
  url "http://cxmon.cebix.net/downloads/cxmon-3.2.tar.gz"
  version "3.2"
  sha256 "707a453e5cb397c82a706bd61e1a7533c520e0064859f4365b7504182f438889"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
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
