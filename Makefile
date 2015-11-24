all: safestrat

safestrat: 
	@rm -rf tools/;
	@echo Creating tools/ directory...;
	@mkdir tools/;
	@echo Compiling...;
	@xcrun -sdk iphoneos clang --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk src/safestrat.c -arch armv7 -arch arm64 -framework IOKit -framework CoreFoundation -Wall -o tools/a_safestrat -miphoneos-version-min=6.0
	@echo Done.;

install:
	@scp -P ${P} tools/a_safestrat root@${IP}:/etc/rc.d/a_safestrat

