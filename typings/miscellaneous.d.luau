type HttpRequest = {
    Url: string,
    Method: "GET" | "POST" | "PUT" | "PATCH",
    Body: string?,
    Headers: { [string]: string }?,
    Cookies: { [string]: string }?
}

type HttpResponse = {
    Body: string,
    StatusCode: number,
    StatusMessage: string,
    Success: boolean,
    Headers: { [string]: string }
}

type request = (options: HttpRequest) -> HttpResponse
declare request: request
declare http: {
    request: request
}
declare http_request: request

declare function identifyexecutor(): (string, string)
declare function getexecutorname(): (string, string)
declare function lz4compress(data: string): string
declare function lz4decompress(data: string, size: number): string
declare function messagebox(text: string, caption: string, flags: number): number
declare function queue_on_teleport(code: string): ()
declare function queueonteleport(code: string): ()
declare function setclipboard(text: string): ()
declare function toclipboard(text: string): ()
declare function setfpscap(fps: number): ()
