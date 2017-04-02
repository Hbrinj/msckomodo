dnl Process this file with autoconf to produce a configure script.

AC_INIT(configure.ac)
AC_CANONICAL_SYSTEM
AM_INIT_AUTOMAKE(KMD, 1.5.0)
AM_CONFIG_HEADER(config.h) 
dnl CFLAGS=" -g -O0 $CFLAGS"
dnl AC_ISC_POSIX
AC_PROG_CC
AM_PROG_CC_STDC
AC_HEADER_STDC

dnl Checks for libraries.
AC_ARG_ENABLE(verbose,          [  --enable-verbose             Print out information while running], AC_DEFINE(VERBOSE_D, 1), AC_DEFINE(VERBOSE_D, 0))
AC_ARG_ENABLE(serial-debug,     [  --enable-serial-debug        Print out all transfers to the serial port], AC_DEFINE(SERIAL_DEBUG,1), AC_DEFINE(SERIAL_DEBUG,0))
AC_ARG_ENABLE(serial-port,      [  --enable-serial-port=path    Choose serial port path [Linux:/dev/ttyS0 SunOS:/dev/ttya]], AC_DEFINE_UNQUOTED(SERIAL_PORT,"$enableval"))
AC_ARG_ENABLE(serial-speed,     [  --enable-serial-speed=speed  Choose serial port speed [115200]], AC_DEFINE_UNQUOTED(SERIAL_PORT,"$enableval"))
AC_ARG_ENABLE(emulator,         [  --enable-emulator=emulator   Choose emulator program [jimulator]], AC_DEFINE_UNQUOTED(EMULATOR_PROG,"$enableval"))
AC_ARG_ENABLE(setup-dir,        [  --enable-setup-dir=path      Choose directory of the setup files[~]], AC_DEFINE_UNQUOTED(SETUP_DIR,"$enableval"))
AC_ARG_ENABLE(internal-setup,   [  --enable-internal-setup      By default use the .komodo file compiled in], AC_DEFINE(USE_INTERNAL,1)) 
AC_ARG_ENABLE(simple-interface, [  --enable-simple-interface    Make a simple interface], AC_DEFINE(SIMPLE_INTERFACE,1))
AC_ARG_ENABLE(gtk2,             [  --enable-gtk2                Compile with GTK+ 2.0], GTK2=1, GTK1=0)
AC_ARG_ENABLE(static,           [  --enable-static              Compile statically], LDFLAGS=-static) 
AC_ARG_ENABLE(wall,             [  --enable-wall                Compile giving all warnings], CFLAGS="-Wall") 

AC_DEFINE_UNQUOTED(DATE,"$(date +%d/%m/%Y)")
AC_DEFINE_UNQUOTED(YEAR,"$(date +%Y)")

PKG_CHECK_MODULES(GLIB, glib > 1.2.0)
PKG_CHECK_MODULES(GTK, gtk+ > 1.2.0)
dnl AM_PATH_GLIB_2_0(2.5.0)
    
dnl AM_PATH_GTK_3_0(3.22.0) 

    
dnl AC_CHECK_LIB(iberty, xexit, , 
dnl 	AC_MSG_ERROR(Cannot find IBERTY: Install Libiberty) )
dnl AC_CHECK_LIB(bfd, bfd_init, , 
dnl 	AC_MSG_ERROR(Cannot find BFD: Install Libbfd) )

case $target_os in
    linux*) AC_DEFINE(LINUX) ;;
    solaris*) AC_DEFINE(SUNOS) ;;
    sunos*) AC_DEFINE(SUNOS) ;;
esac

AC_OUTPUT([
Makefile
src/Makefile
src/Pixmaps/Makefile
])

