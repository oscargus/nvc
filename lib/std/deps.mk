# Generated by nvc 1.8-devel

lib/std/STD.STANDARD: $(top_srcdir)/lib/std/standard.vhd

lib/std/STD.TEXTIO-body: lib/std/STD.TEXTIO lib/std/STD.STANDARD lib/nvc/NVC.POLYFILL $(top_srcdir)/lib/std/textio-body.vhd

lib/std/STD.TEXTIO: lib/std/STD.STANDARD $(top_srcdir)/lib/std/textio.vhd

