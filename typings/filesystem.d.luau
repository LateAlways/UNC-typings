type _function = (...any) -> (any, ...any)

declare function readfile(path: string): string
declare function listfiles(path: string): {string}
declare function writefile(path: string, data: string): ()
declare function makefolder(path: string): ()
declare function appendfile(path: string, data: string): ()
declare function isfile(path: string): boolean
declare function isfolder(path: string): boolean
declare function delfile(path: string): ()
declare function delfolder(path: string): ()
declare function loadfile(path: string, chunkname: string?): (_function?, string?)
declare function dofile(path: string): ()
    