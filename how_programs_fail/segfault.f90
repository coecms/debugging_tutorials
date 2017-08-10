program segfault

  implicit none
  integer :: n(10), i
  integer :: ios, u

  open(newunit=u, file='data.txt', status='old', action='read', iostat=ios)
  if (ios /= 0) STOP "error opening file"
  i = 0
  do
    i = i + 1
    read(u, *, iostat=ios) n(i)
    if (ios /= 0) exit
  end do
  close(u)

  print*, sum(n)

end program segfault
