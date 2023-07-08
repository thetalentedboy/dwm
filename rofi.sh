# 打印菜单
call_menu() {
    echo ' set wallpaper'
    echo ' start v2rayA'
    echo ' stop v2rayA'
}

# 执行菜单
execute_menu() {
    case $1 in
        ' set wallpaper')
            feh --randomize --bg-fill ~/Picture/wallhaven-*.*
            ;;
        ' start v2rayA')
            echo '200925' | sudo -S systemctl start v2raya.service
            ;;
        ' stop v2rayA')
            echo '200925' | sudo -S systemctl stop v2raya.service
            ;;
        


    esac
}

execute_menu "$(call_menu | rofi -dmenu -p "")"
