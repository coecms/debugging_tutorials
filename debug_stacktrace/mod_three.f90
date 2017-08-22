module mod_three
    implicit none
contains
    subroutine three()
        implicit none
        call backtrace
        stop 1
    end subroutine three
end module mod_three
