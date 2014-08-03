fu! Xx()
    let line=getline('.')
    let arguments=split(line, '(')
    let functionName=split(arguments[0],' ')
    let arguments=split(arguments[1],')')
    let commentStr=join(readfile('/home/lyndon/.vim/snippets/functionComments.vim'), "\n")
    let funName=functionName[ len(functionName) - 1 ]
    let commentLine=join(readfile('/home/lyndon/.vim/snippets/functionCommentLine.vim'), "")

    let funcArgs=''

    for arg in split(arguments[0], ',')

        let argInfo=split(arg,' ')

        if len(argInfo) == 1

            let FuncType=""
            let FuncName=argInfo[0]

        endif

        if len(argInfo) == 2

            let FuncType="(".argInfo[0].")"
            let FuncName=argInfo[1]

        endif

        if len(argInfo) == 3

            let FuncType=""
            let FuncName=argInfo[0]

        endif

        if len(argInfo) == 4

            let FuncType="(".argInfo[0].")"
            let FuncName=argInfo[1]

        endif

        let funcArgs.=printf(commentLine, "\n", FuncType, FuncName)

    endfor
    let funcDesc=" ".input('Enter Function Description: ')

    let @c=printf(commentStr, funName, funcDesc, funcArgs)
    put! c
    =?\/\*\*
endfu

"function dedw(FWE $few, Frger $few, $rrrrr, $fewfw, $fewe = 'dd')
nnoremap ;fc :call Xx()<cr>
