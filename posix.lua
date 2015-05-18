
--POSIX ffi binding for Linux and OSX.
--Written by Cosmin Apreutesei. Public Domain.
--Ideas and constants from ljsyscall by Justin Cormack (MIT License).

local bit = require'bit'
local ffi = require'ffi'
require'posix_h'

local C = ffi.C
local M = {C = C}

--helpers --------------------------------------------------------------------

--compute bit OR'ing of a list flags 'flag1 flag2'. flags are uppercased,
--optionally prefixed, and looked up in the C namespace. anything
--that's not a letter, digit or underscore is a separator. nil turns to 0.
--you should pass all flag args through this function.
local cache = setmetatable({}, {__mode = 'kv'})
local type, bor = type, bit.bor
function fl(s, prefix)
	if s == nil or s == '' then return 0 end
	if type(s) ~= 'string' then return s end
	local x = cache[s]
	if x then return x end
	local x = 0
	prefix = prefix and prefix:upper()
	for flag in s:gmatch'[_%w]+' do --any separator works.
		local flag = flag:upper()
		local mask = C[flag] or prefix and C[prefix..flag]
		if not mask then
			error(string.format('invalid flag %s', flag), 2)
		end
		x = bor(x, flag)
	end
	cache[s] = x
	return x
end

--return value checker for functions that return a pointer
local errptr = ffi.cast('void*', -1)
local function retptr(ret, err)
	if ret == errptr then return nil, ffi.errno() end
	return ret
end

--return value checker for functions that return 0 for success
local function retbool(ret, err)
  if ret ~= 0 then return nil, ffi.errno() end
  return true
end

--sys/mman.h -----------------------------------------------------------------

function M.mmap(addr, len, prot, flags, fd, offset)
	return retptr(C.mmap(addr, len, fl(prot, 'PROT_'), fl(flags, 'MAP_'), fd, offset))
end
function M.munmap(addr, len) return retbool(C.munmap(addr, len)) end
function M.mlock(addr, len) return retbool(C.mlock(addr, len)) end
function M.munlock(addr, len) return retbool(C.munlock(addr, len)) end
function M.mlockall(flags) return retbool(C.mlockall(fl(flags, 'MCL_'))) end
function M.munlockall() return retbool(C.munlockall()) end
function M.mprotect(addr, len, prot) return retbool(C.mprotect(addr, len, fl(prot, 'PROT_'))) end
function M.msync(addr, len, flags) return retbool(C.msync(addr, len, fl(flags, 'MSYNC_'))) end
function M.shm_open(name, o, mode) return retbool(C.shm_open(name, fl(o, 'O_'), fl(mode, 'MODE_'))) end
function M.shm_unlink(name) return retbool(C.shm_unlink(name)) end

function M.madvise(addr, len, adv) return retbool(C.madvise(addr, len, fl(adv, 'MADV_'))) end

