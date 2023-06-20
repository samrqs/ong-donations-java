package Model;

public class Restaurante {

    private String nome;
    private Endereco endereco_r;
    private String email;
    private String telefone;
    private String cnpj;

    public Endereco getEndereco_r() {
        return endereco_r;
    }

    public void setEndereco_r(Endereco endereco_r) {
        this.endereco_r = endereco_r;
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

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
    public void imprimeDados() {
        System.out.println("Nome: " + getNome());
        System.out.println("Email: " + getEmail());
        System.out.println("Telefone: " + getTelefone());
        System.out.println("CNPJ: " + getCnpj());
        System.out.println("Endereço: " + getEndereco_r().getLogradouro() 
                +", "
                + getEndereco_r().getNumero()
                + " - "
                + getEndereco_r().getCep()
                + " - "
                + getEndereco_r().getBairro()
                + ", "
                + getEndereco_r().getCidade()
                + ", "
                + getEndereco_r().getEstado());
    }

}
