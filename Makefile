.PHONY: all build build_tools gyp sync install

all: sync build_tools build uninstall install

build:
	-cmd.exe /C build_mozc.bat build -c Release package

build_tools:
	-cmd.exe /C build_mozc.bat build_tools -c Release

gyp:
	-cmd.exe /C build_mozc.bat gyp --msvs_version=2012 --noqt

sync:
	python depot_tool/gclient.py sync


target_dir_32=/cygdrive/c/Program\ Files\ \(x86\)/mozc
target_dir_64=/cygdrive/c/Program\ Files/mozc

install: 

	-mkdir $(target_dir_32)
	-cp src/out/Release/mozc_broker32.exe $(target_dir_32)
	-cp src/out/Release/mozc_cache_service.exe $(target_dir_32)
	-cp src/out/Release/mozc_renderer.exe $(target_dir_32)
	-cp src/out/Release/mozc_server.exe $(target_dir_32)
	-cp src/out/Release/mozc_tool.exe $(target_dir_32)
	-cp src/out/Release/mozc_ja.ime /cygdrive/c/Windows/System32/
	ls $(target_dir_32)
	$(target_dir_32)/mozc_broker32.exe --mode=register_ime

uninstall:
	$(target_dir_32)/mozc_broker32.exe --mode=unregister_ime

