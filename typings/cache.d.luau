type CacheGlobal = {
    invalidate: (object: Instance) -> (),
    iscached: (object: Instance) -> boolean,
    replace: (object: Instance, newObject: Instance) -> (),
}

declare function cloneref(object: Instance): Instance
declare function compareinstances(a: Instance, b: Instance): boolean

declare cache: CacheGlobal
