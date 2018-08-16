package bean;

/**
 *
 * @author Alunos
 */
public class ColaboradorBean {
    
    private String nome;
    private int idade;
    private CargoTipo cargo;
    private String cpf;
    private String cnpj;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public CargoTipo getCargo() {
        return cargo;
    }

    public void setCargo(CargoTipo cargo) {
        this.cargo = cargo;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    
    
    
}
