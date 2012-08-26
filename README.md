Travis-ci status: [![Build Status](https://secure.travis-ci.org/jackl0phty/opschef-cookbook-bind-chroot.png?branch=master)](http://travis-ci.org/jackl0phty/bind-chroot)

DESCRIPTION
===========

This cookbook will install bind9, a DNS server, in a CHROOT jail environment.

If all you want is to install bind9 in a chroot jail environment then
simply apply the bind-chroot:chroot recipe against your node!

NOTE ABOUT LDAP BACKEND SUPPORT
===============================

The ultimate goal of this cookbook is to configure openldap as a backend
for bind9.  However, this is NOT working at this time!!!!

REQUIREMENTS
============

Apply the recipe bind-chroot::chroot if you just want to install bind9 in a chroot
jail environment.

ATTRIBUTES
==========

If you just want to install bind9 in a CHROOT jail environmment, which is 
all this cookbook support supports right now, then dont' worrry about any
attributes.
