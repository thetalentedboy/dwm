# 打印菜单
call_menu() {
    echo ' set wallpaper'
    echo '艹 update statusbar'
}

# 执行菜单
execute_menu() {
    case $1 in
        ' set wallpaper')
            feh --randomize --bg-fill ~/Pictures/wallpaper/*.png
            ;;
        '艹 update statusbar')
            coproc ($DWM/statusbar/statusbar.sh updateall > /dev/null 2>&1)
            ;;
    esac
}

execute_menu "$(call_menu | rofi -dmenu -p "")"
