
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Model.Ong" %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ONG Donations</title>
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
        <% Ong ongZS = (Ong) application.getAttribute("ongZS"); %>
        <% Ong ongZL = (Ong) application.getAttribute("ongZL"); %>
        <% Ong ongZN = (Ong) application.getAttribute("ongZN"); %>
        <% Ong ongZO = (Ong) application.getAttribute("ongZO"); %>
        <% Ong ongCen = (Ong) application.getAttribute("ongCen"); %>
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light bg-white py-3">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp"><span class="fw-bolder text-primary">ONG Donations</span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0 small fw-bolder">
                            <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="resume.jsp">Sobre nós</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.jsp">Doação</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Page Content-->
            <div class="container px-5 my-5">
                <div class="text-center mb-5">
                    <h1 class="display-5 fw-bolder mb-0"><span class="text-gradient d-inline">Sobre nós</span></h1>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-11 col-xl-9 col-xxl-8">
                        <!-- Experience Section-->
                        <section>
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h2 class="text-primary fw-bolder mb-0">A empresa</h2>
                                <!-- Download resume button-->
                                <!-- Note: Set the link href target to a PDF file within your project-->
                            </div>
                            <!-- Experience Card 1-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                            <div class="bg-light p-4 rounded-4">
                                                <div class="text-primary fw-bolder mb-2">ONG Donations</div>
                                                <div class="small fw-bolder">ONG</div>
                                                <div class="small text-muted">Banco de alimentos</div>
                                                <div class="small text-muted">Sustentabilidade</div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8"><div>Nascemos no ano de 2023 com o objetivo da ODS 2 – Fome zero e agricultura sustentável. Acabar com a fome, alcançar a segurança alimentar e melhoria da nutrição e promover algo sustentável.</div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h2 class="text-primary fw-bolder mb-0">Quem pode doar?</h2>
                                <!-- Download resume button-->
                                <!-- Note: Set the link href target to a PDF file within your project-->
                            </div>
                            <!-- Experience Card 1-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                            <div class="bg-light p-4 rounded-4">
                                                <div class="text-primary fw-bolder mb-2">Empresas</div>
                                                <div class="small fw-bolder">Sustentável</div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8"><div>A doação de alimentos é uma prática social valiosa, que busca reduzir o desperdício e combater a fome.No entanto, é necessário entender que a doação de marmitas com sobras aptas ao consumo deve seguir diretrizes e regulamentações para garantir a segurança alimentar.<br><br><div>Nesse sentido as <strong>empresas</strong> têm um papel fundamental na promoção da responsabilidade social e na contribuição para a sociedade. Ao doar marmitas com sobras aptas ao consumo, elas podem desempenhar um papel ativo na redução do desperdício de alimentos e no auxílio àqueles que enfrentam insegurança alimentar.</div></div></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Experience Card 2-->
                        </section>
                        <!-- Education Section-->
                        <section>
                            <h2 class="text-secondary fw-bolder mb-4">Nossas Ongs (regiões)</h2>
                            <!-- Education Card 1-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                            <div class="bg-light p-4 rounded-4">
                                                <div class="text-secondary2 fw-bolder mb-2"><%= ongZS.getNome() %></div>
                                                <div class="mb-2">
                                                    <div class="small fw-bolder"><%= ongZS.getTelefone() %></div>
                                                    <div class="small text-muted"><%= ongZS.getEmail() %></div>
                                                </div>
                                                <div class="fst-italic">
                                                    <div class="small text-muted">CNPJ:</div>
                                                    <div class="small text-muted"><%= ongZS.getCnpj() %></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8"><div><%= ongZS.getEndereco_o().getLogradouro() %>, <%= ongZS.getEndereco_o().getNumero() %> - <%= ongZS.getEndereco_o().getBairro() %>, <%= ongZS.getEndereco_o().getCidade() %> - <%= ongZS.getEndereco_o().getEstado() %>, <%= ongZS.getEndereco_o().getCep() %></div></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Education Card 2-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                            <div class="bg-light p-4 rounded-4">
                                                <div class="text-secondary3 fw-bolder mb-2"><%= ongZL.getNome() %></div>
                                                <div class="mb-2">
                                                    <div class="small fw-bolder"><%= ongZL.getTelefone() %></div>
                                                    <div class="small text-muted"><%= ongZL.getEmail() %></div>
                                                </div>
                                                <div class="fst-italic">
                                                    <div class="small text-muted">CNPJ:</div>
                                                    <div class="small text-muted"><%= ongZL.getCnpj() %></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8"><div><%= ongZL.getEndereco_o().getLogradouro() %>, <%= ongZL.getEndereco_o().getNumero() %> - <%= ongZL.getEndereco_o().getBairro() %>, <%= ongZL.getEndereco_o().getCidade() %> - <%= ongZL.getEndereco_o().getEstado() %>, <%= ongZL.getEndereco_o().getCep() %></div></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Education Card 3-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                            <div class="bg-light p-4 rounded-4">
                                                <div class="text-secondary4 fw-bolder mb-2"><%= ongZN.getNome() %></div>
                                                <div class="mb-2">
                                                    <div class="small fw-bolder"><%= ongZN.getTelefone() %></div>
                                                    <div class="small text-muted"><%= ongZN.getEmail() %></div>
                                                </div>
                                                <div class="fst-italic">
                                                    <div class="small text-muted">CNPJ:</div>
                                                    <div class="small text-muted"><%= ongZN.getCnpj() %></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8"><div><%= ongZN.getEndereco_o().getLogradouro() %>, <%= ongZN.getEndereco_o().getNumero() %> - <%= ongZN.getEndereco_o().getBairro() %>, <%= ongZN.getEndereco_o().getCidade() %> - <%= ongZN.getEndereco_o().getEstado() %>, <%= ongZN.getEndereco_o().getCep() %></div></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Education Card 4-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                            <div class="bg-light p-4 rounded-4">
                                                <div class="text-secondary5 fw-bolder mb-2"><%= ongZO.getNome() %></div>
                                                <div class="mb-2">
                                                    <div class="small fw-bolder"><%= ongZO.getTelefone() %></div>
                                                    <div class="small text-muted"><%= ongZO.getEmail() %></div>
                                                </div>
                                                <div class="fst-italic">
                                                    <div class="small text-muted">CNPJ:</div>
                                                    <div class="small text-muted"><%= ongZO.getCnpj() %></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8"><div><%= ongZO.getEndereco_o().getLogradouro() %>, <%= ongZO.getEndereco_o().getNumero() %> - <%= ongZO.getEndereco_o().getBairro() %>, <%= ongZO.getEndereco_o().getCidade() %> - <%= ongZO.getEndereco_o().getEstado() %>, <%= ongZO.getEndereco_o().getCep() %></div></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Education Card 5-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                            <div class="bg-light p-4 rounded-4">
                                                <div class="text-secondary6 fw-bolder mb-2"><%= ongCen.getNome() %></div>
                                                <div class="mb-2">
                                                    <div class="small fw-bolder"><%= ongCen.getTelefone() %></div>
                                                    <div class="small text-muted"><%= ongCen.getEmail() %></div>
                                                </div>
                                                <div class="fst-italic">
                                                    <div class="small text-muted">CNPJ:</div>
                                                    <div class="small text-muted"><%= ongCen.getCnpj() %></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8"><div><%= ongCen.getEndereco_o().getLogradouro() %>, <%= ongCen.getEndereco_o().getNumero() %> - <%= ongCen.getEndereco_o().getBairro() %>, <%= ongCen.getEndereco_o().getCidade() %> - <%= ongCen.getEndereco_o().getEstado() %>, <%= ongCen.getEndereco_o().getCep() %></div></div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Divider-->
                        <div class="pb-5"></div>
                        <!-- Skills Section-->
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
    </body>
</html>

