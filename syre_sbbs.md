# Syre SBBS Integration

As stated on the [wiki page](https://github.com/BeamMW/beam/wiki/Secure-bulletin-board-system-(SBBS)):

> The main goal of a SBBS is to allow wallets to communicate with each other in a secure and asynchronous manner.

In short, a SBBS is a Secure Bulletin Board System which was originally designed for MimbleWimble in order for the transaction process to be as seamless as possible. A SBBS relies on encrypting messages with the receiver's public key and features 12-24 hour message pruning so that state size does not grow indefinitely.

Optimally all nodes on a blockchain network run a SBBS server in addition to the blockchain node, so integration within wallet software is ideal.

As the originators of the idea, the only current implementation is on [Beam](https://beam.mw), however the concept of an SBBS as a messaging mechanism should be possible to add on top of almost any blockchain.

## Syre SBBS Example

Alice wishes to send Bob a Syre invoice via SBBS.

1. Alice and Bob choose a channel on the SBBS.
2. Bob subscribes to the channel to watch all messages posted on it.
3. Alice creates a Syre invoice which is encrypted with Bob's public key.
4. Alice posts the Syre invoice as a message on the SBBS to the correct channel.
5. Bob receives the message and attempts to decrypt it.
6. Bob decrypts the message/invoice successfully.
7. Bob's wallet builds invoice UI based on Syre invoice data.
8. Bob fulfills the invoice. (may proceed further back-and-forth communication if done on MW-based blockchain prior to transaction being posted on-chain)
9. Transaction processes.
