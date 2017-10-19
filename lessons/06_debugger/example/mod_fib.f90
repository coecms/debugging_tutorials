module mod_fib

    implicit none
contains

    function fib(n)
        implicit none
        integer, intent(in) :: n
        integer :: fib
        integer :: a, b, i
        if ( n <= 2 ) then
            fib = 1
        else
            a = 1
            b = 1
            do i = 3, n
                fib = a+b
                a = b
                b = fib
            end do
        end if
    end function fib

end module mod_fib
