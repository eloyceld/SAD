# Recopilación Pasiva de Información utilizando Google Hacking y Shodan
## Google Hacking 

Organización elegida:
https://www.hackthissite.org/
"Hack This Site" es un entorno autorizado para realizar prácticas de hacking, por lo que puedes intentar técnicas avanzadas de seguridad sin preocuparte por posibles repercusiones legales.

### Buscar páginas que mencionen "pride" en el contenido del sitio
```
site:hackthissite.org intext:"pride"
```
- Este comando listará las páginas dentro del dominio `hackthissite.org` que mencionan específicamente "pride" en su contenido.
![[Github/SAD/UT2/T0/Fotos/Google Hacking/1.png]]
### Buscar archivos PDF
```
site:hackthissite.org filetype:pdf
```
- Esta búsqueda mostrará únicamente archivos en formato PDF alojados en el dominio, lo cual es útil para encontrar documentación descargable.
![[Github/SAD/UT2/T0/Fotos/Google Hacking/2.png]]

### Buscar términos relacionados con "security" o "vulnerability"
```
site:hackthissite.org "security" OR "vulnerability"
```
- Con esto obtendrás páginas donde se mencionan al menos uno de estos dos términos, ideal para encontrar secciones de educación en seguridad y vulnerabilidades.
![[Github/SAD/UT2/T0/Fotos/Google Hacking/6.png]]
### Excluir resultados que contengan "foro" al buscar "tutorial"
```
site:hackthissite.org "tutorial" -inurl:"forum"
```
- Esta búsqueda te permite filtrar las páginas del foro y enfocarte en tutoriales que no estén dentro de esa sección específica.
![[Github/SAD/UT2/T0/Fotos/Google Hacking/3.png]]
### Buscar páginas con "beginner" en el título y "challenge" en el contenido
```
site:hackthissite.org intitle:"beginner" intext:"challenge"
```

- Esto puede ayudarte a localizar retos de nivel principiante y encontrar información o guías en el contenido de esas páginas.
![[Github/SAD/UT2/T0/Fotos/Google Hacking/4.png]]
### Buscar páginas que mencionen "Bitcoin" en el contenido.
```
site:hackthissite.org intext:"criptografía"
```
- Esto es útil para localizar desafíos o artículos que aborden temas de bitcoin.
![[Github/SAD/UT2/T0/Fotos/Google Hacking/5.png]]
## Consulta con Google Dorks:
### Búsqueda de archivos que contienen credenciales de acceso de AWS
> https://www.exploit-db.com/ghdb/8446
```
intext:"aws_access_key_id" | intext:"aws_secret_access_key" filetype:json | filetype:yaml
```
- Este **Google Dork** es útil para **buscar archivos expuestos** que contienen **credenciales de AWS**, como el **`aws_access_key_id`** y **`aws_secret_access_key`**, en **archivos JSON** o **YAML**. Sin embargo, hay que ser consciente de las implicaciones éticas y legales de realizar búsquedas de este tipo, y usarlas siempre en un contexto controlado y legal.
![[Github/SAD/UT2/T0/Fotos/Google Dorks/1.png]]

### Encontrar páginas web de la instalación de la versión 2 de PowerCMS, específicamente aquellas que tienen la página de instalación activa
> https://www.exploit-db.com/ghdb/8402
```
intitle:"Installation Wizard - PowerCMS v2"
```
- Este tipo de búsqueda puede ser útil para identificar configuraciones mal aseguradas o vulnerabilidades en sitios web, pero debe realizarse siempre con responsabilidad y dentro de un contexto ético y legal.
![[Github/SAD/UT2/T0/Fotos/Google Dorks/2.png]]
### Encontrar repositorios en GitHub que **contengan claves privadas de OpenSSH expuestas**.
> https://www.exploit-db.com/ghdb/8451
```
site:github.com "BEGIN OPENSSH PRIVATE KEY"
```
- Cualquier persona que tenga acceso a ellas puede usarlas para **acceder a sistemas y servidores** de manera no autorizada.
![[Github/SAD/UT2/T0/Fotos/Google Dorks/3.png]]
## Shodan
### country:FR "Apache"

>IP encontrada: **193.48.96.60**
>Ubicación: **5 Quai François Mitterrand**
>ISP: **Renater** *Red nacional de telecomunicaciones para la tecnología, la educación y la investigación de Francia*
>Puertos abiertos: 80/TCP, 443/TCP
>>Puerto 80
>>- Tiene habilitado HSTS (HTTP Strict Transport Security), lo cual asegura que el navegador solo se comunique con el servidor mediante HTTPS
>>
>> Puerto 443 
>>- Posee certificado SSL
>>>- Version 3 estándar X.509
>>>>- Número de serie **23:78:66:bb:00:5b:2a:47:f9:3b:47:f7:39:6b:0a:a0**
>>>- Algoritmo de firma
>>>>- El certificado usa **sha384WithRSAEncryption** para su firma, un algoritmo que asegura la integridad y autenticidad del certificado.
>>>- **Emisor (Issuer)**:
>>>>- GEANT Vereniging en los países bajos
>>>- Validez 
>>>>-  **Fecha de inicio**: 15 de octubre de 2024
>>>>-  **Fecha de expiración**: 15 de octubre de 2025.
>>>- Sujeto 
>>>>- Este certificado está asignado al **Centre national de la recherche scientifique** en Francia.
>>>>- Se emitió específicamente para el dominio **.sciencesconf.org**
>>>- Clave Pública
>>>>-  **Algoritmo**: **RSA**, con una clave de **2048 bits**.
>>>- Extensiones X.509v3
>>>>- **Authority Key Identifier** y **Subject Key Identifier**: Permiten rastrear la cadena de certificación, identificando tanto la clave del emisor como la clave específica del certificado.
>>>>-  **Key Usage**: Indica que el certificado permite **firma digital** y **cifrado de claves**.
>>>- Subject Alternative Name (SAN):
>>>>- Define dominios adicionales para los que el certificado es válido: ***.sciencesconf.org** y **sciencesconf.org.**
>
>Tecnologías implementadas
>>- Javascript
>>> jQuery
>>- Maps
>>> Google Maps
>>- Security
>>>HSTS
>>- WebServer
>>> Apache HTTP 
