import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

class MenuWindow(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Menu")

        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=8)
        self.add(vbox)

        label = Gtk.Label(label="LES CLIENTS")
        label.set_markup("<big><b>LES CLIENTS</b></big>")
        vbox.pack_start(label, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 7 sauts de lignes

        label = Gtk.Button(label="LISTE DES CLIENTS")
        vbox.pack_start(label, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 2 sauts de lignes

        label = Gtk.Button(label="LISTE DES CLIENTS QUI SORTENT AUJOURD'HUI")
        vbox.pack_start(label, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 2 sauts de lignes

        label = Gtk.Button(label="LISTE DES CLIENTS RESERVES")
        vbox.pack_start(label, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 2 sauts de lignes

        label = Gtk.Button(label="LISTE DES CLIENTS QUI SONT DANS L'HOTEL")
        vbox.pack_start(label, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 2 sauts de lignes

        button = Gtk.Button(label="SUPPRIMER CLIENTS")
        vbox.pack_start(button, True, True, 0)

        vbox.pack_start(Gtk.Label(), True, True, 0) # 2 sauts de lignes

        button = Gtk.Button(label="RETOUR")
        vbox.pack_start(button, True, True, 0)

win = MenuWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
