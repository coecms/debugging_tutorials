#include "assertion.h"

module mod_modulo

    implicit none
contains

    subroutine my_mod(array, denominator, div_array)
        implicit none
        integer, intent(in) :: denominator
        integer, dimension(:), intent(inout) :: array
        integer, dimension(:), intent(out) :: div_array
        integer :: i

        div_array = 0

        do i = 1, size(array)
            do while ( array(i) > denominator )
                array(i) = array(i) - denominator
                div_array(i) = div_array(i) + 1
            end do
        end do

    end subroutine my_mod

end module mod_modulo
