type _function = (...any) -> (any, ...any)

declare class Connection
    Enabled: boolean
    ForeignState: boolean
    LuaConnection: boolean
    Function: _function?
    Thread: thread?

    function Fire(self, ...: any): ()
    function Defer(self, ...: any): ()
    function Disconnect(self): ()
    function Disable(self): ()
    function Enable(self): ()
end

declare function fireclickdetector(object: ClickDetector, distance: number?, event: ("MouseClick" | "RightMouseClick" | "MouseHoverEnter" | "MouseHoverLeave")?): ()
declare function getcallbackvalue(object: Instance, property: string): _function?
declare function getconnections(signal: RBXScriptSignal): {Connection}

declare function getcustomasset(path: string, noCache: boolean): string
declare function gethiddenproperty(object: Instance, property: string): (any, boolean)
declare function gethui(): Folder
declare function getinstances(): {Instance}
declare function getnilinstances(): {Instance}
declare function isscriptable(object: Instance, property: string): boolean
declare function sethiddenproperty(object: Instance, property: string, value: any): boolean
declare function setrbxclipboard(data: string): boolean
declare function setscriptable(object: Instance, property: string, value: boolean): boolean
