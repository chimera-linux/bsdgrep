#ifndef CDEFS_H
#define CDEFS_H

#define __FBSDID(x)

/* other compat bits */

extern char *__progname;

#define getprogname() __progname

#ifndef OFF_MAX
#define OFF_MAX UINT64_MAX
#endif

#define MAP_NOCORE 0
#define MAP_NOSYNC 0

#ifndef __DECONST
#include <stdint.h>
#define __DECONST(type, var) ((type)(uintptr_t)(const void *)(var))
#endif

#endif
