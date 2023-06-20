package Model;

import java.time.LocalDate;
import java.util.Date;

public class Doacao {

    private static int contador = 0;
    private final int id;
    private Restaurante restaurante;
    private Ong ong;
    private LocalDate data_validade;
    private LocalDate data_envio;

    public Doacao() {
        id = contador++;
    }

    public LocalDate getData_envio() {
        return data_envio;
    }

    public void setData_envio(LocalDate data_envio) {
        this.data_envio = data_envio;
    }
    private int quantidade_marmitas;

    public int getId() {
        return id;
    }

    public LocalDate getData_validade() {
        return data_validade;
    }

    public void setData_validade(LocalDate data_validade) {
        this.data_validade = data_validade;
    }

    public int getQuantidade_marmitas() {
        return quantidade_marmitas;
    }

    public void setQuantidade_marmitas(int quantidade_marmitas) {
        this.quantidade_marmitas = quantidade_marmitas;
    }

    public Restaurante getRestaurante() {
        return restaurante;
    }

    public void setRestaurante(Restaurante restaurante) {
        this.restaurante = restaurante;
    }

    public Ong getOng() {
        return ong;
    }

    public void setOng(Ong ong) {
        this.ong = ong;
    }

}
