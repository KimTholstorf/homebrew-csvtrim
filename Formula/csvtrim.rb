class Csvtrim < Formula
  desc "Filter and trim large CSV files by column values"
  homepage "https://github.com/KimTholstorf/csvTrim"
  url "https://files.pythonhosted.org/packages/d1/bf/8572c91b9f4b666fe4c775aeab8f273ba9739865b542ec6fabecd3bffd01/csvtrim-1.0.4.tar.gz"
  sha256 "efbb7ff586312ccfeeb85e6d3f910e9d3de999e21d70fec1924af3fcc5be0ee0"
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
