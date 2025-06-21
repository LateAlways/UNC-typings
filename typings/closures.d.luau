type _function = (...any) -> (any, ...any)

declare function checkcaller(): boolean

declare function clonefunction<T>(func: T): T

declare function getcallingscript(): BaseScript

declare function hookfunction<T>(func: T, hook: _function): T
declare function replaceclosure<T>(func: T, closure: _function): T

declare function iscclosure(func: _function): boolean

declare function islclosure(func: _function): boolean

declare function isexecutorclosure(func: _function): boolean
declare function checkclosure(func: _function): boolean
declare function isourclosure(func: _function): boolean

declare function loadstring(source: string, chunkname: string?): (_function?, string?)

declare function newcclosure<T>(func: T): T