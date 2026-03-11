class Csvtrim < Formula
  desc "Filter and trim large CSV files by column values"
  homepage "https://github.com/KimTholstorf/csvTrim"
  url "https://files.pythonhosted.org/packages/source/c/csvtrim/csvtrim-1.0.1.tar.gz"
  sha256 "27f2c8468df61549ad44968b339ded7d2aa6c2e5b15adcd34ca43c7213afc0c4"
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
