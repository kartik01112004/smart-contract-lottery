## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## Checks, Effects and Interactions

## Better to emit events before Outside interactions

## CRON expressions

```
* * * * *	Every minute
0 * * * *	Every hour
0 0 * * *	Every day at 12:00 AM
0 0 * * FRI	At 12:00 AM, only on Friday
0 0 1 * *	At 12:00 AM, on day 1 of the month
```

## Tests!

1. write deploy script
   1. may not work on zkSync
2. write tests
   1. Local chain
   2. Forked testnet
   3. Forked mainnet

## Testing Events

Assert a specific log is emitted during the next call.

Call the cheat code, specifying whether we should check the first, second or third topic, and the log data (expectEmit() checks them all). Topic 0 is always checked.
Emit the event we are supposed to see during the next call.
Perform the call.
You can perform steps 1 and 2 multiple times to match a sequence of events in the next call.

If the event is not available in the current scope (e.g. if we are using an interface, or an external smart contract), we can define the event ourselves with an identical event signature.

There are 2 varieties of expectEmit:

Without checking the emitter address: Asserts the topics match without checking the emitting address.
With address: Asserts the topics match and that the emitting address matches.

check more about events : [foundry book](https://book.getfoundry.sh/cheatcodes/expect-emit?highlight=expectEmit#expectemit)

## Warp and Roll

these are foundry cheatcodes that provide ability to change the block timestamp and block number of the localy running blockchain for running tests

## Coverage report

`forge coverage --report debug`

use this to get better understanging of what has not been tested yet
