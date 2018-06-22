package br.com.ifpe.series.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.series.model.Comentario;
import br.com.ifpe.series.model.ComentarioDao;
import br.com.ifpe.series.model.Serie;
import br.com.ifpe.series.model.SerieDao;

@Controller
public class SeriesController {

	@RequestMapping("comentario")
	public String comentario() {
		return "comentario";
	}

	@RequestMapping("filtro")
	public String filtro() {
		return "filtro";
	}

	@RequestMapping("incluirSeries")
	public String incluirSeries() {
		return "incluirSeries";
	}

	@RequestMapping("listarComentarios")
	public String listarComentarios(Comentario comentario, Model model) {
		ComentarioDao dao = new ComentarioDao();
		
		List<Comentario> listaComentario = dao.listar();
		model.addAttribute("comentarios", listaComentario);
		return "listarComentarios";
	}

	@RequestMapping("salvar")
	public String save(Serie serie, Model model) {

		SerieDao dao = new SerieDao();
		dao.salvar(serie);
		model.addAttribute("mensagem", "Série Cadastrada com sucesso!");
		return "incluirSeries";
	}

	@RequestMapping("salvarComentario")
	public String salvarComentario(Comentario comentario, Model model) {

		ComentarioDao dao = new ComentarioDao();
		dao.salvar(comentario);
		model.addAttribute("mensagem_comentario", "Comentário cadastrado com sucesso!");
		return "comentario";
	}

	@RequestMapping("index")
	public String filtrarSerie(Serie serie, Model model) {
		SerieDao dao = new SerieDao();
		
		List<Serie> listaSerie = dao.listar();
		model.addAttribute("series", listaSerie);
		return "index";
	}
	
	@RequestMapping("pesquisar")
		public String filtrar(Serie serie, Model model) {
		SerieDao dao = new SerieDao();
		
		List<Serie> listaSerie = dao.listarPesquisa(serie);
		model.addAttribute("listaSerie", listaSerie);
		return "filtro";
	}

}
