package Model;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
//import Model.Ong;
//import Model.Endereco;

@WebListener
public class MeuServletContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Inicialize as instâncias dos objetos aqui

        //Zona Sul
        Endereco endZS = new Endereco("R. Olívia Guedes", "375", "04766-001", "Socorro", "São Paulo", "SP");

        Ong ongZS = new Ong();
        ongZS.setNome("Ong Zona Sul");
        ongZS.setEmail("ongZS@gmail.com");
        ongZS.setTelefone("(11) 3744-1556");
        ongZS.setCnpj("72521695000168");
        ongZS.setEndereco_o(endZS);
        
        //String enderecoZS = ongZS.getEndereco_o().getLogradouro() + ", " + ongZS.getEndereco_o().getNumero()+ " - " + ongZS.getEndereco_o().getBairro()+ ", " + ongZS.getEndereco_o().getCidade()+ " - " + ongZS.getEndereco_o().getEstado()+ ", " + ongZS.getEndereco_o().getCep();

        //Zona Leste
        Endereco endZL = new Endereco("Av. Cachoeira Paulista", "194", "03551-000", "Cidade Patriarca", "São Paulo", "SP");

        Ong ongZL = new Ong();
        ongZL.setNome("Ong Zona Leste");
        ongZL.setEmail("ongZL@gmail.com");
        ongZL.setTelefone("(11) 3352-8677");
        ongZL.setCnpj("44883224000164");
        ongZL.setEndereco_o(endZL);

        //Zona Norte
        Endereco endZN = new Endereco("R. Natividade da Serra", "297", "02613-060", "Vila Nova Cachoeirinha", "São Paulo", "SP");

        Ong ongZN = new Ong();
        ongZN.setNome("Ong Zona Norte");
        ongZN.setEmail("ongZN@gmail.com");
        ongZN.setTelefone("(11) 2772-4235");
        ongZN.setCnpj("68838939000163");
        ongZN.setEndereco_o(endZN);

        //Zona Oeste
        Endereco endZO = new Endereco("R. Sagarana", "2", "05444-040", "Vila Madalena", "São Paulo", "SP");

        Ong ongZO = new Ong();
        ongZO.setNome("Ong Zona Oeste");
        ongZO.setEmail("ongZO@gmail.com");
        ongZO.setTelefone("(11) 3840-0626");
        ongZO.setCnpj("85948446000103");
        ongZO.setEndereco_o(endZO);

        //Centro
        Endereco endCen = new Endereco("R. Boa Vista", "380", "01014-001", "Centro Histórico de São Paulo", "São Paulo", "SP");

        Ong ongCen = new Ong();
        ongCen.setNome("Ong Centro");
        ongCen.setEmail("ongCen@gmail.com");
        ongCen.setTelefone("(11) 2356-7568");
        ongCen.setCnpj("34822284000113");
        ongCen.setEndereco_o(endCen);

        // Armazene os objetos no escopo de aplicação
        sce.getServletContext().setAttribute("ongZS", ongZS);
        sce.getServletContext().setAttribute("ongZL", ongZL);
        sce.getServletContext().setAttribute("ongZN", ongZN);
        sce.getServletContext().setAttribute("ongZO", ongZO);
        sce.getServletContext().setAttribute("ongCen", ongCen);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Faça alguma limpeza ou encerramento, se necessário
    }
}
