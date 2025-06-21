type _function = (...any) -> (any, ...any)
type table = { [any]: any }
type userdata = table


declare function getgc(includeTables: boolean?): {_function | userdata | table}
declare function getgenv(): { [string]: any }
declare function getloadedmodules(excludeCores: boolean?): { ModuleScript }
declare function getrenv(): { [string]: any }
declare function getrunningscripts(): { LocalScript | ModuleScript }
declare function getscriptbytecode(script: LocalScript | ModuleScript): string
declare function dumpstring(script: LocalScript | ModuleScript): string
declare function getscriptclosure(script: LocalScript | ModuleScript): _function
declare function getscriptfunction(script: LocalScript | ModuleScript): _function
declare function getscripthash(script: LocalScript | ModuleScript): string
declare function getscripts(): { LocalScript | ModuleScript }
declare function getsenv(script: LocalScript | ModuleScript): { [string]: any }
declare function getthreadidentity(): number
declare function getidentity(): number
declare function getthreadcontext(): number
declare function setthreadidentity(identity: number): ()
declare function setidentity(identity: number): ()
declare function setthreadcontext(context: number): ()
    