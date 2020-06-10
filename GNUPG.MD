## GnuPG

GNU Privacy Guard is a free-software cryptographic suite compliant with openPGP. It can come useful to verify the authenticity of packages obtained via third-party means, but also to verify your commits with Git. It reinforces security around contributions, ensuring to the repository owner and other contributors that the incoming modifications were performed by another allowed contributor.

#### Key Generation

More information available [here](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key).

Make sure both aliases (if available) return the same version with ```~ gpg --version``` and ```~ gpg2 --version```. If not, use the alias with the latest version.

To generate a key with full dialog:
- ```~ gpg --full-generate-key```;
  - For version 2.1.16 and below: ```~ gpg --default-new-key-algo rsa4096 --gen-key```.
- Select the encryption protocol (recommended (default): RSA and RSA);
- Select the key size (recommended: 4096-bit);
- Select the expiration date (this will vary depending on your maintenance needs);
- Confirm the operation;
- Enter your name (real name, user name, etc.);
- Enter your GitHub email address (**must be verified for the key to work**);
- Enter a comment (useful to manage multiple keys);
- Enter a passphrase (this will allow you to access restricted GnuPG operations and sign your commits).

> **WARNING**: It is important to choose a secure passphrase. Your key is only as secure as your passphrase is.

#### Import / Export

Export:
- ```~ gpg --list-secret-keys --keyid-format LONG```;
- Output:
```bash
sec   <protocol><size>/<pub_key_ID> <creation_date> [<usage_flags>]
      <long-pub-key-ID>
uid                 [<trust_level>] <username> (<comment>) <email_address>
ssb   <protocol><size>/<sub_key_ID> <creation_date> [<usage_flags>]
```
- To export the public key for copy/paste into [GitHub](https://github.com/settings/keys): ```~ gpg --armor --export <pub_key_ID>```;
- To export the public key for manual transfer: ```~ gpg --armor --export <pub_key_ID> > <directory>/gpgkey_pub.gpg```;
- To export the public key for automatic transfer (SSH): ```~ gpg --armor --export <pub_key_ID> | ssh <known_host> gpg --import```;
- To export the secret key for manual transfer ```~ gpg --armor --export-secret-key <pub_key_ID> > <directory>/gpgkey_sec.gpg```;
- To export the secret key for automatic transfer (SSH): ```~ gpg --armor --export-secret-key <pub_key_ID> | ssh <known_host> gpg --import --allow-secret-key-import```.

Import:
- To import public key (manually exported): ```~ gpg --import <directory>/gpgkey_pub.gpg```;
- To import public key (automatic transfer): ```~ ssh <known_host> gpg --armor --export <pub_key_ID> | gpg --import```;
- To import secret key (manually exported): ```~ gpg --import --allow-secret-key-import <directory>/gpgkey_sec.gpg```;
- To import public key (automatic transfer): ```~ ssh <known_host> gpg --armor --export-secret-key <pub_key_ID> | gpg --import --allow-secret-key-import```;
- To change trust level:
  - ```~ gpg --edit-key <pub_key_ID>```;
  - ```trust```;
  - Select trust level;
  - Confirm the operation;
  - ```quit```;

#### Revocation

If any device containing some of your secret keys is compromised, those keys should be revoked immediately. To do so:

- Generate a revocation certificate: ```~ gpg --armor --output <directory>/revoke.asc --gen-revoke <pub_key_ID>```;
- Send the certificate to the keyserver network: ```~ gpg --keyserver pool.sks-keyservers.net --send-key <pub_key_ID>```.

<hr>

#### Examples

- Configure GnuPG's passphrase display:
  - [~/.gnupg/gpg-agent.conf](./GNUPG/gpg-agent.conf)
  - [/etc/gnupg/gpgconf.conf](./GNUPG/gpgconf.conf)
  
#### References

- [A Git Horror Story: Repository Integrity with Signed Commits](https://mikegerwitz.com/2012/05/a-git-horror-story-repository-integrity-with-signed-commits)

<hr>

Return: [Table of Contents](./README.MD#TOC)
