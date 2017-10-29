! This module provides a single subroutine, called test_fail
! with a single integer parameter n
! It crashes at a specific value of n
! 
!
! Please try to identify that number by running master (with -traceback)
! which number that is. Please do not look into this file.



























































































module mod_fail
    implicit none
contains
    subroutine test_fail(n)
        use ifcore
        integer, intent(in) :: n

        if (n == 34) then
            call tracebackqq
            call abort
        end if
    end subroutine test_fail

end module mod_fail
