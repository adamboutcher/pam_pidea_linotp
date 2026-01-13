#
#    pam_pidea_linotp - LinOTP PAM module modified for Privacyidea
#    Copyright (C) 2010 - 2017 KeyIdentity GmbH
#    Copyright (C) 2026        Adam Boutcher - IPPP, Durham University
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#     E-mail: adam.j.boutcher@durham.ac.uk
#

# Process this file with automake to create Makefile.in

MAINTAINERCLEANFILES = Makefile.in

AM_CFLAGS = -Wall -fPIC $(CURL_CFLAGS)
AM_LDFLAGS = -module -avoid-version

lib_LTLIBRARIES = pam_pidea_linotp.la

pam_pidea_linotp_la_SOURCES = pam_pidea_linotp.c zeromem.c
pam_pidea_linotp_la_LIBADD = $(OPENSSL_LIBS) $(CURL_LDADD) -ljansson


install:
	$(mkinstalldirs) $(DESTDIR)/$(libdir)/security
	$(INSTALL) $(top_builddir)/src/.libs/pam_pidea_linotp.so $(DESTDIR)/$(libdir)/security

uninstall:
	$(RM) $(DESTDIR)/$(libdir)/security/pam_pidea_linotp.so
	@ rmdir $(DESTDIR)/$(libdir)/security

