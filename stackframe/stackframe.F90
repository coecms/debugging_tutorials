program stackframe

    implicit none
    integer :: n

    print*, "Enter a number"
    read*, n

    print '(I0, "! is ", I0)', n, fact(n)

contains

    recursive function fact(n) result (f)
        integer, intent(in) :: n
        integer :: f
        if (n == 1) then
            f = 1
        else
            f = n * fact(n-1)
        end if
        return
    end function fact

end program stackframe
