DESCRIPTION
===========

This cookbook will install bind9, a DNS server, in a CHROOT jail environment.

If all you want is to install bind9 in a chroot jail environment then
simply apply the bind-chroot:chroot recipe against your node!

NOTE ABOUT SUPPORTED PLATFORMS
==============================

I've only tested this on the latest version of Debian stable.

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
all this cookbook supports right now, then dont' worrry about any
attributes.
