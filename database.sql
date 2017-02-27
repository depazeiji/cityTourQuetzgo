create database citytourquetzgo;

use citytourquetzgo;

CREATE TABLE SITIO(
  id_sitio int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nombre varchar(150) NOT NULL,
  calificacion decimal(4,1) NOT NULL DEFAULT 10.0,
  descripcion text NOT NULL DEFAULT '',
  longitud decimal(10,7) NOT NULL,
  latitud decimal(10,7) NOT NULL,
  no_calificadas int NOT NULL DEFAULT 0
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

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Teatro Municipal', 6.5, 14.8381106, -91.5210843
, 'El Teatro Municipal de Quetzaltenango es un teatro situado en el municipio de Quetzaltenango, departamento de Quetzaltenango. Su construcción duró cuatro años y culminó en 1895, obra de Enrique H. Jones y Lorenzo Durini. Los planos son del arquitecto Luis de Rigaul (Gordo, 1998).
<br>
<br>El edificio se considera catedral cultural del pueblo de Quetzaltenango. Su capacidad es para 1050 personas, en tres secciones distintas: luneta, palco alto y anfiteatro (Historia de Xela, s.f.). '
);

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Templo a Minerva', 4.4, 14.8460941, -91.5356291
, 'El Templo a Minerva de Quetzaltenango -también llamado Templo de Minerva- es un templo construido durante el gobierno del presidente Manuel Estrada Cabrera -de 1898 a 1920-. Es el más emblemático Templo a Minerva de todos los que se construyeron durante el la presidencia de Estrada. Se encuentra en la zona 3 de Quetzaltenango, al final de la cuarta calle o Avenida Minerva (Gutiérrez, 2002).'
);

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Parque Bolivar', 3.7, 14.8322151, -91.5152027
, 'Parque dentro de la cab. municipio de Quezaltenango, Quetzaltenango Inaugurado el 5 junio 1973. La municipalidad realizó trabajos de remodelación en el terreno que ocupó el parque antiguo. '
);

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Volcan Cerro Quemado', 5.2, 14.8001543, -91.5900434
, 'El Volcán Cerro Quemado también conocido como volcán Almolonga o La Muela es un estratovolcán andesítico en el departamento de Quetzaltenango en Guatemala. El volcán está ubicado cerca del poblado de Almolonga, al sur de Quetzaltenango, la segunda ciudad más grande de Guatemala.
<br>
<br>El volcán se sitúa a lo largo de la zona de falla de Zunil y cuenta con una caldera central rodeada de variosdomos de lava dacítica y riolítica. Cerro Quemado es el más joven y el mayor domo de dicho complejo de domos volcánicos, y es el único que ha entrado en erupción (1818). Las vertientes norte y este del Cerro Quemado tienen aguas termales.'
);

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Pasaje Enriquez', 8.7, 14.8347483, -91.5206087
, 'Se encuentra edificado en el sitio en donde estuvo al inicio la Casa Real de los Corregidores y luego la Comandancia de Armas.
<br>
<br>A finales del siglo XIX el terreno fue comprado por la familia Enríquez. En 1898 fue construido el pasaje Enríquez por el Arquitecto Alberto Porta y concluido en 1900. La decoración fue realizada por el artista Italiano Luis Liutti.
<br>
<br>En la parte baja de este monumento existieron varios centro comerciales y el segundo nivel era utilizado por la familia Enríquez como casa habitacional.
<br>
<br>A mitad del siglo XX la familia Enríquez lo hipotecó a un banco y este lo saco a la venta, este fue comprado en partes por varias personas. En la actualidad este edificio es un de los portales más visitados por los turistas debido a su estructura y servicios que ofrece.'
);

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Volcan Siete Orjeas', 5.7, 14.8149943, -91.6876934
, 'Este volcán se encuentra localizado en la Sierra Madre de Guatemala. Abarca parte de los municipios de Quetzaltenango, La Esperanza, San Martín Sacatepéquez, Concepción Chiquirichapa y San Juan Ostuncalco, Departamento de Quetzaltenango. Se encuentra a una altitud de 3,370 metros sobre el nivel del mar.
<br>
<br>Como su nombre lo indica este volcán tiene siete picos u orejas, que es como se le conoce. El macizo es la parte del Arco Volcánico Centroamericano, se encuentra formado por una cadena de volcanes que se extiende a lo largo del literal occidental de América Central, es impresionante.'
);


INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Cerro El Baul', 6.8, 14.8333333, -91.5
, 'El parque municipal Cerro el Baúl fue declarado parque nacional en 1955. Es un domo de lava que domina en valle de Quetzaltenango, cubre el área de 2,40 kilómetros cuadrados y tiene una atura de 2,650 metros. Se encuentra clasificado como: Orográfico (montaña con una altura superior a los 300 metros).
<br>
<br>El Cerro  el Baúl  también es conocido como Tecún  Umán  pues,  la escultura  tiene  similitud con el Héroe Nacional, además por la misma narración oral que se han vuelto leyendas  se menciona que  ahí está enterrado el cuerpo del  Príncipe K´iche  enterrándolo en el centro del cerro el Baúl es por eso que se conoce como Al cerro como Tecun Uman.'
);

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Laguna de Xicabal', 9.8, 14.7892153, -91.6560306
, 'De todos los volcanes de Guatemala dos son famosos por tener lagunas en su cráter. Uno es el Volcán de Ipala (que unos dicen está en Jutiapa y otros que en Chiquimula, pero ver el mapa de elevaciones nos revela que comparte territorio en ambos departamentos).
<br><br>
Y desde luego, el otro famoso por su belleza e importancia para la cultura Maya es el de Chicabal que se encuentra en el departamento de Quetzaltenango.'
);

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Volcan Santa Maria', 5.7, 14.7571433, -91.5516975
, 'Este volcán está ubicado en el municipio de Quetzaltenango, Departamento de Quetzaltenango, Guatemala. Se encuentra a una altitud de 3,772 metros sobre el nivel del mar.
<br>El macizo volcánico Santa María pertenece a lo que fue el sistema volcánico más antiguo y en él también se hallan el volcán Siete Orejas y parte del volcán Chicabal.
<br><br>
Es un estrato volcán, o sea que se formó de capas alternas de lava y piroclástos o sea fragmentos de lava. Tiene un cráter de explosión en su falda oeste y actualmente se conoce como volcán Santiaguito.
<br>
<br>Los indígenas kiches lo llamaban Gagxanul, que quiere decir "montaña o volcán desnudo". Y se tiene noticia de las erupciones en el Memorial de Sololá, Siglo XVI.
<br>
<br>El 24 y 25 de octubre de 1902 hubo una gran erupción que sacó material magmático a 8.6 kilómetros de distancia. Quetzaltenango estuvo cubierto con medio metro de ceniza volcánica y la columna de humo alcanzó 30 km de altura.
<br>¿Como llegar al Volcán?
<br>Para llegar al volcán Santa María, debe llegar al municipio de Quetzaltenango (201 km de la ciudad de Guatemala). Luego buscar el desvío hacia el caserío Llano del Pinal (7 km de Quetzaltenango). Allí dejar el vehículo e iniciar el ascenso.
<br>
<br>Si viaja en camioneta, llegue a Quetzaltenango y diríjase a la terminal de buses (ubicada frente al Templo de Minerva, salida a San Marcos) y tome un bus que vaya al caserío Llano del Pinal o Chicavioc. El tiempo de ascenso es de 3 horas y el descenso es de 2 horas aproximadamente.
<br>¿Que se ve desde la Cumbre?
<br>La vista es maravillosa. Observará los volcanes: Tacaná, Tajumulco, Siete Orejas, Chicabal, Lacandón. Los volcanes del lago de Atitlán que son San Pedro, Atitlán y Tolimán, así como los volcanes de Acatenango, Fuego y Agua.
<br><br>Recomendaciones
<br>- Este volcán se puede escalar en un día por lo que debe calcular si va a desayunar y/o almorzar para ver la cantidad de comida que llevará. Sin embargo, se recomienda llevar por lo menos 2 litros de agua. Los alimentos los debe llevar en recipientes o bolsas plásticas para que no pesen mucho.
<br>
<br>- El lugar es sumamente frío, por lo que se recomienda llevar una chumpa que sea caliente y liviana a la vez. Además, un buen par de zapatos flojos para que no le molesten.'
);

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descipcion)
VALUES ('Parque central', 7.8, 14.8344623, -91.5182905
	, 'Consistía en realidad de 2 jardines, uno de los cuales era parte o extensión del atrio de la iglesia, sus nombres eran: Jardín de la Juventud y Jardín La Unión. Estaban separados por un portal llamado Portal de las Banderillas cuya función era plenamente comercial.
<br>
<br>En 1938 el arquitecto Rafael Pérez trazó junto a Martín Quijivix y Macario Ixcok su distribución final, durante el gobierno de Jorge Ubico. Los antiguos jardines, fueron integrados en un solo cuerpo: El Parque de Centro América.  Fue y sigue siendo centro de actividades importantes de caracter social y político, sufrió varias remodelaciones. El kiosko del Parque es un monumento a uno de los autores del Himno Nacional: Rafael Álfavez Ovalle.');

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descripcion)
VALUES ('Fuentes Georginas'
  , 9.6, 14.749913, -91.480282
  , 'El balneario cuenta con siete piscinas de aguas termales, cinco en la parte superior, y dos piscinas que pocas personas conocen, se encuentran en el “sendero ecológico”, el cual inicia en el área de parqueo, detrás de la cabaña uno encontraras las gradas para bajar, en este sendero hay dos desvíos, el de la izquierda te llega a las piscinas y el de la derecha te llevará a un lugar conocido como “La Cueva” – un lugar donde los habitante de Xela que profesan la religión Maya, realizan ceremonias y oraciones.
  <br>Muchas personas atribuyen poderes medicinales a las Fuentes Georginas, personalmente he visto como personas logran llegar hasta la peña, recolectan el agua que está naciendo y la guardan en botellas plásticas, luego la beben y un poco para la casa, “porque los abuelos así lo recomiendan”. Otros aprovechan a exfoliar la piel o aprovechan a hacer hidroterapia. Un amigo muy cercano, me contó que él iba allí ya que lo utilizaba como medicina alternativa.
<br>
<br>El destino cuenta con 9 cabañas que se pueden alquilar y pernoctar, estas cabañas están equipadas con baño privado, 2 camas matrimoniales, una pequeña pileta para que dos personas puedan relajarse con aguas termales dentro de la cabaña (debes esperar bastante para que el agua caiga caliente), chimenea y leña para calentarte en la fría noche.  No hay televisor y la luz es limitada hasta las 9 de la noche.
<br>
<br>El clima es frio, ya que te encontraras a una altura considerable, superando los 2500 metros de altura sobre el nivel del mar. Te recomendamos ir bien abrigado. Estas condiciones climáticas son propicias para helechos gigantes y vegetación de coníferas, acá podrás apreciar una de las especies más bonitas de Guatemala, el famoso árbol de Pinabete con el cual se adorna para navidad y tiene un olor muy agradable.
<br>
<br>En el lugar existe un restaurante y un bar que ofrecen los tres tiempos de comida. Adicional a esto encontrarás churrasqueras, duchas, vestidores, servicios sanitarios y una pequeña tienda de recuerdos y golosinas donde podrás conseguir una pantaloneta para poder utilizar las piscinas.
<br>
<br>¿Cómo llegar?
<br>
<br>Ubicado en el municipio de Zunil, departamento de Quetzaltenango, en el kilómetro 221, es accesible desde la Costa Sur por la ruta conocida como “Tierra Caliente”, viajando por la carretera CA-2  partiendo desde Escuintla hasta el cruce hacia Quetzaltenango, se pasará frente a los parques temáticos del Irtra en Retalhuleu hasta llegar a Zunil. El otro acceso es por la ruta llamada “Tierra Fría” saliendo desde la ciudad de Guatemala hasta Quetzaltenango utilizando la carretera CA-1.  Al llegar a Xela se debe buscar el cruce Zunil o Almolonga buscando Retalhuleu, cualquiera de las dos carreteras los hará llegar al municipio de Zunil en donde encontrará el cruce a las Fuentes Georginas.
<br>
<br>Al llegar a Zunil encontrará el cruce a mano izquierda, con los respectivos rótulos en donde indicarán que solo faltan 8 kilómetros para llegar, tardarás aproximadamente 20 minutos conduciendo por este tramo de 8 kilómetros, recomendable ir  a una baja velocidad, ya que el camino es muy reducido y sinuoso. A la mitad del camino pasará por la aldea Tzumucubal.
<br>
<br>Muchas veces las personas se preguntan ¿Qué tipo de vehículos llegan al lugar?, en lo personal he visto camionetas tipo parrilleras y vehículos de todo tipo estacionadas en el balneario. La carretera está totalmente asfaltada, solo se debe tener precaución, ya que la neblina dificulta la visibilidad, por lo que bocinar al momento de entrar a una curva, llevar las luces encendidas y luces de emergencia son recomendables en este último tramo.
<br>
<br>Si viajes en autobús, debes llegar primeramente a Quetzaltenango, en la terminal de autobuses del “Templo de Minerva” tomar el autobús para Zunil, estando en Zunil, en el parque central encontrarás pickups o microbuses que te llevarán.  Adicional a esto, en Xela, existen tour operadoras que te pueden llevar en un tour guiado.
<br>
<br>Recomendaciones del lugar
<br>
    <br>No nadar en la piscina disfruta la piscina relajándote y caminando lentamente. Suena bastante ilógica nuestra recomendación, pero te explicaremos porque la damos.  Al momento de ingresar al agua, la presión de tu cuerpo va a cambiar, y con el agua caliente tu temperatura de igual forma cambiará. Si le agregas actividad física, seguramente tendrás una descompensación y te puedes desmayar.
    <br>En caso de estar mareado o con mucho sueño, lo mejor será ir rápidamente a las duchas de agua fría, y luego cambiarte a una piscina de agua tibia hasta que te sientas mejor. En caso de desmayarte, no te asustes si los encargados del lugar te auxilian con whisky, ya que esto reanimará.
    <br>La piscina al lado del restaurante es la más caliente al igual que la que está en el sendero ecológico.
    <br>Nuestra piscina favorita es la que se encuentra en el área de parqueo, ya que es poca visitada, y tiene temperaturas muy altas y tibias, excelente para no salir de la piscina y tener varias temperaturas en la misma.
    <br>Tus cosas las puedes guardar en las bancas o en tu vehículo, el parqueo está muy cerca de las piscinas y puedes ir y regresar rápido.
    <br>Llevar dinero en efectivo, ya que no hay servicio de cobro con tarjetas
    <br>El ingreso tiene un valor de Q25 para nacionales y Q50 para extranjeros, adicional a esto te cobrarán Q10 de parqueo.
');


INSERT INTO FOTO(url, portada, id_sitio)
VALUES('img/georginas/1.jpeg', 1, 5);
INSERT INTO FOTO(url, portada, id_sitio)
VALUES('img/santa-maria/1.JPG', 1, 3);
INSERT INTO FOTO(url, portada, id_sitio)
VALUES('img/parque-central/1.jpg', 1, 4);




INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descipcion)
VALUES ('Chicovix', 9.1, 14.7920156, -91.4747603
	, 'Justamente en la cabecera municipal de San Carlos Sija está el Cerro Sija, una montaña con bastante cobertura boscosa de pino-encino.
  Usted disfrutará caminar abajo de los árboles con su familia, sus amigos, su perrito o simplemente sol@. Cuando llegue a la meta, puede gozar en las vistas maravillosas de los volcanes de esta región: Santa Maria, Tacaná y Tajulmuco. Descanse y hagase picnic. No hay prisa para bajar.
  Si no quiere bajar el mismo día, traiga su casa de campaña y duerma bajo las estrellas.<br>
  <br>Los Baños Chicovix se encuentra en el Municipio de Cantel a 10 Kilómetros de la cabecera departamental.
  <br><br>Cuenta con un centro recreativo, en donde hay alberca, pozas de aguas termales y caminos para practicar el senderismo, lo mejor es venir a disfrutar de las calientes aguas termales a las que se les atribuyen propiedades curativas.');

INSERT INTO SITIO(nombre, calificacion, latitud, longitud, descipcion)
VALUES ('Cerro Sija', 8.8, 14.9817809, -91.5507151
  	, 'Se trata de un manantial de aguas termales que provienen del río Samala, la temperatura del agua alcanza hasta los 40 grados centígrados, para los indígenas es considerado como un lugar sagrado en donde se realizan diversas ceremonias.');

INSERT INTO FOTO(url, portada, id_sitio)
  VALUES('img/sija/1.jpg', 1, x);

INSERT INTO FOTO(url, portada, id_sitio)
  VALUES('img/chicovix/1.png', 1, x);
