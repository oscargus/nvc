# Generated by nvc 1.6-devel

lib/std/STD.STANDARD: $(top_srcdir)/lib/std/standard.vhd

lib/std/_STD.STANDARD.so: $(top_srcdir)/lib/std/standard.vhd

lib/std/_STD.STANDARD.vcode: $(top_srcdir)/lib/std/standard.vhd

lib/std/STD.TEXTIO-body: lib/nvc/NVC.POLYFILL lib/std/STD.STANDARD lib/std/STD.TEXTIO $(top_srcdir)/lib/std/textio-body.vhd

lib/std/_STD.TEXTIO.so: lib/nvc/NVC.POLYFILL lib/std/STD.STANDARD lib/std/STD.TEXTIO $(top_srcdir)/lib/std/textio-body.vhd

lib/std/_STD.TEXTIO.vcode: lib/nvc/NVC.POLYFILL lib/std/STD.STANDARD lib/std/STD.TEXTIO $(top_srcdir)/lib/std/textio-body.vhd

lib/std/STD.TEXTIO: lib/std/STD.STANDARD $(top_srcdir)/lib/std/textio.vhd

