module Internal = struct
  type 'a fn = 'a Callbag.t -> 'a Callbag.t
  external last: unit -> 'a fn = "callbag-last" [@@bs.module]
end

let last stream = Internal.last () stream
