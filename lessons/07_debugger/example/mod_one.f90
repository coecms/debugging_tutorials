module mod_one
    implicit none
contains
    subroutine one_f(i)
        integer, intent(inout) :: i
        integer :: n
        do n = 1, 10
            i = mod((2 * i), 13)
        end do
    end subroutine one_f
    subroutine one_g(i)
        integer, intent(inout) :: i
        integer :: n
        n = 30
        call one_f(n)
        i = mod(n**i, 23)
    end subroutine one_g
    subroutine one_h(i)
        integer, intent(inout) :: i
        integer :: n, a(10)
        a = [ ( (i*n)**2, n=1, 10 ) ]
        i = sum(a)
    end subroutine one_h
end module mod_one


