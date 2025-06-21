type _function = (...any) -> (any, ...any)

type DebugInfo = {
    source: string,
    short_src: string,
    func: _function,
    what: string,
    currentline: number,
    name: string,
    nups: number,
    numparams: number,
    is_vararg: number,
}

type Debug = {
    getconstant: (func: _function | number, index: number) -> any,
    getconstants: (func: _function | number) -> {any},

    getinfo: (func: _function | number) -> DebugInfo,

    getproto: (func: _function | number, index: number, active: boolean?) -> _function | {_function},
    getprotos: (func: _function | number) -> {_function},

    getstack: (level: number, index: number?) -> any | {any},

    getupvalue: (func: _function | number, index: number) -> any,
    getupvalues: (func: _function | number) -> {any},

    setconstant: (func: _function | number, index: number, value: any) -> (),
    setstack: (level: number, index: number, value: any) -> (),
    setupvalue: (func: _function | number, index: number, value: any) -> (),
}

declare debug: Debug