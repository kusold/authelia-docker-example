# Authelia Docker-Compose Example

[Authelia](https://github.com/clems4ever/authelia) is an authentication server that supports 2FA and an LDAP backend to protect your applications.

The documentation for using Authelia with Traefik is fairly minimal and scattered throughout quite a few places. This is a minimal example for how to integrate the two.

## Setup
### /etc/hosts -- local testing only
Modify your `/etc/hosts` to contain:

```
127.0.0.1 auth.example.org
127.0.0.1 web.example.org
```
### docker
Start the containers.
```
docker-compose up -d
```
### openldap
We are going to create a user named `mike` with a password `insecure`.

```
./add_user.sh
```

## Test it out
Go to https://web.example.org . This should redirect you to https://auth.example.org. Enter `mike` and `insecure` into the login form and submit it. You should now see a JSON object that contains information about your request.

## Troubleshooting
### TLS Certificate Errors
Traefik is using a self-signed certificate that is generated on each startup. You should configure this differently for production.

