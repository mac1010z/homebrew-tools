class TapoCli < Formula
  include Language::Python::Virtualenv

  desc "Control Tapo cameras from the terminal"
  homepage "https://github.com/mac1010z/tapo-cli"
  url "https://github.com/mac1010z/tapo-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 ""  # Update after first release
  license "MIT"

  depends_on "python@3.13"
  depends_on "ffmpeg"

  resource "pytapo" do
    url "https://files.pythonhosted.org/packages/source/p/pytapo/pytapo-3.3.30.tar.gz"
    sha256 ""  # Update with actual hash
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/source/p/pillow/pillow-11.1.0.tar.gz"
    sha256 ""  # Update with actual hash
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/tapo --help")
  end
end
