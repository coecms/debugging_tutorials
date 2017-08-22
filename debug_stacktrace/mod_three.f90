module mod_three
    implicit none
contains
    subroutine three()
        implicit none
        open(unit=100, file='/nada', status='old', action='read')
    end subroutine three
end module mod_three
