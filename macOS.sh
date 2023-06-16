### 清除DNS缓存
clearDNSCache() {
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
}

### 关闭app隔离
removeAppLimit () {
  sudo xattr -r -d com.apple.quarantine $1
}

### 恢复Dock至默认大小
restoreDockSize () {
  defaults delete com.apple.dock tilesize
  killall Dock
} 

### 重建启动台图标
resetLaunchPad () {
  defaults write com.apple.dock ResetLaunchPad -bool true
  killall Dock
}

### 访问macOS壁纸
visitDesktopPictures () {
  open "/System/Library/Desktop Pictures"
}

### 隐藏文件夹
hideFolder () {
  chflags hidden $1
}

### 取消隐藏文件夹
cancelHideFolder () {
  chflags nohidden $1
}
