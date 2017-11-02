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

#endif
