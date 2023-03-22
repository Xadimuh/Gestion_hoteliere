import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk, Pango

class MainWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="Les chambres")
        self.set_border_width(10)
        self.set_default_size(400, 300)
        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.add(vbox)

        # En-tête "LES CHAMBRES" en gras
        header = Gtk.Label(label="LES CHAMBRES")
        header.modify_font(Pango.FontDescription("Sans Bold 20"))
        vbox.pack_start(header, False, False, 0)

        # Espacement de 5 lignes
        vbox.pack_start(Gtk.Label(), False, False, 30)

        # Options de menu avec sauts de ligne appropriés
        menu_items = [("Liste des chambres", self.liste_chambres),
                      ("Liste des chambres occupées", self.liste_chambres_occupees),
                      ("Liste des chambres réservées", self.liste_chambres_reservees),
                      ("Modifier la classe d'une chambre", self.modifier_classe),
                      ("Chambres: Economiques\t\tRetour", Gtk.main_quit)]
        for label, callback in menu_items:
            menu_item = Gtk.Button(label=label)
            vbox.pack_start(Gtk.Label(), False, False, 5)
            menu_item.connect("clicked", callback)
            vbox.pack_start(menu_item, False, False, 0)

    # Fonctions appelées par les options de menu
    def liste_chambres(self, button):
        print("Option de menu 'Liste des chambres' sélectionnée")
    def liste_chambres_occupees(self, button):
        print("Option de menu 'Liste des chambres occupées' sélectionnée")
    def liste_chambres_reservees(self, button):
        print("Option de menu 'Liste des chambres réservées' sélectionnée")
    def modifier_classe(self, button):
        print("Option de menu 'Modifier la classe d'une chambre' sélectionnée")

win = MainWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
