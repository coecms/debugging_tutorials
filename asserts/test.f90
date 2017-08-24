#ifdef DEBUG
#define assert(expr, note) call assertion(expr, note)
#else
#define assert(expr, note) 
#endif

program test

#ifdef DEBUG
    use mod_assertion, only: assertion
#endif

    implicit none
    integer :: i
    integer :: n(10), a(5), b(2)
    equivalence (n(10), b(1)), (a(1), b(2))

    a(:) = 0

    do i = 1, 11
        assert(i <= size(n), 'index out of range')
        n(i) = i**2
        print*, i, n(i)
    end do

    print '(*(2X, I0))', n
    print '(*(2X, I0))', a

end program test
