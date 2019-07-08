#!/usr/bin/env bash

docker-compose exec openldap /bin/bash -c '/usr/bin/ldapadd -x -D "cn=admin,dc=example,dc=org" -w admin -f /tmp/user_mike.ldif -H ldap://openldap'
