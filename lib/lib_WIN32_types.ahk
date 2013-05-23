    Win32.types := {}
    Win32.types["boolean"]              := { size: 1 }
    Win32.types["byte"]                 := { size: 1 }
    Win32.types["char"]                 := { size: 1, type: "Str"  }
    Win32.types["uchar"]                := { size: 1, type: "Str"  }
    Win32.types["atom"]                 := { size: 2 }
    Win32.types["langid"]               := { size: 2 }
    Win32.types["short"]                := { size: 2 }
    Win32.types["ushort"]               := { size: 2 }
    Win32.types["wchar"]                := { size: 2, type: "Str" }
    Win32.types["word"]                 := { size: 2 }
    Win32.types["bool"]                 := { size: 4 }
    Win32.types["colorref"]             := { size: 4 }
    Win32.types["dword"]                := { size: 4 }
    Win32.types["dword32"]              := { size: 4 }
    Win32.types["float"]                := { size: 4 }
    Win32.types["hfile"]                := { size: 4 }
    Win32.types["hresult"]              := { size: 4 }
    Win32.types["int"]                  := { size: 4 }
    Win32.types["int32"]                := { size: 4 }
    Win32.types["lcid"]                 := { size: 4 }
    Win32.types["lctype"]               := { size: 4 }
    Win32.types["lgrpid"]               := { size: 4 }
    Win32.types["long"]                 := { size: 4 }
    Win32.types["long32"]               := { size: 4 }
    Win32.types["lresult"]              := { size: 4 }
    Win32.types["uint"]                 := { size: 4 }
    Win32.types["uint32"]               := { size: 4 }
    Win32.types["ulong"]                := { size: 4 }
    Win32.types["ulong32"]              := { size: 4 }
    Win32.types["double"]               := { size: 8 }
    Win32.types["dword64"]              := { size: 8 }
    Win32.types["dwordlong"]            := { size: 8 }
    Win32.types["int64"]                := { size: 8 }
    Win32.types["long64"]               := { size: 8 }
    Win32.types["longlong"]             := { size: 8 }
    Win32.types["uint64"]               := { size: 8 }
    Win32.types["ulong64"]              := { size: 8 }
    Win32.types["ulonglong"]            := { size: 8 }
    Win32.types["usn"]                  := { size: 8 }
    Win32.types["int64"]                := { size: 8 }
    Win32.types["__int64"]              := { size: 8 }
    Win32.types["dword_ptr"]            := { size: A_PtrSize }
    Win32.types["haccel"]               := { size: A_PtrSize }
    Win32.types["handle"]               := { size: A_PtrSize }
    Win32.types["hbitmap"]              := { size: A_PtrSize }
    Win32.types["hbrush"]               := { size: A_PtrSize }
    Win32.types["hcolorspace"]          := { size: A_PtrSize }
    Win32.types["hconv"]                := { size: A_PtrSize }
    Win32.types["hconvlist"]            := { size: A_PtrSize }
    Win32.types["hcursor"]              := { size: A_PtrSize }
    Win32.types["hdc"]                  := { size: A_PtrSize }
    Win32.types["hddedata"]             := { size: A_PtrSize }
    Win32.types["hdesk"]                := { size: A_PtrSize }
    Win32.types["hdrop"]                := { size: A_PtrSize }
    Win32.types["hdwp"]                 := { size: A_PtrSize }
    Win32.types["henhmetafile"]         := { size: A_PtrSize }
    Win32.types["hfont"]                := { size: A_PtrSize }
    Win32.types["hgdiobj"]              := { size: A_PtrSize }
    Win32.types["hglobal"]              := { size: A_PtrSize }
    Win32.types["hhook"]                := { size: A_PtrSize }
    Win32.types["hicon"]                := { size: A_PtrSize }
    Win32.types["hinstance"]            := { size: A_PtrSize }
    Win32.types["hkey"]                 := { size: A_PtrSize }
    Win32.types["hkl"]                  := { size: A_PtrSize }
    Win32.types["hlocal"]               := { size: A_PtrSize }
    Win32.types["hmenu"]                := { size: A_PtrSize }
    Win32.types["hmetafile"]            := { size: A_PtrSize }
    Win32.types["hmodule"]              := { size: A_PtrSize }
    Win32.types["hmonitor"]             := { size: A_PtrSize }
    Win32.types["hpalette"]             := { size: A_PtrSize }
    Win32.types["hpen"]                 := { size: A_PtrSize }
    Win32.types["hrgn"]                 := { size: A_PtrSize }
    Win32.types["hrsrc"]                := { size: A_PtrSize }
    Win32.types["hsz"]                  := { size: A_PtrSize }
    Win32.types["hwinsta"]              := { size: A_PtrSize }
    Win32.types["hwnd"]                 := { size: A_PtrSize }
    Win32.types["int_ptr"]              := { size: A_PtrSize }
    Win32.types["long_ptr"]             := { size: A_PtrSize }
    Win32.types["lparam"]               := { size: A_PtrSize }
    Win32.types["lpbool"]               := { size: A_PtrSize }
    Win32.types["lpbyte"]               := { size: A_PtrSize }
    Win32.types["lpcolorref"]           := { size: A_PtrSize }
    Win32.types["lpcstr"]               := { size: A_PtrSize }
    Win32.types["lpctstr"]              := { size: A_PtrSize }
    Win32.types["lpcvoid"]              := { size: A_PtrSize }
    Win32.types["lpcwstr"]              := { size: A_PtrSize }
    Win32.types["lpdword"]              := { size: A_PtrSize }
    Win32.types["lphandle"]             := { size: A_PtrSize }
    Win32.types["lpint"]                := { size: A_PtrSize }
    Win32.types["lplong"]               := { size: A_PtrSize }
    Win32.types["lpstr"]                := { size: A_PtrSize }
    Win32.types["lptstr"]               := { size: A_PtrSize }
    Win32.types["lpvoid"]               := { size: A_PtrSize }
    Win32.types["lpword"]               := { size: A_PtrSize }
    Win32.types["lpwstr"]               := { size: A_PtrSize }
    Win32.types["pbool"]                := { size: A_PtrSize }
    Win32.types["pboolean"]             := { size: A_PtrSize }
    Win32.types["pbyte"]                := { size: A_PtrSize }
    Win32.types["pchar"]                := { size: A_PtrSize }
    Win32.types["pcstr"]                := { size: A_PtrSize }
    Win32.types["pctstr"]               := { size: A_PtrSize }
    Win32.types["pcwstr"]               := { size: A_PtrSize }
    Win32.types["pdword"]               := { size: A_PtrSize }
    Win32.types["pdword32"]             := { size: A_PtrSize }
    Win32.types["pdword64"]             := { size: A_PtrSize }
    Win32.types["pdwordlong"]           := { size: A_PtrSize }
    Win32.types["pdword_ptr"]           := { size: A_PtrSize }
    Win32.types["pfloat"]               := { size: A_PtrSize }
    Win32.types["phalf_ptr"]            := { size: A_PtrSize }
    Win32.types["phandle"]              := { size: A_PtrSize }
    Win32.types["phkey"]                := { size: A_PtrSize }
    Win32.types["pint"]                 := { size: A_PtrSize }
    Win32.types["pint32"]               := { size: A_PtrSize }
    Win32.types["pint64"]               := { size: A_PtrSize }
    Win32.types["pint_ptr"]             := { size: A_PtrSize }
    Win32.types["plcid"]                := { size: A_PtrSize }
    Win32.types["plong"]                := { size: A_PtrSize }
    Win32.types["plong32"]              := { size: A_PtrSize }
    Win32.types["plong64"]              := { size: A_PtrSize }
    Win32.types["plonglong"]            := { size: A_PtrSize }
    Win32.types["plong_ptr"]            := { size: A_PtrSize }
    Win32.types["pointer_32"]           := { size: A_PtrSize }
    Win32.types["pointer_64"]           := { size: A_PtrSize }
    Win32.types["pointer_signed"]       := { size: A_PtrSize }
    Win32.types["pointer_unsigned"]     := { size: A_PtrSize }
    Win32.types["pshort"]               := { size: A_PtrSize }
    Win32.types["psize_t"]              := { size: A_PtrSize }
    Win32.types["pssize_t"]             := { size: A_PtrSize }
    Win32.types["pstr"]                 := { size: A_PtrSize }
    Win32.types["ptbyte"]               := { size: A_PtrSize }
    Win32.types["ptchar"]               := { size: A_PtrSize }
    Win32.types["ptr"]                  := { size: A_PtrSize }
    Win32.types["ptstr"]                := { size: A_PtrSize }
    Win32.types["puchar"]               := { size: A_PtrSize }
    Win32.types["puhalf_ptr"]           := { size: A_PtrSize }
    Win32.types["puint"]                := { size: A_PtrSize }
    Win32.types["puint32"]              := { size: A_PtrSize }
    Win32.types["puint64"]              := { size: A_PtrSize }
    Win32.types["puint_ptr"]            := { size: A_PtrSize }
    Win32.types["pulong"]               := { size: A_PtrSize }
    Win32.types["pulong32"]             := { size: A_PtrSize }
    Win32.types["pulong64"]             := { size: A_PtrSize }
    Win32.types["pulonglong"]           := { size: A_PtrSize }
    Win32.types["pulong_ptr"]           := { size: A_PtrSize }
    Win32.types["pushort"]              := { size: A_PtrSize }
    Win32.types["pvoid"]                := { size: A_PtrSize }
    Win32.types["pwchar"]               := { size: A_PtrSize }
    Win32.types["pword"]                := { size: A_PtrSize }
    Win32.types["pwstr"]                := { size: A_PtrSize }
    Win32.types["sc_handle"]            := { size: A_PtrSize }
    Win32.types["sc_lock"]              := { size: A_PtrSize }
    Win32.types["service_status_handle"]:= { size: A_PtrSize }
    Win32.types["size_t"]               := { size: A_PtrSize }
    Win32.types["ssize_t"]              := { size: A_PtrSize }
    Win32.types["uint_ptr"]             := { size: A_PtrSize }
    Win32.types["ulong_ptr"]            := { size: A_PtrSize }
    Win32.types["uptr"]                 := { size: A_PtrSize }
    Win32.types["void"]                 := { size: A_PtrSize }
    Win32.types["wparam"]               := { size: A_PtrSize }
    Win32.types["tbyte"]                := { size: A_IsUnicode    ? 2 : 1 }
    Win32.types["tchar"]                := { size: A_IsUnicode    ? 2 : 1, type: "Str"  }
    Win32.types["half_ptr"]             := { size: A_PtrSize == 8 ? 4 : 2 }
    Win32.types["uhalf_ptr"]            := { size: A_PtrSize == 8 ? 4 : 2 }
