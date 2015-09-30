Overview
========

The [JMatPro software](http://www.sentesoftware.co.uk/jmatpro.aspx) is
devoted to the calculation of a wide range of materials properties for
multicomponent alloys used in industrial practice. The JMatPro API
allows you to incorporate some of its functionality into your own
applications. Version 1.0 provides [calculation modules](modules.htm)
for:

-   Stable and metastable phase equilibria
-   Physical and thermophysical properties
-   Room-temperature matrix mechanical properties
-   Solidification phases and properties
-   Time-temperature transformation (TTT) diagrams
-   Continuous cooling transformation (CCT) diagrams

Prerequisites
-------------

Before you can begin creating applications that use the JMatPro API, you
must first ensure that your development environment meets the
requirements listed below:

-   The API is written in C and requires that the Microsoft Visual
    Studio 2010 C/C++ runtime libraries are installed in your system.
    They can be obtained from the [Microsoft download
    centre](http://www.microsoft.com/en-gb/download/details.aspx?id=26999).
-   Supported operating systems include Microsoft Windows XP (with
    Service Pack 3), Vista (with Service Pack 2), 7, and 8.x. Linux and
    Mac OS X are not supported.
-   Also needed is a Sentinel protection key, along with a valid
    user license. To obtain a new license, or renew an existing one,
    please contact a [Sente Software
    representative](http://www.sentesoftware.co.uk/contact-us.aspx).

**Note**  If you wish to use an appropriate Sentinel key over a network,
or monitor the keys available on your machine, then you must also
install the Sentinel runtime drivers. This may be accomplished by using
the setup utility provided in the subdirectory `Sentinel` in the API
installation directory.

Compiling and running your application
--------------------------------------

-   To successfully compile an application that uses the JMatPro API in
    a 32/64-bit C/C++ development environment, you must ensure that the
    compiler can find the required header and library files. Two sets of
    library files are provided in the subdirectories `Lib/win32` and
    `Lib/x64` in the API installation directory. These should be used
    for 32-bit and 64-bit applications, respectively. The header files,
    on the other hand, are independent of the build architecture and are
    located in the subdirectory `Include` in the API
    installation directory.
-   At runtime, your application will need access to the JMatPro
    dynamic-link libraries (DLLs), configuration and database files, as
    well as the Sentinel protection key and its controller files. The
    required files can all be found in the subdirectories
    `Runtime/win32` (for 32-bit applications) and `Runtime/x64` (for
    64-bit applications) in the API installation directory. To
    successfully run the application, you should make sure that the
    Sentinel key is connected, the contents of `Runtime/win32` or
    `Runtime/x64` (depending on the desired build architecture) should
    be placed at the same level as your executable file, and the
    directory structure should be kept intact.

**Note**  For detailed examples illustrating how to set up and run
JMatPro API calculations, refer to the Microsoft Visual Studio 2010
solutions provided in the subdirectory `Samples` in the API installation
directory.
