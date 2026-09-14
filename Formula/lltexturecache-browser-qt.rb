class LltexturecacheBrowserQt < Formula
  desc "Browse and export textures from the Second Life texture cache"
  homepage "https://github.com/furudean/lltexturecache-browser-qt"
  url "https://github.com/furudean/lltexturecache-browser-qt/archive/refs/tags/v0.7.3.tar.gz"
  sha256 "e92a325d2795b9673092a36398729cdf6e5a0b2b57f4dfcc4bd4b2adc55daf81"
  license "MIT"
  head "https://github.com/furudean/lltexturecache-browser-qt.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "uv" => :build
  depends_on macos: :ventura
  depends_on "python@3.13"

  def install
    python = formula_opt_bin("python@3.13")/"python3.13"

    ENV["UV_CACHE_DIR"] = buildpath/".uv-cache"
    ENV["UV_PROJECT_ENVIRONMENT"] = libexec
    ENV["UV_PYTHON_DOWNLOADS"] = "never"

    sync = %W[uv sync --frozen --no-dev --python #{python} --python-preference only-system]

    system python, "scripts/generate-metadata"

    system(*sync, "--no-install-project")
    system libexec/"bin/python", "scripts/generate-licences"
    system(*sync, "--no-editable")

    licences = libexec/Language::Python.site_packages(python)/"lltexturecache_browser_qt/assets/licences"
    cp "lltexturecache_browser_qt/assets/licences/index.json", licences

    bin.install_symlink libexec/"bin/lltexturecache-browser-qt"
  end

  test do
    system libexec/"bin/python", "-c", "import PySide6.QtWidgets"

    assert_path_exists libexec/Language::Python.site_packages(libexec/"bin/python")/
                       "lltexturecache_browser_qt/assets/licences/index.json"

    output = shell_output("#{libexec}/bin/python -c " \
                          "'from lltexturecache_browser_qt import __version__; print(__version__)'")
    assert_equal version.to_s, output.strip
  end
end
