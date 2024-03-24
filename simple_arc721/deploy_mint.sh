TOKEN_ID="{
    token_number: 0u128,
    collection_number : 0u128
}"

META_DATA="{
    part0: 140152554740597502496524452237299901250u128,
    part1: 133324194421918155921132289162654938981u128,
    part2: 93509703548909910993375653557521895508u128,
    part3: 147831289382731815962129268963868147712u128
}"


META_DATA="{
    part0: 926486828524740311412476438909675677499u128,
    part1: 301503907939145956502827265746222215780u128, 
    part2: 444377064046201321742523093058530150472u128,
    part3: 65138535737357741006690702210204267338426671u128
}"


META_DATA3="{
  part0: 141409150335801422661614604916974055529u128,
  part1: 150728207506821459466324305270560026470u128,
  part2: 68295339260259656623290905167398466169u128,
  part3: 1626874881299777320169215264084813067223107186u128
}"

META_DATA4="{
  part0: 67071076695897266103407469202885730658u128,
  part1: 143822454270464304483759572449217244213u128,
  part2: 152095238266526860543658138094332032868u128,
  part3: 127477818581022457062634099u128
}"

PRIVATEKEY=$1
APPNAME="simple_arc721"

cd .. && snarkos developer execute "${APPNAME}.aleo" "mint" "aleo1un2ns2xfja44dqnk6mnttkgsv5s0rtnqp8vyrwfd3wdfh7qm959s7mgrpv" "${TOKEN_ID}"  "${META_DATA}" --private-key "${PRIVATEKEY}" --query "https://api.explorer.aleo.org/v1" --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" --priority-fee 1000000  # > deploy_create_collection.txt
