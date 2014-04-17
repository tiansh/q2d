# QWERTY 2 Dvorak #

切换 QWERTY 布局为 Dvorak 布局

虽然 Windows 提供了 Dvorak 键盘布局，但是不支持同时打开输入法。<br />
Windows XP, Windows 7 中可以通过修改注册表让输入法使用 Dvorak 键盘布局，
但是这在 Windows 8 App 界面中无效。<br />
所以提供这个脚本以切换键盘布局。

如果以管理员权限运行该程序，程序可以作用于所有窗口。否则只会对非管理员权限的窗口生效。

因为使用了键盘钩子，可能会被一些杀软误报，请加入到白名单或自行编译。<br />
编译后需要手动用 Resource Hacker 替换 Suspend 时的图标。

Dvorak 状态时按住 LWin 键会临时切换为 QWERTY ，松开时切换回 Dvorak ；<br />
Dvorak 状态时连按两次 LWin 键会切换为 QWERTY ；<br />
QWERTY 状态是按 LWin 键会切换回 Dvorak。<br />
LWin 键和 Space 键组合时保持原意，其他时候请使用 RWin 代替。

## About ##

BSD License
