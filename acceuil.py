import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

class LoginForm(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Formulaire d'authentification")

        # Création de la boîte principale
        box = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.add(box)

        # Création de la boîte horizontale pour le champ de login
        login_box = Gtk.Box(orientation=Gtk.Orientation.HORIZONTAL, spacing=10)
        login_label = Gtk.Label("Login")
        login_field = Gtk.Entry()
        login_box.pack_start(login_label, False, False, 0)
        login_box.pack_end(login_field, True, True, 0)
        box.pack_start(login_box, True, True, 0)

        # Création de la boîte horizontale pour le champ de mot de passe
        password_box = Gtk.Box(orientation=Gtk.Orientation.HORIZONTAL, spacing=10)
        password_label = Gtk.Label("Mot de passe")
        password_field = Gtk.Entry()
        password_field.set_visibility(False)
        password_box.pack_start(password_label, False, False, 0)
        password_box.pack_end(password_field, True, True, 0)
        box.pack_start(password_box, True, True, 0)

        # Création du bouton de connexion
        login_button = Gtk.Button(label="Se connecter")
        login_button.connect("clicked", self.on_login_clicked)
        box.pack_start(login_button, True, True, 0)

    def on_login_clicked(self, button):
        # Code à exécuter lorsque le bouton de connexion est cliqué
        login = login_field.get_text()
        password = password_field.get_text()
        # Insérer ici votre code d'authentification

window = LoginForm()
window.connect("destroy", Gtk.main_quit)
window.show_all()
Gtk.main()
