program cap
    use mod_capitalise, only : capitalise
    implicit none
    character(len=20) :: testString
    testString = "I am a teapot"

    print *, testString
    call capitalise(testString, 3)
    print *, testString
    call capitalise(testString, -21)
    print *, testString

end program cap
