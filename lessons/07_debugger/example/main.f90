program main
    use iso_fortran_env
    use mod_fac
    use mod_fib
    implicit none
    integer :: n
    integer(kind=int64) :: fib_n, fac_n

    print *, "Please enter a number: "
    read *, n

    fac_n = fac(n)
    print*, "faculty of n is ", fac_n
    fib_n = fib(n)
    print*, "fib of n is ", fib_n

end program main