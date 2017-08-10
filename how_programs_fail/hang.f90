program hang

  implicit none
  integer :: s, n
  integer :: ios, u

  s = 0

  open(newunit=u, file='data.txt', status='old', action='read', iostat=ios)
  if (ios /= 0) STOP "error opening file"
  do
    read(u, *, iostat=ios) n
    s = s + n
  end do
  close(u)

  print*, s

end program hang
