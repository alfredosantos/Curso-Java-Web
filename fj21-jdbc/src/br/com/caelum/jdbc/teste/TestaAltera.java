package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaAltera {

	public static void main(String[] args) {
		// pronto para gravar
		Contato contato = new Contato();
		contato.setId(1L);
		contato.setNome("Caelum");
		contato.setEmail("alfredo@caelum.com.br");
		contato.setEndereco("R. Vergueiro 3185 cj57");
		contato.setDataNascimento(Calendar.getInstance());
		
		//grave nessa conexao!!!
		ContatoDao dao = new ContatoDao();
		
		//metodo elegante
		dao.altera(contato);
		
		System.out.println("Gravado");
		

	}

}