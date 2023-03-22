import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk, Pango

class MainWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="Information sur l'hôtel")
        self.set_border_width(10)
        self.set_default_size(400, 300)
        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.add(vbox)

        # En-tête "INFORMATION SUR L'HOTEL" en gras
        header = Gtk.Label(label="INFORMATION SUR L'HOTEL")
        header.modify_font(Pango.FontDescription("Sans Bold 20"))
        vbox.pack_start(header, False, False, 0)

        # Espacement de 5 lignes
        vbox.pack_start(Gtk.Label(), False, False, 30)

        # Options de menu avec sauts de ligne appropriés
        menu_items = [("Les infos", self.les_infos),
                      ("Modifier le nom de l'hôtel", self.modifier_nom),
                      ("Modifier les tarifs", self.modifier_tarifs),
                      ("Réinitialiser l'hôtel", self.reinitialiser),
                      ("Retour", Gtk.main_quit)]
        for label, callback in menu_items:
            menu_item = Gtk.Button(label=label)
            vbox.pack_start(Gtk.Label(), False, False, 5)
            menu_item.connect("clicked", callback)
            vbox.pack_start(menu_item, False, False, 0)

    # Fonctions appelées par les options de menu
    def les_infos(self, button):
        print("Option de menu 'Les infos' sélectionnée")
    def modifier_nom(self, button):
        print("Option de menu 'Modifier le nom de l'hôtel' sélectionnée")
    def modifier_tarifs(self, button):
        print("Option de menu 'Modifier les tarifs' sélectionnée")
    def reinitialiser(self, button):
        print("Option de menu 'Réinitialiser l'hôtel' sélectionnée")

win = MainWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
