declare class Drawing
    Visible: boolean
    Color: Color3
    Transparency: number
    ZIndex: number

    function Remove(self): ()
    function Destroy(self): ()
end
declare class Line extends Drawing
    Thickness: number
    From: Vector2
    To: Vector2
end
declare class Text extends Drawing
    Text: string
    TextBounds: Vector2
    Font: number
    Size: number
    Position: Vector2
    Center: boolean
    Outline: boolean
    OutlineColor: Color3
end
declare class Image extends Drawing
    Data: string
    Size: Vector2
    Position: Vector2
    Rounded: boolean
end
declare class Circle extends Drawing
    NumSides: number
    Radius: number
    Position: Vector2
    Thickness: number
    Filled: boolean
end
declare class Square extends Drawing
    Size: Vector2
    Position: Vector2
    Thickness: number
    Filled: boolean
end
declare class Quad extends Drawing
    PointA: Vector2
    PointB: Vector2
    PointC: Vector2
    PointD: Vector2
    Thickness: number
    Filled: boolean
end
declare class Triangle extends Drawing
    PointA: Vector2
    PointB: Vector2
    PointC: Vector2
    Thickness: number
    Filled: boolean
end

type Fonts = {
    UI: number,         -- 0
    System: number,     -- 1
    Plex: number,       -- 2
    Monospace: number   -- 3
}

type DrawingGlobal = {
    Fonts: Fonts,
    new: (type: "Line" | "Text" | "Image" | "Circle" | "Square" | "Quad" | "Triangle") -> Drawing | Line | Text | Image | Circle | Square | Quad | Triangle,
}

declare Drawing: DrawingGlobal
declare function cleardrawcache(): ()
declare function getrenderproperty(drawing: Drawing, property: string): any
declare function isrenderobj(object: any): boolean
declare function setrenderproperty(drawing: Drawing, property: string, value: any): ()
