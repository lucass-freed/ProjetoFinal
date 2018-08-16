package bean;

/**
 *
 * @author Alunos
 */
public class teste {

    public static void main(String[] args) {
        ColaboradorBean colaborador = new ColaboradorBean();
        colaborador.setNome("Lucas");
        colaborador.setIdade(16);
        colaborador.setCnpj("432432423322");
        colaborador.setCpf("342432423432");
        colaborador.setCargo(CargoTipo.PROGRAMADOR_SENIOR);
    }

}
