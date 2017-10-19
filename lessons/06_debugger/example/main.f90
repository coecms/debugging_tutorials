program main

    use mod_fac
    use mod_fib
    implicit none
    integer :: n

    print *, "Please enter a number: "
    read *, n

    print*, "faculty of n is ", fac(n)
    print*, "fib of n is ", fib(n)

end program main
