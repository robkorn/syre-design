# Syre Design Docs

[Syre](https://syre.io) is a tokenless protocol designed to provide transaction surety and make sending cryptocurrencies worry-free. 

This repo holds design documents for [Syre](https://syre.io) so wallet developers and the curious individual can take a gander and obtain a better understanding.

### Relevant Docs

- [Syre Whitepaper](https://github.com/robkorn/syre-design/blob/master/syre-whitepaper.pdf)
- [Syre Haskell Mock Design](https://github.com/robkorn/syre-design/blob/master/syreDesign.hs)
- [Syre SBBS Integration](https://github.com/robkorn/syre-design/blob/master/syre_sbbs.md)

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