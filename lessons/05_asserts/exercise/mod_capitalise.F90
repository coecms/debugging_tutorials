#include "assertion.h"

module mod_capitalise

    implicit none
contains
    subroutine capitalise(text, element)
        implicit none
        character(len=*), intent(inout) :: text
        integer, intent(in) :: element
        assert(element >= 1, "element is negative")
        assert(element <= len(text), "element is too large")
        select case (ichar(text(element:element)))
        case (ichar('a'):ichar('z'))
            text(element:element) = achar(ichar(text(element:element)) + &
                            (ichar('A') - ichar('a')))
        case default
        end select
    end subroutine capitalise

end module mod_capitalise
