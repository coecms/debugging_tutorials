#include "assertion.h"

module mod_interpolation
    implicit none
contains
    function interpolate(x_array, y_array, x) result(y)
        real, intent(in) :: x_array(:), y_array(:), x
        real :: y
        integer :: i
        assert(size(x_array) == size(y_array), 'arrays must have same size')
        assert(all(x_array(2:) - x_array(:size(x_array)-1) > 0), 'x_array must be increasing')
        if (x < x_array(1)) then
            y = y_array(1)
            return
        end if
        if (x > x_array(size(x_array))) then
            y = y_array(size(y_array))
            return
        end if
        do i = 1, size(x_array)
            if (x_array(i) > x) exit
        end do
        y = ((y_array(i-1) * (x_array(i) - x )) + &
             (y_array(i)   * (x - x_array(i-1)))) / &
             (x_array(i) - x_array(i - 1))
        return
    end function interpolate
end module mod_interpolation
