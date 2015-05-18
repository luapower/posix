
headers
-------
The list of headers were taken from Open Group (google POSIX headers).
Then the following were removed:
	scope mismatch:
		pwd.h (user/group based security outs)
		utmpx.h (utmp file, also way old school)
		sys/statvfs.h (filesystem stats)
	portability mismatch:
		pthread.h (we have a portable version in a separate package)
		dlfcn.h (nothing ffi.load can't do)
		float.h, math.h, complex.h, tgmath.h (use a portable math library)
		fenv.h, setjmp.h, stdarg.h (can't do)
		inttypes.h, stdint.h, stddef.h, sys/types.h (types)
		stdlib.h (only malloc useful, declared in glue)
		sys/utsname.h (ffi.os/arch/abi)
		assert.h
	portability / old school:
		ndbm.h (NDBM database) - not on Linux
		mqueue.h (POSIX message queues) - not on OSX
		stropts.h (STREAMS) - not on OSX
		aio.h (POSIX Async I/O - poor OS X support, uses signals, etc.)
			see http://blog.libtorrent.org/2012/10/asynchronous-disk-io/
		termios.h (terminals huh)
	old scbool:
		ctype.h, langinfo.h, locale.h, monetary.h, nl_types.h (locales are old school)
		iconv.h (charsets are old school too)
		sys/shm.h (sys/mman.h is better)
	algorithms, not OS:
		string.h, strings.h (strings)
		wchar.h, wctype.h (wide chars)
		fmtmsg.h (printf-like)
		ftw.h (file tree traversal)
		libgen.h (path manipulation)
		cpio.h, tar.h (file formats)
		regex.h (regexps)
		search.h (hash maps)
		glob.h, fnmatch.h, wordexp.h (shell expansions)
