class TapoCli < Formula
  include Language::Python::Virtualenv

  desc "Control Tapo cameras from the terminal"
  homepage "https://github.com/mac1010z/tapo-cli"
  url "https://github.com/mac1010z/tapo-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a2f4e1e9025c22a6c1503c32d75aafb7e2e7fd8e50f2f918cc2c8a20ba767bfb"
  license "MIT"

  depends_on "python@3.13"
  depends_on "ffmpeg"

  resource "pytapo" do
    url "https://files.pythonhosted.org/packages/source/p/pytapo/pytapo-3.3.30.tar.gz"
    sha256 "cd27837860ffefc6c8a0a9ba07c04de2a5901358af360caf9eb1ad82c7a43373"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/source/p/pillow/pillow-11.1.0.tar.gz"
    sha256 "368da70808b36d73b4b390a8ffac11069f8a5c85f29eff1f1b01bcf3ef5b2a20"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/tapo --help")
  end
end
