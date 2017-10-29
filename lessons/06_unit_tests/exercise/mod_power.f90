module mod_power

    implicit none
contains
    function is_power_of_two(n)
        integer, intent(in) :: n
        logical :: is_power_of_two
        is_power_of_two = (iand(n, n-1) == 0)
        return
    end function is_power_of_two

end module mod_power
