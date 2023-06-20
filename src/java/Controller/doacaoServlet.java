package Controller;

import Model.DirectionsResponse;
import Model.Distance;
import java.io.IOException;
//import java.io.PrintWriter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Model.Restaurante;
import Model.Doacao;
import Model.Endereco;
import Model.Leg;
import Model.Route;
import com.google.gson.Gson;
import jakarta.servlet.RequestDispatcher;
import java.util.List;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import Model.DestinoLocation;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

@WebServlet("/doacaoSerlet")
public class doacaoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        String sqtd_d = request.getParameter("quantidade");
        String nome_r = request.getParameter("nome");
        String email_r = request.getParameter("email");
        String telefone_r = request.getParameter("telefone");
        String cnpj_r = request.getParameter("cnpj");
        String logradouro_r = request.getParameter("logradouro");
        String num_r = request.getParameter("numero");
        String cep_r = request.getParameter("cep");
        String bairro_r = request.getParameter("bairro");
        String cidade_r = request.getParameter("cidade");
        String estado_r = request.getParameter("estado");

        Doacao doacaoR = new Doacao();
        int iqtd_d = Integer.parseInt(sqtd_d);
        LocalDate dataAtual = LocalDate.now();
        LocalDate dataMaisDoisDias = dataAtual.plus(1, ChronoUnit.DAYS);
        doacaoR.setData_validade(dataMaisDoisDias);
        doacaoR.setData_envio(dataAtual);
        doacaoR.setQuantidade_marmitas(iqtd_d);

        Endereco end1 = new Endereco(logradouro_r, num_r, cep_r, bairro_r, cidade_r, estado_r);

        Restaurante rest = new Restaurante();
        rest.setNome(nome_r);
        rest.setEmail(email_r);
        rest.setTelefone(telefone_r);
        rest.setCnpj(cnpj_r);
        rest.setEndereco_r(end1);

        //Endereço formatado para API Google Maps
        String endereco = logradouro_r + ", " + num_r + " - " + bairro_r + ", " + cidade_r + " - " + estado_r + ", " + cep_r;

        OkHttpClient client = new OkHttpClient();

        String apiKey = "";
        String origin = endereco;
        String[] destinations = {
            "R. Olívia Guedes Penteado, 375 - Socorro, São Paulo - SP, 04766-001",
            "Av. Cachoeira Paulista, 194 - Cidade Patriarca, São Paulo - SP, 03551-000",
            "R. Natividade da Serra, 297 - Vila Nova Cachoeirinha, São Paulo - SP, 02613-060",
            "R. Sagarana, 2 - Vila Madalena, São Paulo - SP, 05444-040",
            "R. Boa Vista, 380 - Centro Histórico de São Paulo, São Paulo - SP, 01014-001"
        };

        String closestDestination = null;
        double shortestDistanceValue = Double.MAX_VALUE;
        double originLatitude = 0.0;
        double originLongitude = 0.0;
        double closestDestinationLatitude = 0.0;
        double closestDestinationLongitude = 0.0;

        for (String destination : destinations) {
            String url = "https://maps.googleapis.com/maps/api/directions/json?origin=" + origin
                    + "&destination=" + destination
                    + "&key=" + apiKey;

            Request request1 = new Request.Builder()
                    .url(url)
                    .build();

            try {
                Response response1 = client.newCall(request1).execute();
                ResponseBody responseBody = response1.body();
                if (responseBody != null) {
                    String jsonResponse = responseBody.string();
                    Gson gson = new Gson();
                    DirectionsResponse directionsResponse = gson.fromJson(jsonResponse, DirectionsResponse.class);

                    List<Route> routes = directionsResponse.getRoutes();

                    for (Route route : routes) {
                        List<Leg> legs = route.getLegs();

                        for (Leg leg : legs) {
                            Distance distance = leg.getDistance();
                            double distanceValue = distance.getValue() / 1000.0;

                            if (distanceValue < shortestDistanceValue) {
                                closestDestination = destination;
                                shortestDistanceValue = distanceValue;

                                originLatitude = leg.getStartLocation().getLat();
                                originLongitude = leg.getStartLocation().getLng();
                                closestDestinationLatitude = leg.getEndLocation().getLat();
                                closestDestinationLongitude = leg.getEndLocation().getLng();
                            }
                        }
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        System.out.println("Endereço recebido: " + endereco);
        System.out.println("Endereço mais próximo: " + closestDestination);
        System.out.println("Menor distância: " + shortestDistanceValue + " km.");
        System.out.println("Latitude do endereço de origem: " + originLatitude);
        System.out.println("Longitude do endereço de origem: " + originLongitude);
        System.out.println("Latitude do destino mais próximo: " + closestDestinationLatitude);
        System.out.println("Longitude do destino mais próximo: " + closestDestinationLongitude);

        request.setAttribute("closestDestination", closestDestination);
        request.setAttribute("shortestDistanceValue", shortestDistanceValue);
        request.setAttribute("originLatitude", originLatitude);
        request.setAttribute("originLongitude", originLongitude);
        request.setAttribute("closestDestinationLatitude", closestDestinationLatitude);
        request.setAttribute("closestDestinationLongitude", closestDestinationLongitude);
        request.setAttribute("rest", rest);
        request.setAttribute("doacaoR", doacaoR);
        RequestDispatcher dispatcher = request.getRequestDispatcher("mapa.jsp");
        RequestDispatcher dispatcher2 = request.getRequestDispatcher("mapa.jsp");
        RequestDispatcher dispatcher3 = request.getRequestDispatcher("mapa.jsp");
        dispatcher.forward(request, response);
        dispatcher2.forward(request, response);
        dispatcher3.forward(request, response);

        response.sendRedirect("mapa.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
