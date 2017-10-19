module mod_fac

    implicit none
contains
    recursive function fac(n) result (f)
        implicit none
        integer, intent(in) :: n
        integer :: f
        if (n == 1) then
            f = 1
            return
        end if
        f = n * (fac(n-1))
        return
    end function fac

end module mod_fac
