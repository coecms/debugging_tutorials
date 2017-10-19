program stackframe

    implicit none
    integer :: n, f

    print*, "Enter a number"
    read*, n

    f = fact(n)

    print '(I0, "! is ", I0)', n, f

contains

    recursive function fact(n) result (f)
        use ifcore, only: tracebackqq
        integer, intent(in) :: n
        integer :: f
        if (n == 1) then
            f = 1
            call tracebackqq
        else
            f = n * fact(n-1)
        end if
        return
    end function fact

end program stackframe
