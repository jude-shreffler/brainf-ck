
    jude shreffler

    x = x / y

$0 = x
$1 = y
$2 = t0
$3 = t1
$4 = t2
$5 = t3

set x
+++++
set y
>++

while x != 0
<
[
    - x dec
    >>+ t0 inc
    << to x
]
>> to t0
while t0 != 0
[
    < to y
    while y != 0
    [
        - dec y
        >>+ inc t1
        >+ inc t2
        <<< goto y
    ]
    >>> goto t2
    while t2 != 0
    [
        - dec t2
        <<<+ inc y
        >>> goto t2
    ]
    < goto t1
    [
        >+ inc t2
        <<- dec t0
        while t0 != 0
        [
            - dec t0
            >>[-] set t2 to 0
            >+ inc t3
            <<< goto t0
        ]
        >>> goto t3
        while t3 != 0
        [
            - dec t3
            <<<+ inc t0
            >>> goto t3
        ]
        < goto t2
        while t2 != 0
        [
            <- dec t1
            while t1 != 0
            [
                [-] set t1 to 0
                <<<- dec x
                >>> goto t1
            ]
            + inc t1
            >- dec t2
        ]
        <- dec t1
    ]
    <<<+ inc x
    >> goto t0
]
<<++++++++++++++++++++++++++++++++++++++++++++++++ convert x to ascii
. out x
------------------------------------------------ convert x from ascii