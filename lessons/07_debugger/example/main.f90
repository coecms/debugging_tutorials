program main
    use mod_one
    implicit none
    integer :: i
    i = 1
    call one_f(i)
    print *, i
    call one_g(i)
    print *, i
    call one_h(i)
    print *, i
end program main

