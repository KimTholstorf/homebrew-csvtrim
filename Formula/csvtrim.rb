class Csvtrim < Formula
  desc "Filter and trim large CSV files by column values"
  homepage "https://github.com/KimTholstorf/csvTrim"
  url "https://files.pythonhosted.org/packages/34/9a/611ddc2c5197532abd40da5913f15bd21e741ede2d3910c39cc726374ec7/csvtrim-1.0.5.tar.gz"
  sha256 "2f4c68da39d2b11e9b43902d072b7b34de465a1165e17ab063560f3fa6a24f03"
  license "MIT"

  depends_on "python3"

  def install
    system "python3", "-m", "venv", libexec
    system libexec/"bin/pip", "install", "--no-cache-dir", "csvtrim==#{version}"
    bin.install_symlink libexec/"bin/csvtrim"
  end

  test do
    system bin/"csvtrim", "--version"
  end
end
