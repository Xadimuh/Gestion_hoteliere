import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk
import datetime

class ReservationForm(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="Formulaire de réservation")
        

        # Box principale
        box = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.add(box)

        # Champs nom et prénom
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        label_nom = Gtk.Label("Nom : ")
        hbox.pack_start(label_nom, False, False, 0)

        self.entry_nom = Gtk.Entry()
        hbox.pack_start(self.entry_nom, True, True, 0)

        label_prenom = Gtk.Label("Prénom : ")
        hbox.pack_start(label_prenom, False, False, 0)

        self.entry_prenom = Gtk.Entry()
        hbox.pack_start(self.entry_prenom, True, True, 0)

        # Champs téléphone et classe
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        label_tel = Gtk.Label("Téléphone : ")
        hbox.pack_start(label_tel, False, False, 0)

        self.entry_tel = Gtk.Entry()
        hbox.pack_start(self.entry_tel, True, True, 0)

        label_classe = Gtk.Label("Classe : ")
        hbox.pack_start(label_classe, False, False, 0)

        self.entry_classe = Gtk.Entry()
        hbox.pack_start(self.entry_classe, True, True, 0)

        # Champs chambre
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        label_chambre = Gtk.Label("Chambre : ")
        hbox.pack_start(label_chambre, False, False, 0)

        self.entry_chambre = Gtk.Entry()
        hbox.pack_start(self.entry_chambre, True, True, 0)

        # Champs date d'entrée
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        label_entree = Gtk.Label("Date d'entrée : ")
        hbox.pack_start(label_entree, False, False, 0)

        self.entry_entree_jour = Gtk.Entry()
        hbox.pack_start(self.entry_entree_jour, False, False, 0)

        label_sep1 = Gtk.Label("/")
        hbox.pack_start(label_sep1, False, False, 0)

        self.entry_entree_mois = Gtk.Entry()
        hbox.pack_start(self.entry_entree_mois, False, False, 0)

        label_sep2 = Gtk.Label("/")
        hbox.pack_start(label_sep2, False, False, 0)

        self.entry_entree_annee = Gtk.Entry()
        hbox.pack_start(self.entry_entree_annee, False, False, 0)

        # Champs date de sortie
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        label_sortie = Gtk.Label("Date de sortie : ")
        hbox.pack_start(label_sortie, False, False, 0)

        self.entry_sortie_jour = Gtk.Entry()
        label_sep1 = Gtk.Label("/")
        hbox.pack_start(label_sep1, False, False, 0)

        self.entry_sortie_mois = Gtk.Entry()
        hbox.pack_start(self.entry_sortie_mois, False, False, 0)

        label_sep2 = Gtk.Label("/")
        hbox.pack_start(label_sep2, False, False, 0)

        self.entry_sortie_annee = Gtk.Entry()
        hbox.pack_start(self.entry_sortie_annee, False, False, 0)

        # Champs nuits
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        label_nuits = Gtk.Label("Nombre de nuits : ")
        hbox.pack_start(label_nuits, False, False, 0)

        self.entry_nuits = Gtk.Entry()
        hbox.pack_start(self.entry_nuits, True, True, 0)

        # Checkbox bar
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        self.check_bar = Gtk.CheckButton(label="Bar")
        hbox.pack_start(self.check_bar, False, False, 0)

        # Checkbox petit déjeuner
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        self.check_pdj = Gtk.CheckButton(label="Petit déjeuner")
        hbox.pack_start(self.check_pdj, False, False, 0)

        # Bouton de soumission
        hbox = Gtk.Box(spacing=10)
        box.pack_start(hbox, False, False, 0)

        button = Gtk.Button(label="Soumettre")
        button.connect("clicked", self.submit_form)
        hbox.pack_end(button, False, False, 0)

    # Fonction de soumission du formulaire
    def submit_form(self, button):
        nom = self.entry_nom.get_text()
        prenom = self.entry_prenom.get_text()
        tel = self.entry_tel.get_text()
        classe = self.entry_classe.get_text()
        chambre = self.entry_chambre.get_text()

        entree_jour = int(self.entry_entree_jour.get_text())
        entree_mois = int(self.entry_entree_mois.get_text())
        entree_annee = int(self.entry_entree_annee.get_text())
        entree = datetime.date(entree_annee, entree_mois, entree_jour)

        sortie_jour = int(self.entry_sortie_jour.get_text())
        sortie_mois = int(self.entry_sortie_mois.get_text())
        sortie_annee = int(self.entry_sortie_annee.get_text())
        sortie = datetime.date(sortie_annee, sortie_mois, sortie_jour)

        nuits = int(self.entry_nuits.get_text())

        bar = self.check_bar.get_active()
        pdj = self.check_pdj.get_active()

        # Traitement des données
        # ...

        # Exemple d'affichage des données soumises
        print("Nom : ", nom)
        print("Prénom : ", prenom)
        print("Téléphone : ", tel)
        print("Classe : ", classe)
        print("Chambre : ", chambre)
        print("Date d'entrée : ", entree)
        print("Date de sortie : ", sortie)
        print("Nombre de nuits : ", nuits)
        print("Bar : ", bar)
        print("Petit déjeuner : ", pdj)


win = ReservationForm()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()

