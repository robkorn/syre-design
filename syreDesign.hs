-- For Ease Of Reading
type FulfillmentAddress = String
type SecretMessage = String
type Amount = Int

-- Extensions Will Probably Not Just Be Strings, But Good Enough For Now
type Extensions = [String]

-- Defining Currencies
data Currency = ADA | ETH | ETC | BTC | BCH

-- Abstracting Out Signing And Encrypting
data Signed a = Signed a
data Encrypted a = Encrypted a

-- Invoice Data
data InvoiceData = InvoiceData Amount SecretMessage FulfillmentAddress
data SignedInvoiceData = SignedInvoiceData InvoiceData (Signed InvoiceData)

-- Actual Invoices
data OnChainInvoice = OnChainInvoice InvoiceData Extensions
data OffChainInvoice = OffChainInvoice SignedInvoiceData Extensions

-- Encrypted Syre Invoice
data SyreInvoice = EncryptedOnChainInvoice (Encrypted OnChainInvoice) | EncryptedOffChainInvoice (Encrypted OffChainInvoice)

-- Multi Currency Syre Invoice
data MultiCurInvoice = MultiCurInvoice [(Currency, SyreInvoice)]
