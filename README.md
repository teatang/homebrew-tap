# homebrew-tap

Homebrew tap for teatang projects.

```sh
# 添加tap
brew tap teatang/tap

# 安装
brew install --cask rt-tool

# 由于应用暂未配置 Apple 开发者签名与公证，若首次打开提示“已损坏”或“无法验证开发者”，
# 可使用 `brew install --cask --no-quarantine teatang/tap/rt-tool` 安装，
# 或执行 `xattr -cr /Applications/rt-tool.app`。
brew install --cask --no-quarantine teatang/tap/rt-tool
```