stashes:
	curl https://varajson.deno.dev/api.query.staking.validators.json | jq .[][0][] | jq -s > stashes.json

ls:
	payouts ls -w wss://rpc.vara.network --stashesFile stashes.json -e 84

collect:
	payouts collect -w wss://rpc.vara.network --stashesFile stashes.json -e 84 --suriFile key.txt
