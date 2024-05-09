#Requires AutoHotkey v2.0
#NoTrayIcon

;@Ahk2Exe-Set FileVersion, 1.0
;@Ahk2Exe-Set ProductVersion, 1.0.0.0
;@Ahk2Exe-Set CompanyName, Pikakid98

SetWorkingDir "C:\msys64"

MyGui := Gui()

FakeLink := MyGui.Add("Text", "", "Please select an option to launch MSYS2")

FakeLink := MyGui.Add("Text", "", "clang32")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch1)

FakeLink := MyGui.Add("Text", "", "clang64")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch2)

FakeLink := MyGui.Add("Text", "", "mingw32")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch3)

FakeLink := MyGui.Add("Text", "", "mingw64")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch4)

FakeLink := MyGui.Add("Text", "", "msys2")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch5)

FakeLink := MyGui.Add("Text", "", "ucrt64")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch6)

Launch1(*) {
    MyGui.Hide()

    for n, param in A_Args
    {
        RunWait "clang32.exe" " " '"' A_Args[1] '"'
    } else {
        RunWait "clang32.exe"
    }

    PID := ProcessWaitClose("mintty.exe")
}

Launch2(*) {
    MyGui.Hide()

    for n, param in A_Args
    {
        RunWait "clang64.exe" " " '"' A_Args[1] '"'
    } else {
        RunWait "clang64.exe"
    }

    PID := ProcessWaitClose("mintty.exe")
}

Launch3(*) {
    MyGui.Hide()

    for n, param in A_Args
    {
        RunWait "mingw32.exe" " " '"' A_Args[1] '"'
    } else {
        RunWait "mingw32.exe"
    }

    PID := ProcessWaitClose("mintty.exe")
}

Launch4(*) {
    MyGui.Hide()

    for n, param in A_Args
    {
        RunWait "mingw64.exe" " " '"' A_Args[1] '"'
    } else {
        RunWait "mingw64.exe"
    }

    PID := ProcessWaitClose("mintty.exe")
}

Launch5(*) {
    MyGui.Hide()

    for n, param in A_Args
    {
        RunWait "msys2.exe" " " '"' A_Args[1] '"'
    } else {
        RunWait "msys2.exe"
    }

    PID := ProcessWaitClose("mintty.exe")
}

Launch6(*) {
    MyGui.Hide()

        for n, param in A_Args
    {
        RunWait "ucrt64.exe" " " '"' A_Args[1] '"'
    } else {
        RunWait "ucrt64.exe"
    }

    PID := ProcessWaitClose("mintty.exe")
}

MyGui.Show()