<%-- 
    Document   : mapa
    Created on : 21 de mai. de 2023, 17:50:51
    Author     : leona
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Controller.doacaoServlet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mapa (rota)</title>
        <style>
            #map {
                height: 600px;
                width: 100%;
            }
        </style>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Custom Google font-->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100 bg-light">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light bg-white py-3">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp"><span class="fw-bolder text-primary">ONG Donations</span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0 small fw-bolder">
                            <li class="nav-item"><a class="nav-link" href="index.jsp">Voltar</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Page Content-->
            <div class="container px-5 my-5">
                <div class="text-center mb-5">
                    <h1 class="display-5 fw-bolder mb-0"><span class="text-gradient d-inline">Doação</span></h1>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-11 col-xl-9 col-xxl-8">
                        <!-- Experience Section-->
                        <section>
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h2 class="text-primary fw-bolder mb-0">Dados da coleta</h2>
                                <!-- Download resume button-->
                                <!-- Note: Set the link href target to a PDF file within your project-->
                            </div>
                            <!-- Experience Card 1-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <p><strong>Quantidade de marmitas doadas:</strong> ${doacaoR.quantidade_marmitas}</p>
                                        <p><strong>Número da doação:</strong> ${doacaoR.id}</p>
                                        <p><strong>Data da coleta:</strong> ${doacaoR.data_validade}</p>
                                        <p><strong>Nome do restaurante:</strong> ${rest.nome}</p>
                                        <p><strong>Email do restaurante:</strong>${rest.email}</p>
                                        <p><strong>Telefone do restaurante:</strong> ${rest.telefone}</p>
                                        <p><strong>CNPJ do restaurante:</strong> ${rest.cnpj}</p>
                                        <p><strong>Endereço do restaurante:</strong> ${rest.endereco_r.logradouro}, ${rest.endereco_r.numero} - ${rest.endereco_r.bairro}, ${rest.endereco_r.cidade} - ${rest.endereco_r.estado}, ${rest.endereco_r.cep}</p>
                                        <p><strong>Endereço da ONG mais próxima:</strong> <%= request.getAttribute("closestDestination") %></p>
                                        <p><strong>Distância:</strong> <%= request.getAttribute("shortestDistanceValue") %> km.</p>
                                        <p><strong>Data envio formulário:</strong> ${doacaoR.data_envio}</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Experience Card 2-->
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h2 class="text-primary fw-bolder mb-0">Rota da ONG mais próxima do restaurante:</h2>
                                <!-- Download resume button-->
                                <!-- Note: Set the link href target to a PDF file within your project-->
                            </div>
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div id="map"></div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer-->
        <footer class="bg-white py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0">Copyright &copy; ONG Donations 2023</div></div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script>
            function initMap() {
                // coordenadas recibidas da API Origem e destino mais próximo
                var latOrigem = <%= request.getAttribute("originLatitude") %>
                var lonOrigem = <%= request.getAttribute("originLongitude") %>
                var latDestino = <%= request.getAttribute("closestDestinationLatitude") %>
                var lonDestino = <%= request.getAttribute("closestDestinationLongitude") %>
                var dlatOrigem = parseFloat(latOrigem);
                var dlonOrigem = parseFloat(lonOrigem);
                var dlatDestino = parseFloat(latDestino);
                var dlonDestino = parseFloat(lonDestino);


                // Coordenadas do centro do mapa
                var center = {lat: -23.550520, lng: -46.633308}; // Define o centro do mapa para São Paulo, Brasil

                // Cria o mapa
                var map = new google.maps.Map(document.getElementById('map'), {
                    center: center,
                    zoom: 12 // Define o zoom inicial
                });

                // Marca os pontos da rota
                var origin = {lat: dlatOrigem, lng: dlonOrigem}; // Coordenadas de origem
                var destination = {lat: dlatDestino, lng: dlonDestino}; // Coordenadas de destino

                var directionsService = new google.maps.DirectionsService();
                var directionsDisplay = new google.maps.DirectionsRenderer();

                directionsDisplay.setMap(map);

                var request = {
                    origin: origin,
                    destination: destination,
                    optimizeWaypoints: true,
                    travelMode: 'DRIVING' // Modo de viagem (DRIVING, WALKING, etc.)
                };

                directionsService.route(request, function (result, status) {
                    if (status == 'OK') {
                        directionsDisplay.setDirections(result);
                    }
                });
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap" async defer></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>

</html>