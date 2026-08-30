/*
 * sys/atomics.h legacy de bionic (NDK r10e). NDK r14b ya no lo incluye
 * para android-21 (fue eliminado de bionic). SexyAppFramework/Platform.h
 * lo incluye cuando NO es __aarch64__. Nada del arbol llega a usar los
 * simbolos (todo usa __sync_* de GCC), pero el fichero debe existir.
 * Reimplementacion inline con builtins de GCC 4.9 (api compatible).
 */
#ifndef _SYS_ATOMICS_H_
#define _SYS_ATOMICS_H_

#include <stdint.h>
#include <sys/cdefs.h>

__BEGIN_DECLS

static __inline__ int32_t
__atomic_cmpxchg(int32_t old, int32_t _new, volatile int32_t *ptr)
{
	return __sync_val_compare_and_swap(ptr, old, _new) == old ? 0 : 1;
}

static __inline__ int32_t
__atomic_swap(int32_t _new, volatile int32_t *ptr)
{
	return __sync_lock_test_and_set(ptr, _new);
}

static __inline__ int32_t
__atomic_inc(volatile int32_t *ptr)
{
	return __sync_fetch_and_add(ptr, 1);
}

static __inline__ int32_t
__atomic_dec(volatile int32_t *ptr)
{
	return __sync_fetch_and_add(ptr, -1);
}

static __inline__ int32_t
__atomic_add(volatile int32_t *ptr, int32_t value)
{
	return __sync_fetch_and_add(ptr, value);
}

static __inline__ int32_t
__atomic_sub(volatile int32_t *ptr, int32_t value)
{
	return __sync_fetch_and_sub(ptr, value);
}

static __inline__ int32_t
__atomic_and(volatile int32_t *ptr, int32_t value)
{
	return __sync_fetch_and_and(ptr, value);
}

static __inline__ int32_t
__atomic_or(volatile int32_t *ptr, int32_t value)
{
	return __sync_fetch_and_or(ptr, value);
}

__END_DECLS

#endif /* _SYS_ATOMICS_H_ */