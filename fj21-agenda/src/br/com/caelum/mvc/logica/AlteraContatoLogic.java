package br.com.caelum.mvc.logica;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AlteraContatoLogic implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
			
			long id = Long.parseLong(req.getParameter("id"));
			String nome = (req.getParameter("nome"));
			String email = (req.getParameter("email"));
			String endereco = (req.getParameter("endereco"));
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(req.getParameter("dataNascimento"));
			Calendar dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
			
			Contato contato = new Contato();
			contato.setId(id);
			contato.setNome(nome);
			contato.setEmail(email);
			contato.setEndereco(endereco);
			contato.setDataNascimento(dataNascimento);
			
			ContatoDao dao = new ContatoDao();
			dao.atualiza(contato);
			
			System.out.println("Alterando o contato...");
			
			return "mvc?logica=ListaContatosLogic";
		}
}