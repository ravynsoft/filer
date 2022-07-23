APP=            Filer
SRCS=           filer-cocoa/FilemanDelegate.m \
                filer-cocoa/AppDelegate.m \
                filer-cocoa/AppController.m \
                filer-cocoa/PrefDelegate.m \
                filer-cocoa/main.m \
                filer-cocoa/FileSystemNode.m \
                filer-cocoa/FileSystemBrowserCell.m \
                filer-cocoa/PreviewViewController.m
MK_DEBUG_FILES= no
RESOURCES=
CFLAGS+=        -fobjc-arc -g -O2 -framework AppKit -framework Foundation 
LDFLAGS+=       -framework AppKit -framework Foundation -lobjc -lSystem

clean:
	rm -rf ${APP_DIR}

build: clean all
	mkdir -p ${APP_DIR}/Contents/Resources/English.lproj
	cp -fv NIB/*.nib ${APP_DIR}/Contents/Resources/English.lproj/

.include <rvn.app.mk>
