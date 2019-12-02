open BsMocha
let describe, it = Mocha.(describe, it);;


describe "CallbagLast" (fun () -> begin
  it "should return a callbag with only the last value in it" (fun () -> begin
    let open CallbagBasics
    in
    let result =
      from_array [|1;2;3;4;5|]
      |> CallbagLast.last
      |> CallbagToArray.to_array
    in
    Assert.deep_equal result [|5|]
  end)
end)
