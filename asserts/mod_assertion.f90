#ifdef DEBUG

module mod_assertion
    use iso_fortran_env, only: stderr => error_unit
    implicit none
    private :: stderr
contains
    subroutine assertion(expr, note)
        logical, intent(in) :: expr
        character(len=*), intent(in), optional :: note
        if (.not. expr) then
            if (present(note)) write(stderr, *) note
            call abort()
        end if
    end subroutine assertion
end module mod_assertion

#endif
