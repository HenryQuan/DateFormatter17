# DateFormatter17
A sample project for FB13287331.

## Description
There is a `0x202F` before pm which is not the usual space since a certain version of iOS 17. However, this doesn't apply to iOS 16. That byte destroyed the backend because it couldn't handle it.

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
