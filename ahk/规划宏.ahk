/*
匹配进程
*/
#HotIf WinActive("ahk_exe Dwarf Fortress.exe")

/*
定义常量
*/
SleepTime := 25

/*
四条：
上，左，左
回车，shfit+左，下，下，回车，shift+右
下，右
回车，shfit+下，右，右，回车，shift+上
右，上
回车，shfit+右，上，上，回车，shift+左
上，左
回车，shfit+上，左，左，回车，shift+下

中央：
左，上，上，上，左，左，左，回车，shfit+右，shift+下，回车

大四：
左，左，上，上，回车，shfit+右，shift+下，回车，shift+左，shift+上
左，六次，回车，shfit+左，shift+下，回车，shift+右，shift+上
上，六次，回车，shift+上，shfit+左，回车，shift+右，shift+下
右，六次，回车，shift+上，shfit+右，回车
*/

/*
固定开局，在3x3中心开启d
*/
^1:: {
    ; 上，左，左
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)

    ; 回车，shift+左，下，下，回车，shift+右
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Left}")
    Sleep(SleepTime)
    Send("{Down}")
    Sleep(SleepTime)
    Send("{Down}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Right}")
    Sleep(SleepTime)

    ; 下，右
    Send("{Down}")
    Sleep(SleepTime)
    Send("{Right}")
    Sleep(SleepTime)

    ; 回车，shift+下，右，右，回车，shift+上
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Down}")
    Sleep(SleepTime)
    Send("{Right}")
    Sleep(SleepTime)
    Send("{Right}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Up}")
    Sleep(SleepTime)

    ; 右，上
    Send("{Right}")
    Sleep(SleepTime)
    Send("{Up}")
    Sleep(SleepTime)

    ; 回车，shift+右，上，上，回车，shift+左
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Right}")
    Sleep(SleepTime)
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Left}")
    Sleep(SleepTime)

    ; 上，左
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)

    ; 回车，shift+上，左，左，回车，shift+下
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Up}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Down}")
    Sleep(SleepTime)

    ; 左，上，上，上，左，左，左，回车，shift+右，shift+下，回车
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Right}")
    Sleep(SleepTime)
    Send("+{Down}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)

    ; 左，左，上，上，回车，shift+右，shift+下，回车，shift+左，shift+上
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Left}")
    Sleep(SleepTime)
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Up}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Right}")
    Sleep(SleepTime)
    Send("+{Down}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Left}")
    Sleep(SleepTime)
    Send("+{Up}")
    Sleep(SleepTime)

    ; 左，六次，回车，shift+左，shift+下，回车，shift+右，shift+上
    loop 6 {
        Send("{Left}")
        Sleep(SleepTime)
    }
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Left}")
    Sleep(SleepTime)
    Send("+{Down}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Right}")
    Sleep(SleepTime)
    Send("+{Up}")
    Sleep(SleepTime)

    ; 上，六次，回车，shift+上，shift+左，回车，shift+右，shift+下
    loop 6 {
        Send("{Up}")
        Sleep(SleepTime)
    }
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Up}")
    Sleep(SleepTime)
    Send("+{Left}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Right}")
    Sleep(SleepTime)
    Send("+{Down}")
    Sleep(SleepTime)

    ; 右，六次，回车，shift+上，shift+右，回车
    loop 6 {
        Send("{Right}")
        Sleep(SleepTime)
    }
    Send("{Enter}")
    Sleep(SleepTime)
    Send("+{Up}")
    Sleep(SleepTime)
    Send("+{Right}")
    Sleep(SleepTime)
    Send("{Enter}")
    Sleep(SleepTime)
}

/*
后续建筑
*/
