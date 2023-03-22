import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk, Pango

class MainWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="Menu principal")
        self.set_border_width(10)
        self.set_default_size(400, 300)
        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.add(vbox)

        # En-tête "MENU PRINCIPAL" en gras
        header = Gtk.Label(label="MENU PRINCIPAL")
        header.modify_font(Pango.FontDescription("Sans Bold 20"))
        vbox.pack_start(header, False, False, 0)

        # Espacement de 5 lignes
        vbox.pack_start(Gtk.Label(), False, False, 30)

        # Options de menu avec sauts de ligne appropriés
        menu_items = [("Gestion de l'hôtel", self.gestion_hotel),
                      ("Chambres", self.chambres),
                      ("Clients", self.clients),
                      ("Réservations", self.reservations),
                      ("Factures", self.factures),
                      ("Statistiques", self.statistiques),
                      ("Quitter", Gtk.main_quit)]
        for label, callback in menu_items:
            menu_item = Gtk.Button(label=label)
            vbox.pack_start(Gtk.Label(), False, False, 5)
            menu_item.connect("clicked", callback)
            vbox.pack_start(menu_item, False, False, 0)

    # Fonctions appelées par les options de menu
    def gestion_hotel(self, button):
        print("Option de menu 'Gestion de l'hôtel' sélectionnée")
    def chambres(self, button):
        print("Option de menu 'Chambres' sélectionnée")
    def clients(self, button):
        print("Option de menu 'Clients' sélectionnée")
    def reservations(self, button):
        print("Option de menu 'Réservations' sélectionnée")
    def factures(self, button):
        print("Option de menu 'Factures' sélectionnée")
    def statistiques(self, button):
        print("Option de menu 'Statistiques' sélectionnée")

win = MainWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
