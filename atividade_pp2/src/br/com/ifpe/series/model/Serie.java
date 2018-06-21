package br.com.ifpe.series.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "serie")
public class Serie {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column
	private String titulo;
	
	@Column
	private Integer ano;
	
	@Column
	private String sinopse;
	
	@Column
	private Integer disponivel;
	
	@Column(name="temporada")
	private Integer qtdetemporada;

	 
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public Integer getAno() {
		return ano;
	}

	public void setAno(Integer ano) {
		this.ano = ano;
	}

	public String getSinopse() {
		return sinopse;
	}

	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}

	public Integer getDisponivel() {
		return disponivel;
	}

	public void setDisponivel(Integer disponivel) {
		this.disponivel = disponivel;
	}

	public Integer getQtdetemporada() {
		return qtdetemporada;
	}

	public void setQtdetemporada(Integer qtdetemporada) {
		this.qtdetemporada = qtdetemporada;
	}
	
}
