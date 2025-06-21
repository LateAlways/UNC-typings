type Crypt = {
    base64encode: (data: string) -> string,
    base64decode: (data: string) -> string,
    base64: {
        encode: (data: string) -> string,
        decode: (data: string) -> string,
    },
    base64_encode: (data: string) -> string,
    base64_decode: (data: string) -> string,

    encrypt: (data: string, key: string, iv: string?, mode: "CBC" | "ECB" | "CTR" | "CFB" | "OFB" | "GCM") -> (string, string),
    decrypt: (data: string, key: string, iv: string?, mode: "CBC" | "ECB" | "CTR" | "CFB" | "OFB" | "GCM") -> string,

    generatebytes: (size: number) -> string,
    generatekey: () -> string,

    hash: (data: string, algorithm: "sha1" | "sha384" | "sha512" | "md5" | "sha256" | "sha3-224" | "sha3-256" | "sha3-512") -> string
}

type Base64 = {
    encode: (data: string) -> string,
    decode: (data: string) -> string,
}

declare crypt: Crypt
declare base64: Base64
declare function base64_encode(data: string): string
declare function base64_decode(data: string): string
    