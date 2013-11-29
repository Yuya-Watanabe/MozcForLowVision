build_tools:
	-cmd.exe /C build_mozc.bat build_tools -c Release

gyp:
	-cmd.exe /C build_mozc.bat gyp --msvs_version=2012 --noqt

sync:
	python depot_tool/gclient.py sync


