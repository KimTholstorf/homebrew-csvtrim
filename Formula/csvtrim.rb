class Csvtrim < Formula
  desc "Filter and trim large CSV files by column values"
  homepage "https://github.com/KimTholstorf/csvTrim"
  url "https://files.pythonhosted.org/packages/cd/53/69422495b947fb725bf20ed97f0cf0c467f16c45840fd27d64afdff3e3bd/csvtrim-1.0.6.tar.gz"
  sha256 "55c3502e9cd2b5b3f9dd62d8e3c6397200680498ddf1cbbe8cb0685c90997062"
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
