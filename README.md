# Syre Design Docs

[Syre](https://syre.io) is a tokenless protocol designed to provide transaction surety and make sending cryptocurrencies worry-free.

This repo holds design documents for [Syre](https://syre.io) so wallet developers and the curious individual can take a gander and obtain a better understanding.

Please read through the [`Syre Whitepaper`](https://github.com/robkorn/syre-design/blob/master/syre-whitepaper.pdf) first so you have general context on what Syre is. [(Backup Link For Whitepaper On Arweave)](https://arweave.net/isjLutfqTrbpMHAvUCJX3RTP1Am-sl2HhE-2nRKToHE)

Currently a mock-implementation of Syre Invoices via types in Haskell is available in [`syreDesign.hs`](https://github.com/robkorn/syre-design/blob/master/syreDesign.hs). It shows how invoice data, on + off-chain invoices, and multi-currency invoices could be represented within Haskell's type system. 

As a small teaser, here is how multi currency invoices look:

```haskell
data MultiCurInvoice = MultiCurInvoice [(Currency, SyreInvoice)]

```

An alternative way to view the same data type in a manner many more individuals will be familiar with would be:

```json
[

    {
    currency: "ADA",
    encryptedSyreInvoice: "..."
    },
    
    {
    currency: "ETH",
    encryptedSyreInvoice: "..."
    }

]
```

In the future more examples of implementation (both mock and working) in various languages will be available with hard-set standards coming about once the first implementations come to life.