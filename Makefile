CC = x86_64-w64-mingw32-gcc
CFLAGS = -s -static -Wno-multichar -lntdll
SRCFILES = ZeusCommon.cpp ZeusCreateRemoteThreadProc.cpp ZeusMain.cpp ZeusNtCreateThreadEx.cpp ZeusQueueUserAPC.cpp ZeusRtlCreateUserThread.cpp ZeusSetWindowsHookEx.cpp
OUTPUT = zeus.exe

all: $(OUTPUT)

$(OUTPUT): ZeusMain.cpp
	$(CC) -o $(OUTPUT) $(SRCFILES) $(CFLAGS)

clean:
	rm -f $(OUTPUT)
