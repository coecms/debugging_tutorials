program cap
    use mod_interweave, only : interweave
    implicit none
    character(len=20) :: testString

    call interweave('Hello', 'World', testString)
    print *, testString

    call interweave('This is a very long text','this is another long text',testString)
    print *, testString

end program cap
