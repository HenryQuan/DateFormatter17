```lldb
(lldb) po Locale.current
▿ en_AU (fixed)
  - identifier : "en_AU"
  - kind : "fixed"
```
```lldb
(lldb) po UIDevice.current.deviceDescription
"iPhone 14, 19 Oct 2023 at 12:43 pm"
```
```lldb
(lldb) po UIDevice.current.deviceDescription == "iPhone 14, 19 Oct 2023 at 12:43 pm"
false
```
There is a `0x202F` before pm which is not the usual space. However, this doesn't apply to iOS 16.
