# Generated by nvc 1.6-devel

lib/nvc/NVC.POLYFILL-body: lib/std/STD.STANDARD lib/nvc/NVC.POLYFILL $(top_srcdir)/lib/nvc/polyfill-body.vhd

lib/nvc/_NVC.POLYFILL.so: lib/std/STD.STANDARD lib/nvc/NVC.POLYFILL $(top_srcdir)/lib/nvc/polyfill-body.vhd

lib/nvc/_NVC.POLYFILL.vcode: lib/std/STD.STANDARD lib/nvc/NVC.POLYFILL $(top_srcdir)/lib/nvc/polyfill-body.vhd

lib/nvc/NVC.POLYFILL: lib/std/STD.STANDARD $(top_srcdir)/lib/nvc/polyfill.vhd

lib/nvc/NVC.SIM_PKG: lib/std/STD.STANDARD $(top_srcdir)/lib/nvc/sim_pkg.vhd

lib/nvc/_NVC.SIM_PKG.so: lib/std/STD.STANDARD $(top_srcdir)/lib/nvc/sim_pkg.vhd

lib/nvc/_NVC.SIM_PKG.vcode: lib/std/STD.STANDARD $(top_srcdir)/lib/nvc/sim_pkg.vhd

