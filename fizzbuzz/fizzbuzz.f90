program fizzbuzz
    implicit none
    integer :: i
    
    do i = 1, 20
        print*, output(i)
    end do
    
contains

    function output(n)
        integer, intent(in) :: n
        character(len=len('fizzbuzz')) :: output

        if (mod(n, 3) == 0) then
            output = 'fizz'
        else if (mod(n, 5) == 0) then
            output = 'buzz'
        else if (mod(n, 3) == 0 .and. mod(n, 5) == 0) then
            output = 'fizzbuzz'
        else
            write(output, '(I0)') n
        end if
    end function output

end program fizzbuzz

