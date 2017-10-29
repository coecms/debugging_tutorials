module mod_fail
    implicit none
contains
    subroutine test_fail(n)
        !use ifcore
        integer, intent(in) :: n

        if (n == 34) then
            call backtrace
!            call abort
        end if
    end subroutine test_fail

end module mod_fail
