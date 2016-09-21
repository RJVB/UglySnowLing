* 20130212 RJVB
UglySnowLing, short for the Ugly Snow Leopardling is a framework that aims to add functionality from later
versions of the OS to Mac OS X 10.6 a.k.a. Snow Leopard.
For this it gathers open source implementations of said functionality from various projects.
The initial version added NSRegularExpression, ported from the GNUStep project.

This framework can be added to the frameworks used by code that you build yourself, but can of course
also be used to provide missing functions/symbols to existing applications, using DYLD_INSERT_LIBRARIES .
See:
http://tlrobinson.net/blog/2007/12/overriding-library-functions-in-mac-os-x-the-easy-way-dyld_insert_libraries/

NB: Requires port:icu from MacPorts, expected to be installed in /opt/local, for building AND for runtime use.
Evidently this must be a version built for OS X 10.6!

Used by my backport of the NSLogger facility:
http://bitbucket.org/RJVB/nslogger

