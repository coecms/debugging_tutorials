#ifdef DEBUG

subroutine assertion(expr, note)
#ifdef __INTEL_COMPILER
    use ifcore
#endif
    implicit none
    logical, intent(in) :: expr
    character(len=*), intent(in) :: note
    if (expr) return
    print *, note
#ifdef __GFORTRAN__
    call backtrace
#elif defined __INTEL_COMPILER
    call tracebackqq
#endif
    call abort
end subroutine assertion

#endif
