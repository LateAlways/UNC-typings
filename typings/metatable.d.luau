type _function = (...any) -> (any, ...any)
type table = { [any]: any }

declare function getrawmetatable(object: Instance): table
declare function hookmetamethod(object: table, method: string, hook: _function): _function
declare function getnamecallmethod(): string
declare function isreadonly(object: table): boolean
declare function setrawmetatable(object: table, metatable: table): ()
declare function setreadonly(object: table, readonly: boolean): ()
    