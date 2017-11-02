#include "assertion.h"

module mod_interweave

    implicit none
contains
    subroutine interweave(texta, textb, textout)
        implicit none
        character(len=*), intent(in) :: texta, textb
        character(len=*), intent(out) :: textout
        logical :: a_smaller_b

        integer :: i, n, m

        textout = ""

        a_smaller_b = len_trim(texta) < len_trim(textb)
        if (a_smaller_b) then
            n = len_trim(texta)
            m = len_trim(textb)
        else
            n = len_trim(textb)
            m = len_trim(texta)
        end if

        do i = 1, n
            textout(2*i-1:2*i) = texta(i:i) // textb(i:i)
        end do

        if (n < m) then
            if (a_smaller_b) then
                do i = n+1, m
                    textout(2*i-1:2*i) = ' ' // textb(i:i)
                end do
            else
                do i = n+1, m
                    textout(2*i-1:2*i) = texta(i:i) // ' '
                end do
            end if
        end if

    end subroutine interweave
end module mod_interweave
