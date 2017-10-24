module mod_two
    implicit none
contains
    subroutine two()
        use mod_three
        implicit none
        integer :: i
        call three()
    end subroutine two
end module mod_two
