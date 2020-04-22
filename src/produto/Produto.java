package produto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PRODUTOS")
public class Produto implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer categoria;
	private String nome;
	private String preco;
	private String marca;
	
	public Produto () {
		
	}
	
	public Produto (Integer categoria, String nome, String preco, String marca) {
		this.categoria = categoria;
		this.nome = nome;
		this.preco = preco;
		this.marca = marca;
	}
	
	public Produto (Integer id, Integer categoria,String nome, String preco, String marca)
	{
		this.id = id;
		this.categoria = categoria;
		this.nome = nome;
		this.preco = preco;
		this.marca = marca;
	}
	
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	
	@Column(name="Categoria")
	public Integer getCategoria() {
		return categoria;
	}

	public void setCategoria(Integer categoria) {
		this.categoria = categoria;
	}

	@Column(name="nome")
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	@Column(name="preco")
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	@Column(name="marca")
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	
	

}
