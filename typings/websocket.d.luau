declare class Event
    function Connect(self, callback: (...any) -> ()): ()
    function Disconnect(self, callback: (...any) -> ()): ()
    function Fire(self, ...: any): ()
    function Wait(self): (...any)
    function IsConnected(self): boolean
    function Clear(self): ()
end

declare class WebSocket
    OnMessage: Event
    OnOpen: Event

    function Send(self,message: string): ()
    function Close(self): ()
end

type WebsocketGlobal = {
    connect: (url: string) -> WebSocket
}

declare WebSocket: WebsocketGlobal