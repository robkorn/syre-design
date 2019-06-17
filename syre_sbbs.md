# Syre SBBS Integration

As stated on the [wiki page](https://github.com/BeamMW/beam/wiki/Secure-bulletin-board-system-(SBBS)):

> The main goal of a SBBS is to allow wallets to communicate with each other in a secure and asynchronous manner.

In short, a SBBS is a Secure Bulletin Board System originally designed for MimbleWimble in order for the transaction process to be as seamless as possible. A SBBS relies on encrypting messages via the receiver's public key, and features 12-24 hour message pruning so that it not exponentially grow in size indefinitely.

Optimally all nodes on the network run a SBBS server in addition to the blockchain node, so integrating both within the wallet software is ideal.

As the originators of the idea, the only current implementation is on [Beam](https://beam.mw), however the concept of an SBBS as a messaging mechanism should be possible to add on top of almost any blockchain.

## Syre As A Messaging Schema In A SBBS
