package Model;

public class Ong {
    
    private String nome;
    private Endereco endereco_o;
    private String email;
    private String telefone;
    private String cnpj;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Endereco getEndereco_o() {
        return endereco_o;
    }

    public void setEndereco_o(Endereco endereco_o) {
        this.endereco_o = endereco_o;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    
    public void receberDoacao(Doacao doacao){
        
    }
}
