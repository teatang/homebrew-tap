cask "rt-tool" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "76123d7bfedf022158f3e35c5eabecc98fe6734e604ae6d7aa86af887a03f740",
         intel: "d330a36e690428b1a8c24e21003266b945150753be90f5bca8aa9fa33e6e0c22"

  url "https://github.com/teatang/rt-tool/releases/download/v#{version}/rt-tool-mac-#{arch}-v#{version}.dmg"
  name "RT Tool"
  desc "Developer toolkit desktop app built with Tauri"
  homepage "https://github.com/teatang/rt-tool"

  app "rt-tool.app"

  zap trash: [
    "~/.rt-tool",
    "~/Library/Application Support/com.teatang.rt-tool",
    "~/Library/Caches/com.teatang.rt-tool",
    "~/Library/Preferences/com.teatang.rt-tool.plist",
    "~/Library/Saved Application State/com.teatang.rt-tool.savedState",
  ]

  caveats <<~EOS
    由于应用暂未配置 Apple 开发者签名与公证，若首次打开提示“已损坏”或“无法验证开发者”，
    可使用 `brew install --cask --no-quarantine teatang/tap/rt-tool` 安装，
    或执行 `xattr -cr /Applications/rt-tool.app`。
  EOS
end