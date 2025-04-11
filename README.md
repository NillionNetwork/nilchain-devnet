# nilchain-devnet

A preconfigured single node nilchain docker image to be used as a local devnet for testing purposes.

## Ports

The nilchain instance can be reached at the following ports:

| Protocol | Port  |
|----------|-------|
| JSON RPC | 26648 |
| gRPC     | 26649 |
| REST     | 26650 |

## Chain ID
`nillion-chain-devnet`

## Stash account

There's a single "stash" account that contains lots of funds using private key 
`97f49889fceed88a9cdddb16a161d13f6a12307c2b39163f3c3c397c3c2d2434`.

## Overriding configurations

Configurations can be overridden by using an environment variable named like:

```bash
NILCHAIND_${CONFIG_FILE_SECTION}_${VARIABLE}
```

For example, one can change the commit timeout by running the container like this:

```bash
docker run --rm -e NILCHAIND_CONSENSUS_TIMEOUT_COMMIT=200ms ghcr.io/nillionnetwork/nilchain-devnet:latest
```
