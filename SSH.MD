## SSH

#### Key Generation

More information available [here](https://docs.github.com/en/enterprise/2.15/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

To generate a key (use ```ssh-keygen --help``` for help):
- Start the SSH agent in the background: ```eval $(ssh-agent s-)```;
- ```~ ssh-keygen -t <encryption-protocol> -b <bits> -C <comment>```;
- Select the output file and directory;
- Enter a passphrase.

> **WARNING**: It is important to choose a secure passphrase. Your key is only as secure as your passphrase is.

#### Import / Export

- Start the SSH agent in the background if it wasn't previously done: ```eval $(ssh-agent s-)```;
- Add the key to your local SSH agent: ```ssh-add <output_path>/<output_file>```;
- Add the key to your GitHub account:
  - Copy the public key to your clipboard: ```clip < <output_path>/<output_file>.pub```;
  - Navigate to your GitHub profile's settings;
  - In the user settings sidebar, click "SSH and GPG keys";
  - Click "New SSH key" or "Add SSH key";
  - Add a descriptive label for the SSH key title;
  - Paste the public key into the "key" field;
  - Click "Add SSH key";
  - Confirm the operation by entering your password.
  
> If the ```git clone``` operation doesn't work with an SSH URL, one can clone via a HTTPS URL and update the url with the following command (must be inside the repository): 
```git remote set-url origin git@github.com:[owner]/[repo].git```
  
<hr>

Return: [Table of Contents](./README.MD#TOC)
