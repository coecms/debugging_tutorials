#ifdef DEBUG
#define assert(expr, note) call assertion(expr, note)
#else
#define assert(expr, note)
#endif
