import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

class MenuWindow(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Menu")

        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=8)
        self.add(vbox)

        label = Gtk.Label(label="LES RESERVATIONS")
        label.set_markup("<big><b>LES RESERVATIONS</b></big>")
        vbox.pack_start(label, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 7 sauts de lignes

        label = Gtk.Button(label="LISTE DES RESERVATIONS")
        vbox.pack_start(label, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 2 sauts de lignes

        button = Gtk.Button(label="ANNULER UNE RESERVATION")
        vbox.pack_start(button, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 2 sauts de lignes

        button = Gtk.Button(label="AJOUTER UNE RESERVATION")
        vbox.pack_start(button, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 2 sauts de lignes

        button = Gtk.Button(label="RETOUR")
        vbox.pack_start(button, True, True, 0)

win = MenuWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
