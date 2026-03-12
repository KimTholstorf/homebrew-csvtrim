class Csvtrim < Formula
  desc "Filter and trim large CSV files by column values"
  homepage "https://github.com/KimTholstorf/csvTrim"
  url "https://files.pythonhosted.org/packages/1b/5d/84c656a64a7fbc346a50c38c858e73722cbed96fe60ca1908cc07b5f51e9/csvtrim-1.0.3.tar.gz"
  sha256 "e1ef226976d1a28411047b9d843c0f89adfc6b1f6b2d752bd22bc14f62e05d36"
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
