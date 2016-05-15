CREATE TABLE SITIO(
  id_sitio int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nombre varchar(150) NOT NULL,
  calificacion decimal(4,1) NOT NULL DEFAULT 10.0,
  descripcion text NOT NULL DEFAULT ''
)
ENGINE=INNODB;

CREATE TABLE COMENTARIO(
  id_comentario int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  contenido varchar(300) NOT NULL DEFAULT '',
  id_sitio int,
  CONSTRAINT COMENTARIO_SITIO
    FOREIGN KEY (id_sitio)
    REFERENCES SITIO(id_sitio)
)
ENGINE=INNODB;

CREATE TABLE FOTO(
  id_foto int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  url varchar(300) NOT NULL,
  portada boolean NOT NULL,
  id_sitio int,
  CONSTRAINT FOTO_SITIO
    FOREIGN KEY (id_sitio)
    REFERENCES SITIO(id_sitio)
)
ENGINE=INNODB;

INSERT INTO SITIO(nombre, calificacion)
VALUES ('Volcan Santa Maria', 5.7);
INSERT INTO SITIO(nombre, calificacion)
VALUES ('Parque central', 7.8);

INSERT INTO SITIO(nombre, calificacion, descripcion)
VALUES ('Fuentes Georginas'
  , 9.6
  , 'El balneario cuenta con siete piscinas de aguas termales, cinco en la parte superior, y dos piscinas que pocas personas conocen, se encuentran en el “sendero ecológico”.  El cual inicia en el área de parqueo, detrás de la cabaña uno encontraras las gradas para bajar, en este sendero hay dos desvíos, el de la izquierda te llega a las piscinas y el de la derecha te llevará a un lugar conocido como “La Cueva” – un lugar donde los habitante de Xela que profesan la religión Maya, realizan ceremonias y oraciones.
  Muchas personas atribuyen poderes medicinales a las Fuentes Georginas, personalmente he visto como personas logran llegar hasta la peña, recolectan el agua que está naciendo y la guardan en botellas plásticas, luego la beben y un poco para la casa, “porque los abuelos así lo recomiendan”. Otros aprovechan a exfoliar la piel o aprovechan a hacer hidroterapia. Un amigo muy cercano, me contó que él iba allí ya que lo utilizaba como medicina alternativa.

El destino cuenta con 9 cabañas que se pueden alquilar y pernoctar, estas cabañas están equipadas con baño privado, 2 camas matrimoniales, una pequeña pileta para que dos personas puedan relajarse con aguas termales dentro de la cabaña (debes esperar bastante para que el agua caiga caliente), chimenea y leña para calentarte en la fría noche.  No hay televisor y la luz es limitada hasta las 9 de la noche.

El clima es frio, ya que te encontraras a una altura considerable, superando los 2500 metros de altura sobre el nivel del mar. Te recomendamos ir bien abrigado. Estas condiciones climáticas son propicias para helechos gigantes y vegetación de coníferas, acá podrás apreciar una de las especies más bonitas de Guatemala, el famoso árbol de Pinabete con el cual se adorna para navidad y tiene un olor muy agradable.

En el lugar existe un restaurante y un bar que ofrecen los tres tiempos de comida. Adicional a esto encontrarás churrasqueras, duchas, vestidores, servicios sanitarios y una pequeña tienda de recuerdos y golosinas donde podrás conseguir una pantaloneta para poder utilizar las piscinas.

¿Cómo llegar?

Ubicado en el municipio de Zunil, departamento de Quetzaltenango, en el kilómetro 221, es accesible desde la Costa Sur por la ruta conocida como “Tierra Caliente”, viajando por la carretera CA-2  partiendo desde Escuintla hasta el cruce hacia Quetzaltenango, se pasará frente a los parques temáticos del Irtra en Retalhuleu hasta llegar a Zunil. El otro acceso es por la ruta llamada “Tierra Fría” saliendo desde la ciudad de Guatemala hasta Quetzaltenango utilizando la carretera CA-1.  Al llegar a Xela se debe buscar el cruce Zunil o Almolonga buscando Retalhuleu, cualquiera de las dos carreteras los hará llegar al municipio de Zunil en donde encontrará el cruce a las Fuentes Georginas.

Al llegar a Zunil encontrará el cruce a mano izquierda, con los respectivos rótulos en donde indicarán que solo faltan 8 kilómetros para llegar, tardarás aproximadamente 20 minutos conduciendo por este tramo de 8 kilómetros, recomendable ir  a una baja velocidad, ya que el camino es muy reducido y sinuoso. A la mitad del camino pasará por la aldea Tzumucubal.

Muchas veces las personas se preguntan ¿Qué tipo de vehículos llegan al lugar?, en lo personal he visto camionetas tipo parrilleras y vehículos de todo tipo estacionadas en el balneario. La carretera está totalmente asfaltada, solo se debe tener precaución, ya que la neblina dificulta la visibilidad, por lo que bocinar al momento de entrar a una curva, llevar las luces encendidas y luces de emergencia son recomendables en este último tramo.

Si viajes en autobús, debes llegar primeramente a Quetzaltenango, en la terminal de autobuses del “Templo de Minerva” tomar el autobús para Zunil, estando en Zunil, en el parque central encontrarás pickups o microbuses que te llevarán.  Adicional a esto, en Xela, existen tour operadoras que te pueden llevar en un tour guiado.

Recomendaciones del lugar

    No nadar en la piscina disfruta la piscina relajándote y caminando lentamente. Suena bastante ilógica nuestra recomendación, pero te explicaremos porque la damos.  Al momento de ingresar al agua, la presión de tu cuerpo va a cambiar, y con el agua caliente tu temperatura de igual forma cambiará. Si le agregas actividad física, seguramente tendrás una descompensación y te puedes desmayar.
    En caso de estar mareado o con mucho sueño, lo mejor será ir rápidamente a las duchas de agua fría, y luego cambiarte a una piscina de agua tibia hasta que te sientas mejor. En caso de desmayarte, no te asustes si los encargados del lugar te auxilian con whisky, ya que esto reanimará.
    La piscina al lado del restaurante es la más caliente al igual que la que está en el sendero ecológico.
    Nuestra piscina favorita es la que se encuentra en el área de parqueo, ya que es poca visitada, y tiene temperaturas muy altas y tibias, excelente para no salir de la piscina y tener varias temperaturas en la misma.
    Tus cosas las puedes guardar en las bancas o en tu vehículo, el parqueo está muy cerca de las piscinas y puedes ir y regresar rápido.
    Llevar dinero en efectivo, ya que no hay servicio de cobro con tarjetas
    El ingreso tiene un valor de Q25 para nacionales y Q50 para extranjeros, adicional a esto te cobrarán Q10 de parqueo.
');


INSERT INTO FOTO(url, portada, id_sitio)
VALUES('img/georginas/1.jpg', 1, 3);
INSERT INTO FOTO(url, portada, id_sitio)
VALUES('img/santa-maria/1.jpg', 1, 1);
INSERT INTO FOTO(url, portada, id_sitio)
VALUES('img/parque-central/1.jpg', 1, 2);
