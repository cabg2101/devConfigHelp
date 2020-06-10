## Git

#### Forking

- On your GitHub profile, create a new barebone repository;
- Duplicate the original repo on your computer: ```git clone --bare https://github.com/<owner>/<repo>.git```;
- ```cd <repo>.git```;
- ```git push --mirror https://github.com/<your_username>/<repo>.git```
- ```cd ..```;
- ```rm -rf <repo>.git```;
- ```git clone https://github.com/<your_username>/<repo>.git```;
- ```cd <repo>```;
- ```git remote add public https://github.com/<owner>/<repo>.git```.

#### Examples

- Configuration:
  - [~/.gitconfig](./GIT/.gitconfig)

<hr>

Return: [Table of Contents](./README.MD#TOC)
