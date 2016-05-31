//
//  ViewController.swift
//  FlashCards
//
//  Created by Quesada Muñoz on 05/05/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MyCards: UIButton!
    var values = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Descomentando la linea siguiente se vacian las tarjetas propias del usuario.
        values.setObject(nil, forKey: "MisTarjetas")
        if (values.objectForKey("Comida") == nil){
            loadUsersDefault()
            
        }
        if(values.objectForKey("MisTarjetas") == nil){
            MyCards.enabled = false
        }

        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToThisViewController (segue: UIStoryboardSegue) {
        print("Aquí estoy")
        MyCards.enabled = true
    
    }
    
    
    func loadUsersDefault(){
        
        var Comida = [[String:String]]()
        
        Comida.append(["word": "Wurst", "article": "die", "translation": "Salchicha"])
        Comida.append(["word": "Frühstück", "article": "das", "translation": "Desayuno"])
        Comida.append(["word": "Butter", "article": "die", "translation": "Mantequilla"])
        Comida.append(["word": "Banane", "article": "die", "translation": "Platano"])
        Comida.append(["word": "Tee", "article": "der", "translation": "Té"])
        Comida.append(["word": "Salz", "article": "das", "translation": "Sal"])
        Comida.append(["word": "Brötchen", "article": "das", "translation": "Panecillo"])
        Comida.append(["word": "Orangensaft", "article": "der", "translation": "Zumo de naranja"])
        Comida.append(["word": "Marmelade", "article": "die", "translation": "Mermelada"])
        Comida.append(["word": "Käse", "article": "der", "translation": "Queso"])
        Comida.append(["word": "Ei", "article": "das", "translation": "Huevo"])
        Comida.append(["word": "Milch", "article": "die", "translation": "Leche"])
        Comida.append(["word": "Wasser", "article": "das", "translation": "Agua"])
        Comida.append(["word": "Salat", "article": "der", "translation": "Ensalada"])
        Comida.append(["word": "Fleisch", "article": "das", "translation": "Carne"])
        Comida.append(["word": "Kartoffel", "article": "die", "translation": "Patata"])
        Comida.append(["word": "Gemüse", "article": "das", "translation": "Verdura"])
        Comida.append(["word": "Schokolade", "article": "die", "translation": "Chocolate"])
        Comida.append(["word": "Kuchen", "article": "der", "translation": "Pastel"])
        Comida.append(["word": "Tomate", "article": "die", "translation": "Tomate"])
        Comida.append(["word": "Bier", "article": "das", "translation": "Cerveza"])
        Comida.append(["word": "Suppe", "article": "die", "translation": "Sopa"])
        Comida.append(["word": "Gurke", "article": "die", "translation": "Pepino"])
        Comida.append(["word": "Fisch", "article": "der", "translation": "Pescado"])
        
        values.setValue(Comida, forKey: "Comida")
        
        
        
        var Lugares = [[String:String]]()
        
        Lugares.append(["word": "Teather", "article": "das", "translation": "Teatro"])
        Lugares.append(["word": "Schwimmbad", "article": "das", "translation": "Piscina"])
        Lugares.append(["word": "Restaurant", "article": "das", "translation": "Restaurante"])
        Lugares.append(["word": "Museum", "article": "das", "translation": "Museo"])
        Lugares.append(["word": "Fußballstadion", "article": "das", "translation": "Estadio de fútbol"])
        Lugares.append(["word": "Rathaus", "article": "das", "translation": "Ayuntamiento"])
        Lugares.append(["word": "Flughafen", "article": "der", "translation": "Aeropuerto"])
        Lugares.append(["word": "Markt", "article": "der", "translation": "Mercado"])
        Lugares.append(["word": "Hafen", "article": "der", "translation": "Puerto"])
        Lugares.append(["word": "Kirche", "article": "die", "translation": "Iglesia"])
        Lugares.append(["word": "Bahnhof", "article": "der", "translation": "Estacion de tren"])
        Lugares.append(["word": "Hotel", "article": "das", "translation": "Hotel"])
        Lugares.append(["word": "Supermarkt", "article": "der", "translation": "Supermercado"])
        Lugares.append(["word": "Park", "article": "der", "translation": "Parque"])
        Lugares.append(["word": "Kino", "article": "das", "translation": "Cine"])
        Lugares.append(["word": "Café", "article": "das", "translation": "Cafeteria"])
        Lugares.append(["word": "Firma", "article": "die", "translation": "Empresa"])
        Lugares.append(["word": "Uni", "article": "die", "translation": "Universidad"])
        Lugares.append(["word": "Schule", "article": "die", "translation": "Colegio"])
        Lugares.append(["word": "Straße", "article": "die", "translation": "Calle"])
        Lugares.append(["word": "Krankenhaus", "article": "das", "translation": "Hospital"])
        Lugares.append(["word": "Büro", "article": "das", "translation": "Oficina"])
        Lugares.append(["word": "Platz", "article": "der", "translation": "Plaza"])
        Lugares.append(["word": "Kindergarten", "article": "der", "translation": "Jardín de infancia"])
        Lugares.append(["word": "Buchhandlung", "article": "die", "translation": "Librería"])
        Lugares.append(["word": "Baustelle", "article": "die", "translation": "Obra de construcción"])
        Lugares.append(["word": "Praxis", "article": "die", "translation": "Consulta"])
        Lugares.append(["word": "Werkstatt", "article": "die", "translation": "Taller"])
        Lugares.append(["word": "Kaufhaus", "article": "das", "translation": "Almacén"])
        
        values.setValue(Lugares, forKey: "Lugares")
        
        
        
        var Transporte = [[String:String]]()
        
        Transporte.append(["word": "U-Bahn", "article": "die", "translation": "Metro"])
        Transporte.append(["word": "S-Bahn", "article": "die", "translation": "Tren"])
        Transporte.append(["word": "Bus", "article": "der", "translation": "Autobús"])
        Transporte.append(["word": "Auto", "article": "das", "translation": "Coche"])
        Transporte.append(["word": "Tram", "article": "die", "translation": "Tranvia"])
        Transporte.append(["word": "Schifft", "article": "das", "translation": "Barco"])
        Transporte.append(["word": "Fahrrad", "article": "der", "translation": "Bicicleta"])
        Transporte.append(["word": "Taxi", "article": "das", "translation": "Taxi"])
        Transporte.append(["word": "Rakete", "article": "die", "translation": "Cohete"])
        Transporte.append(["word": "Flugzeug", "article": "das", "translation": "Avion"])
        Transporte.append(["word": "Laster", "article": "der", "translation": "Camión"])
        Transporte.append(["word": "Krankenwagen", "article": "die", "translation": "Ambulancia"])
        Transporte.append(["word": "Ticket", "article": "das", "translation": "Billete"])
        Transporte.append(["word": "Passagier", "article": "der", "translation": "Pasajero"])
        Transporte.append(["word": "Hubschrauber", "article": "der", "translation": "Helicoptero"])
        
        values.setValue(Transporte, forKey: "Transporte")
        
        
        
        var Tiempo = [[String:String]]()
        
        Tiempo.append(["word": "Morgen", "article": "der", "translation": "Mañana"])
        Tiempo.append(["word": "Tag", "article": "die", "translation": "Día"])
        Tiempo.append(["word": "Abend", "article": "der", "translation": "Tarde"])
        Tiempo.append(["word": "Nacht", "article": "die", "translation": "Noche"])
        Tiempo.append(["word": "Jahreszeit", "article": "die", "translation": "Estación"])
        Tiempo.append(["word": "Winter", "article": "der", "translation": "Invierno"])
        Tiempo.append(["word": "Frühling", "article": "der", "translation": "Primavera"])
        Tiempo.append(["word": "Sommer", "article": "der", "translation": "Verano"])
        Tiempo.append(["word": "Herbst", "article": "der", "translation": "Otoño"])
        Tiempo.append(["word": "Jahr", "article": "das", "translation": "Año"])
        Tiempo.append(["word": "Woche", "article": "die", "translation": "Semana"])
        Tiempo.append(["word": "Monat", "article": "der", "translation": "Mes"])
        Tiempo.append(["word": "Wochenende", "article": "das", "translation": "Fin de semana"])
        Tiempo.append(["word": "Wetter", "article": "das", "translation": "Tiempo"])
        Tiempo.append(["word": "Sonne", "article": "die", "translation": "Sol"])
        Tiempo.append(["word": "Regen", "article": "der", "translation": "Lluvia"])
        
        values.setValue(Tiempo, forKey: "Tiempo")
        
        
        
        var Casa = [[String:String]]()
        Casa.append(["word": "Haus", "article": "das", "translation": "Casa"])
        Casa.append(["word": "Wohnung", "article": "die", "translation": "Apartamento"])
        Casa.append(["word": "Zimmer", "article": "das", "translation": "Habitación"])
        Casa.append(["word": "Bad", "article": "das", "translation": "Baño"])
        Casa.append(["word": "Arbeitszimmer", "article": "das", "translation": "Despacho"])
        Casa.append(["word": "Schlafzimmer", "article": "das", "translation": "Dormitorio"])
        Casa.append(["word": "Kinderzimmer", "article": "das", "translation": "Cuarto de los niños"])
        Casa.append(["word": "Flur", "article": "der", "translation": "Pasillo"])
        Casa.append(["word": "Wohnzimmer", "article": "das", "translation": "Salón"])
        Casa.append(["word": "Balkon", "article": "der", "translation": "Terraza"])
        Casa.append(["word": "Küche", "article": "die", "translation": "Cocina"])
        Casa.append(["word": "Tür", "article": "die", "translation": "Puerta"])
        Casa.append(["word": "Fenster", "article": "das", "translation": "Ventana"])
        Casa.append(["word": "Wand", "article": "die", "translation": "Pared"])
        
        values.setValue(Casa, forKey: "Casa")
        
        
        var Mobiliario = [[String:String]]()
        
        Mobiliario.append(["word": "Bett", "article": "das", "translation": "Cama"])
        Mobiliario.append(["word": "Herd", "article": "der", "translation": "Horno"])
        Mobiliario.append(["word": "Lampe", "article": "die", "translation": "Lampara"])
        Mobiliario.append(["word": "Waschmaschine", "article": "die", "translation": "Lavadora"])
        Mobiliario.append(["word": "Stuhl", "article": "der", "translation": "Silla"])
        Mobiliario.append(["word": "Sofa", "article": "das", "translation": "Sofá"])
        Mobiliario.append(["word": "Kühlschrank", "article": "der", "translation": "Frigorífico"])
        Mobiliario.append(["word": "Schreibtisch", "article": "der", "translation": "Escritorio"])
        Mobiliario.append(["word": "Tisch", "article": "der", "translation": "Mesa"])
        Mobiliario.append(["word": "Teppich", "article": "der", "translation": "Alfombra"])
        Mobiliario.append(["word": "Sonnenschirm", "article": "der", "translation": "Sombrilla"])
        Mobiliario.append(["word": "Bild", "article": "das", "translation": "Cuadro"])
        Mobiliario.append(["word": "Sessel", "article": "der", "translation": "Sillón"])
        Mobiliario.append(["word": "Schrank", "article": "der", "translation": "Armario"])
        Mobiliario.append(["word": "Spülmaschine", "article": "die", "translation": "Lavavajillas"])
        Mobiliario.append(["word": "Regal", "article": "das", "translation": "Estantería"])
        
        values.setValue(Mobiliario, forKey: "Mobiliario")
        
        
        
        var Ropa = [[String:String]]()
        
        Ropa.append(["word": "Mütze", "article": "die", "translation": "Gorra"])
        Ropa.append(["word": "Kleid", "article": "das", "translation": "Vestido"])
        Ropa.append(["word": "Rock", "article": "der", "translation": "Falda"])
        Ropa.append(["word": "Schal", "article": "der", "translation": "Bufanda"])
        Ropa.append(["word": "Tuch", "article": "das", "translation": "Pañuelo"])
        Ropa.append(["word": "Hemd", "article": "das", "translation": "Camisa"])
        Ropa.append(["word": "T-Shirt", "article": "das", "translation": "Camisa"])
        Ropa.append(["word": "Schuh", "article": "die", "translation": "Calzado"])
        Ropa.append(["word": "Stiefel", "article": "die", "translation": "Bota"])
        Ropa.append(["word": "Sweatshirt", "article": "das", "translation": "Sudadera"])
        Ropa.append(["word": "Pullover", "article": "der", "translation": "Jersey"])
        Ropa.append(["word": "Anzug", "article": "der", "translation": "Traje"])
        Ropa.append(["word": "Hose", "article": "die", "translation": "Pantalón"])
        Ropa.append(["word": "Jacke", "article": "die", "translation": "Chaquetón"])
        Ropa.append(["word": "Jeans", "article": "die", "translation": "Vaqueros"])
        Ropa.append(["word": "Krawatte", "article": "die", "translation": "Corbata"])
        Ropa.append(["word": "Tasche", "article": "die", "translation": "Bolso"])
        Ropa.append(["word": "Gürtel", "article": "der", "translation": "Cinturón"])
        Ropa.append(["word": "Bluse", "article": "die", "translation": "Blusa"])
        
        values.setValue(Ropa, forKey: "Ropa")
        
        
        
        var Cuerpo = [[String:String]]()
        
        Cuerpo.append(["word": "Kopf", "article": "der", "translation": "Cabeza"])
        Cuerpo.append(["word": "Hals", "article": "der", "translation": "Cuello"])
        Cuerpo.append(["word": "Rücken", "article": "der", "translation": "Espalda"])
        Cuerpo.append(["word": "Brust", "article": "die", "translation": "Pecho"])
        Cuerpo.append(["word": "Bauch", "article": "der", "translation": "Barriga"])
        Cuerpo.append(["word": "Arm", "article": "der", "translation": "Brazo"])
        Cuerpo.append(["word": "Hand", "article": "die", "translation": "Mano"])
        Cuerpo.append(["word": "Finger", "article": "der", "translation": "Dedo"])
        Cuerpo.append(["word": "Bein", "article": "das", "translation": "Pierna"])
        Cuerpo.append(["word": "Knie", "article": "das", "translation": "Rodilla"])
        Cuerpo.append(["word": "Fuß", "article": "der", "translation": "Pie"])
        Cuerpo.append(["word": "Herz", "article": "das", "translation": "Corazón"])
        Cuerpo.append(["word": "Ellbogen", "article": "der", "translation": "Codo"])
        Cuerpo.append(["word": "Nase", "article": "die", "translation": "Nariz"])
        Cuerpo.append(["word": "Mund", "article": "der", "translation": "Boca"])
        Cuerpo.append(["word": "Haare", "article": "die", "translation": "Pelo"])
        Cuerpo.append(["word": "Auge", "article": "das", "translation": "Ojo"])
        Cuerpo.append(["word": "Ohr", "article": "das", "translation": "Oreja"])
        Cuerpo.append(["word": "Gesicht", "article": "das", "translation": "Cara"])
        
        values.setValue(Cuerpo, forKey: "Cuerpo")
        
        
        
        var Vacaciones = [[String:String]]()
        
        Vacaciones.append(["word": "Urlaub", "article": "der", "translation": "Vacaciones laborales"])
        Vacaciones.append(["word": "Sonnencreme", "article": "die", "translation": "Protector solar"])
        Vacaciones.append(["word": "Handtasche", "article": "die", "translation": "Bolso"])
        Vacaciones.append(["word": "Skibrille", "article": "die", "translation": "Gafas de esquí"])
        Vacaciones.append(["word": "Badeschuhe", "article": "die", "translation": "Chanclas"])
        Vacaciones.append(["word": "Schlafsack", "article": "der", "translation": "Saco de dormir"])
        Vacaciones.append(["word": "Regenjacke", "article": "die", "translation": "Impermeable"])
        Vacaciones.append(["word": "Badeanzug", "article": "der", "translation": "Bañador de chica"])
        Vacaciones.append(["word": "Bikini", "article": "der", "translation": "Bikini"])
        Vacaciones.append(["word": "Badehose", "article": "die", "translation": "Bañador de chico"])
        Vacaciones.append(["word": "Helm", "article": "der", "translation": "Casco"])
        Vacaciones.append(["word": "Stadtplan", "article": "der", "translation": "Plano de la ciudad"])
        Vacaciones.append(["word": "Regenschirm", "article": "der", "translation": "Paraguas"])
        Vacaciones.append(["word": "Zelt", "article": "das", "translation": "Tienda de campaña"])
        Vacaciones.append(["word": "Seife", "article": "die", "translation": "Jabón"])
        Vacaciones.append(["word": "Creme", "article": "die", "translation": "Crema"])
        Vacaciones.append(["word": "Shampoo", "article": "das", "translation": "Champú"])
        Vacaciones.append(["word": "Kreditkarte", "article": "die", "translation": "Tarjeta de crédito"])
        Vacaciones.append(["word": "Zimmerschlüssel", "article": "der", "translation": "Llave"])
        Vacaciones.append(["word": "Reisepass", "article": "der", "translation": "Pasaporte"])
        
        values.setValue(Vacaciones, forKey: "Vacaciones")
        
        
        
        var Colegio = [[String:String]]()
        
        Colegio.append(["word": "Kuli", "article": "der", "translation": "Bolígrafo"])
        Colegio.append(["word": "Hausaufgaben", "article": "die", "translation": "Deberes"])
        Colegio.append(["word": "Schule", "article": "die", "translation": "Colegio"])
        Colegio.append(["word": "Seite", "article": "die", "translation": "Página"])
        Colegio.append(["word": "Übung", "article": "die", "translation": "Ejercicio"])
        Colegio.append(["word": "Stift", "article": "der", "translation": "Bolígrafo"])
        Colegio.append(["word": "Regel", "article": "die", "translation": "Regla"])
        Colegio.append(["word": "Radiergummi", "article": "der", "translation": "Goma de borrar"])
        Colegio.append(["word": "Etui", "article": "das", "translation": "Estuche"])
        Colegio.append(["word": "Brille", "article": "die", "translation": "Gafas"])
        Colegio.append(["word": "Buch", "article": "das", "translation": "Libro"])
        Colegio.append(["word": "Wörterbuch", "article": "das", "translation": "Diccionario"])
        Colegio.append(["word": "Schuluniform", "article": "die", "translation": "Uniforme escolar"])
        Colegio.append(["word": "Klasse", "article": "die", "translation": "Clase"])
        Colegio.append(["word": "Ferien", "article": "die", "translation": "Vacaciones escolares"])
        Colegio.append(["word": "Stundenplan", "article": "der", "translation": "Horario escolar"])
        Colegio.append(["word": "Rucksack", "article": "der", "translation": "Mochila"])
        Colegio.append(["word": "Prüfung", "article": "die", "translation": "Examen"])
        Colegio.append(["word": "Semester", "article": "das", "translation": "Semestre"])
        Colegio.append(["word": "Spitzer", "article": "die", "translation": "Sacapuntas"])
        Colegio.append(["word": "Schere", "article": "die", "translation": "Tijeras"])
        Colegio.append(["word": "Klebestift", "article": "der", "translation": "Pegamento de barra"])
        Colegio.append(["word": "Abitur", "article": "das", "translation": "Selectividad"])
        Colegio.append(["word": "Papier", "article": "das", "translation": "Papel"])
        
        values.setValue(Colegio, forKey: "Colegio")
        
        var Tecnologia = [[String:String]]()
        
        Tecnologia.append(["word": "CD", "article": "die", "translation": "CD"])
        Tecnologia.append(["word": "DVD", "article": "die", "translation": "DVD"])
        Tecnologia.append(["word": "Drucker", "article": "der", "translation": "Impresora"])
        Tecnologia.append(["word": "Tastatur", "article": "die", "translation": "Teclado"])
        Tecnologia.append(["word": "Handy", "article": "das", "translation": "Móvil"])
        Tecnologia.append(["word": "CD-Laufwerk", "article": "das", "translation": "Unidad de CD"])
        Tecnologia.append(["word": "DVD-Laufwerk", "article": "das", "translation": "Lector de DVD"])
        Tecnologia.append(["word": "Lautsprecher", "article": "der", "translation": "Altavoz"])
        Tecnologia.append(["word": "Web-Cam", "article": "die", "translation": "WebCam"])
        Tecnologia.append(["word": "Maus", "article": "die", "translation": "Ratón"])
        Tecnologia.append(["word": "Tablet", "article": "das", "translation": "Tablet"])
        Tecnologia.append(["word": "Computer", "article": "der", "translation": "Ordenador"])
        Tecnologia.append(["word": "Bildschrim", "article": "der", "translation": "Pantalla"])
        Tecnologia.append(["word": "Fernseher", "article": "der", "translation": "Televisión"])
        Tecnologia.append(["word": "E-Book", "article": "das", "translation": "Ebook"])
        Tecnologia.append(["word": "Smartphone", "article": "das", "translation": "Teléfono Inteligente"])
        Tecnologia.append(["word": "MP4-Player", "article": "der", "translation": "Reproductor MP4"])
        Tecnologia.append(["word": "I-Pod", "article": "der", "translation": "Ipod"])
        Tecnologia.append(["word": "Spielkonsole", "article": "die", "translation": "Videoconsola"])
        Tecnologia.append(["word": "Radio", "article": "das", "translation": "Radio"])
        Tecnologia.append(["word": "Fotoapparat", "article": "der", "translation": "Cámara de fotos"])
        Tecnologia.append(["word": "Kopfhörer", "article": "der", "translation": "Auricular"])
        Tecnologia.append(["word": "Sensor", "article": "der", "translation": "Sensor"])
        values.setValue(Tecnologia  , forKey: "Tecnologia")

        
        var Familia = [[String:String]]()
        
        Familia.append(["word": "Familie", "article": "der", "translation": "Familia"])
        Familia.append(["word": "Mann", "article": "der", "translation": "Hombre"])
        Familia.append(["word": "Frau", "article": "die", "translation": "Mujer"])
        Familia.append(["word": "Kind", "article": "das", "translation": "Niño/a"])
        Familia.append(["word": "Sohn", "article": "der", "translation": "Hijo"])
        Familia.append(["word": "Tochter", "article": "die", "translation": "Hija"])
        Familia.append(["word": "Vater", "article": "der", "translation": "Padre"])
        Familia.append(["word": "Mutter", "article": "die", "translation": "Madre"])
        Familia.append(["word": "Eltern", "article": "die", "translation": "Padres"])
        Familia.append(["word": "Großvater", "article": "der", "translation": "Abuelo"])
        Familia.append(["word": "Großmutter", "article": "die", "translation": "Abuela"])
        Familia.append(["word": "Großeltern", "article": "die", "translation": "Abuelos"])
        Familia.append(["word": "Schwester", "article": "die", "translation": "Hermana"])
        Familia.append(["word": "Bruder", "article": "der", "translation": "Hermano"])
        Familia.append(["word": "Enkel", "article": "der", "translation": "Nieto"])
        Familia.append(["word": "Enkelin", "article": "die", "translation": "Nieta"])
        Familia.append(["word": "Onkel", "article": "der", "translation": "Tío"])
        Familia.append(["word": "Tante", "article": "die", "translation": "Tía"])
        Familia.append(["word": "Neffe", "article": "der", "translation": "Sobrino"])
        Familia.append(["word": "Nichte", "article": "die", "translation": "Sobrina"])
        Familia.append(["word": "Cousin", "article": "der", "translation": "Primo"])
        Familia.append(["word": "Cousine", "article": "die", "translation": "Prima"])
        
        values.setValue(Familia, forKey: "Familia")
        
        var Materiales = [[String:String]]()
        Materiales.append(["word": "Holz", "article": "das", "translation": "Madera"])
        Materiales.append(["word": "Metall", "article": "das", "translation": "Metal"])
        Materiales.append(["word": "Plastik", "article": "das", "translation": "Plástico"])
        Materiales.append(["word": "Glas", "article": "das", "translation": "Vidrio"])
        Materiales.append(["word": "Stahl", "article": "der", "translation": "Acero"])
        Materiales.append(["word": "Stoff", "article": "der", "translation": "Tela"])
        Materiales.append(["word": "Gold", "article": "das", "translation": "Oro"])
        Materiales.append(["word": "Silber", "article": "das", "translation": "Plata"])
        Materiales.append(["word": "Leder", "article": "das", "translation": "Cuero"])
        Materiales.append(["word": "Baumwolle", "article": "die", "translation": "Algodón"])
        Materiales.append(["word": "Leinen", "article": "das", "translation": "Lino"])
        Materiales.append(["word": "Kupfer", "article": "das", "translation": "Cobre"])
        Materiales.append(["word": "Kohle", "article": "die", "translation": "Carbón"])
        Materiales.append(["word": "Seide", "article": "die", "translation": "Seda"])
        Materiales.append(["word": "Marmor", "article": "der", "translation": "Mármol"])
        Materiales.append(["word": "Stein", "article": "der", "translation": "Piedra"])
        Materiales.append(["word": "Lackharz", "article": "das", "translation": "Resina"])
        Materiales.append(["word": "Wolle", "article": "die", "translation": "Lana"])
        Materiales.append(["word": "Sägemehl", "article": "das", "translation": "Serrín"])
        
        values.setValue(Materiales, forKey: "Materiales")
        
        
        
        var Geografia = [[String:String]]()
        
        Geografia.append(["word": "Baum", "article": "der", "translation": "Árbol"])
        Geografia.append(["word": "Fluss", "article": "der", "translation": "Río "])
        Geografia.append(["word": "See", "article": "die", "translation": "Mar"])
        Geografia.append(["word": "Berg", "article": "der", "translation": "Montaña"])
        Geografia.append(["word": "Tal", "article": "das", "translation": "Valle"])
        Geografia.append(["word": "Wolke", "article": "die", "translation": "Nube"])
        Geografia.append(["word": "Sonne", "article": "die", "translation": "Sol"])
        Geografia.append(["word": "Schnee", "article": "der", "translation": "Nieve"])
        Geografia.append(["word": "Insel", "article": "die", "translation": "Isla"])
        Geografia.append(["word": "Strand", "article": "der", "translation": "Playa"])
        Geografia.append(["word": "Pfad", "article": "der", "translation": "Camino"])
        
        values.setValue(Geografia, forKey: "Geografia")
        
        
        var Deportes = [[String:String]]()
        
        Deportes.append(["word": "Fußball", "article": "der", "translation": "Fútbol"])
        Deportes.append(["word": "Korbball", "article": "der", "translation": "Baloncesto"])
        Deportes.append(["word": "Schwimmen", "article": "das", "translation": "Natación"])
        Deportes.append(["word": "Fechten", "article": "das", "translation": "Esgrima"])
        Deportes.append(["word": "Volleyball", "article": "der", "translation": "Voleibol"])
        Deportes.append(["word": "Tennis", "article": "das", "translation": "Tenis"])
        Deportes.append(["word": "Padel", "article": "das", "translation": "Pádel"])
        Deportes.append(["word": "Handball", "article": "der", "translation": "Balonmano"])
        Deportes.append(["word": "Eiskunstlauf", "article": "der", "translation": "Patinaje artístico"])
        Deportes.append(["word": "Hockey", "article": "das", "translation": "Hockey"])
        Deportes.append(["word": "Judo", "article": "das", "translation": "Judo"])
        Deportes.append(["word": "Karate", "article": "das", "translation": "Karate"])
        Deportes.append(["word": "Schach", "article": "das", "translation": "Ajedrez"])
        Deportes.append(["word": "Ski", "article": "der", "translation": "Esquí"])
        Deportes.append(["word": "Athletik", "article": "die", "translation": "Atletismo"])
        Deportes.append(["word": "Boxen", "article": "das", "translation": "Boxeo"])
        Deportes.append(["word": "Radfahren", "article": "das", "translation": "Ciclismo"])
        Deportes.append(["word": "Baseball", "article": "der", "translation": "Béisbol"])
        Deportes.append(["word": "Klettern", "article": "das", "translation": "Escalada"])

        values.setValue(Deportes, forKey: "Deportes")
        print("He entrado")
        values.setValue([[String : String]](), forKey: "MisTarjetas")
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "A1"{
            if segue.destinationViewController.view != nil {
                (segue.destinationViewController as! A1Controller).TemaLB.text = segue.identifier
            }
        }else if segue.identifier == "A2"{
            if segue.destinationViewController.view != nil {
                (segue.destinationViewController as! A2Controller).TemaLB.text = segue.identifier
            }
        }else if segue.identifier == "MisTarjetas"{
            if segue.destinationViewController.view != nil {
                (segue.destinationViewController as! QuestionsController).Level.text = segue.identifier
            }
        }
    }


}

