program master

    use mod_fail
    use mod_test

    implicit none

    call test_fail(3)

    call my_sub1(4)
    call my_sub1(32)

end program master
