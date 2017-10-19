module mod_fib

    implicit none
contains

    recursive function fib(n) result(f)
        implicit none
        integer, intent(in) :: n
        integer :: f
!        integer :: a, b, i
        if ( n <= 2 ) then
            f = 1
        else
            f = fib(n-1) + fib(n-2)
!            a = 1
!            b = 1
!            do i = 3, n
!                f = a+b
!                a = b
!                b = f
!            end do
        end if
    end function fib

end module mod_fib
