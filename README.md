# RSA Key Generator

This tool randomly generates RSA key-pairs, outputing the public keys in PKCS#1 PEM-encoded format.

Instead of having the OpenSSH Public Key:

```shell
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDJA1KeubLZONqSlXza3JcGvdnN00U3p7zMGERpw5B9mkbiP+53aruSwkY8aP8JtAG8v22qEpeLDcZDo6ESp/ohV/CHQfGCwnMMTRpRyVFd/sO9qdt4/umOJmVP2sEyqvo5C32N8h7F0G85dvXf9Nw8l/bGzzAQ2wCx+N9PahXwxMTs+jF0/EmNanYjGxhl5SQPLOsoouzKcUhLN2jGfgLBQVeMkSeZl57UqNZx35iu6+llfzyqSmGBPPF5c2zTZNyxq1l6KnyrLthd+snqBqJIgcd1U3QTSML21aA1OvILIzf8VFwsY7vlx4uanI0/371QtpaUdmuMJtOPLgZnoeYHHhy383UrLciDCczXMpzyRHHM1k6riMTcBBEiLMdyGPO3+XrfDRmfVlPAf5YNtMHcXjq/A9SgaLRglBAV5B3D7Mc+orA9IDrtNEX5HebohYB0XpCTP9UP+lI5x3Kk8CZQT/+3RlK8ZMRRrQvP5S9Tdwcy60UrUPwW6PLD+kr077raTyHw8l4fNvkBv9sPgG+KNFzFf3k0Bb0nGYzf97vIVK2Z6Z1OQ/tS0xzld3GDaRDt8ultDoi9Dv1d6ZQ5jqZR6fPb7blu9O44yNLMeyYhjqbHRSOsMHMc9J5I5RH8/r24vv9QIDeZCPIyjlCH+8a9WssJm5DwtRZOCwAy5HIX+w== root@8be0e848d198
```

You get [Privacy Enhanced Mail (PEM)](https://en.wikipedia.org/wiki/Base64#Privacy-enhanced_mail) format:

```shell
-----BEGIN PUBLIC KEY-----
MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAyQNSnrmy2TjakpV82tyX
Br3ZzdNFN6e8zBhEacOQfZpG4j/ud2q7ksJGPGj/CbQBvL9tqhKXiw3GQ6OhEqf6
IVfwh0HxgsJzDE0aUclRXf7DvanbeP7pjiZlT9rBMqr6OQt9jfIexdBvOXb13/Tc
PJf2xs8wENsAsfjfT2oV8MTE7PoxdPxJjWp2IxsYZeUkDyzrKKLsynFISzdoxn4C
wUFXjJEnmZee1KjWcd+YruvpZX88qkphgTzxeXNs02TcsatZeip8qy7YXfrJ6gai
SIHHdVN0E0jC9tWgNTryCyM3/FRcLGO75ceLmpyNP9+9ULaWlHZrjCbTjy4GZ6Hm
Bx4ct/N1Ky3IgwnM1zKc8kRxzNZOq4jE3AQRIizHchjzt/l63w0Zn1ZTwH+WDbTB
3F46vwPUoGi0YJQQFeQdw+zHPqKwPSA67TRF+R3m6IWAdF6Qkz/VD/pSOcdypPAm
UE//t0ZSvGTEUa0Lz+UvU3cHMutFK1D8Fujyw/pK9O+62k8h8PJeHzb5Ab/bD4Bv
ijRcxX95NAW9JxmM3/e7yFStmemdTkP7UtMc5Xdxg2kQ7fLpbQ6IvQ79XemUOY6m
Uenz2+25bvTuOMjSzHsmIY6mx0UjrDBzHPSeSOUR/P69uL7/UCA3mQjyMo5Qh/vG
vVrLCZuQ8LUWTgsAMuRyF/sCAwEAAQ==
-----END PUBLIC KEY-----
```

## Purpose

The main purpose of this tool is to easily generate RSA key-pairs that can be used to validate the authenticity of a JWT token.
