#ifndef ASSERTION

#ifdef DEBUG

subroutine assertion(expr, note)
    use ifcore
    implicit none
    logical, intent(in) :: expr
    character(len=*), intent(in) :: note
    if (expr) return
    print *, note
    call tracebackqq
    call abort
end subroutine assertion

#define assert(expr, note) call assertion(expr, note)
#else
#define assert(expr, note)
#endif

#define ASSERTION
#endif
