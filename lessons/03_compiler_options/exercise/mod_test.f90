module mod_test
    use mod_fail
    implicit none
contains

    subroutine my_sub1(n)
        integer, intent(in) :: n
        call test_fail(n+1)
        call my_sub2(n+1)
        call my_sub2(2*n)
    end subroutine my_sub1

    subroutine my_sub2(n)
        integer, intent(in) :: n
        call test_fail(n+1)
        call test_fail(n+2)
        call test_fail(n*3+1)
    end subroutine my_sub2

end module mod_test
