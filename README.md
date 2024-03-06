# password-manager

This project is a password manager for the class of Introduction to Software Testing.

## Getting started

1. `make install`
2. `make run`

### Folder structure

- **crypto** (this is the password generator part, along with the encryption/decryption)
- **web** (this is the web part)
    - **accounts** (Holds the database for the accounts and allows the interaction of them)
    - **core** (Holds the rest of the program other than the accounts)
    - **templates** (Holds the HTML)
        - **accounts**
        - **core**
    - **__init__**
- **.env**
- **config.py**
- **manage.py**
- **Dockerfile**
- **README.md**
