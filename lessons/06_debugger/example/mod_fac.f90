module mod_fac
    use iso_fortran_env
    implicit none
contains
    recursive function fac(n) result (f)
        implicit none
        integer, intent(in) :: n
        integer(kind=int64) :: f
        if (n == 1) then
            f = 1
            return
        end if
        f = n * (fac(n-1))
        return
    end function fac

end module mod_fac
