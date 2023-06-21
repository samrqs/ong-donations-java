
Java Web Application with Googl Maps API

Para o funcionamento da API precisa inserir uma chave API do google maps e substituir nos seguintes campos:

1. Source Packages --> Controller -->  DoacaoServlet --> String apiKey = "YOUR_API_KEY"; 

2. Web Pages --> mapa.jsp:
(<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap" async defer></script>)

Link para cadastrar uma chave API: https://cloud.google.com/apis?hl=pt-br 

Link para download das bibliotecas JAR: https://drive.google.com/file/d/19DjaoQn2bDBoKFtWPQ8eNMFHBlkRX41X/view?usp=sharing

Versões das ferramentas utilizadas:
Apache NetBeans IDE 17
apache-tomcat-10.1.8
JDK 18

