module mod_three
    implicit none
contains
    subroutine three()
        use ifcore
        implicit none
        call tracebackqq
        call abort
    end subroutine three
end module mod_three
