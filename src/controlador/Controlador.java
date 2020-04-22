package controlador;

import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import produto.Produto;
/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       EntityManagerFactory emf = Persistence.createEntityManagerFactory("MP");
       EntityManager em = emf.createEntityManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Integer id, categoria;
		String nome, marca;
		String preco;
		HttpSession session = request.getSession();
		int pag, funcao;
		pag = Integer.parseInt(request.getParameter("pag"));
		funcao = Integer.parseInt(request.getParameter("funcao"));
		EntityTransaction tx = em.getTransaction();
		
		if(pag==1) {
			switch(funcao) {
			case 1: //cadastro de alimento
			{
				categoria = Integer.parseInt(request.getParameter("categoria"));
				nome = request.getParameter("nome");
				preco = request.getParameter("preco");
				marca = request.getParameter("marca");
			
				if(categoria > 3) {

				}else {
					session.setAttribute("categoria", "true");
					Produto produto = new Produto(categoria, nome, preco, marca);
					
					tx.begin();
					em.persist(produto);
					tx.commit();
				}
				
					response.sendRedirect("estoque/produto.jsp");
					break;
			}	
			
			
			case 3: // Alterar um produto
			{
				id = Integer.parseInt(request.getParameter("id"));
				categoria = Integer.parseInt(request.getParameter("categoria"));
				nome = request.getParameter("nome");
				preco = request.getParameter("preco");
				marca = request.getParameter("marca");
				
				Produto produto = new Produto (categoria, nome, preco, marca);
				
				if (produto != null) {
					
					produto = new Produto (categoria, nome, preco, marca);
					
					tx.begin();
					em.merge(produto);
					tx.commit();
					
					session.setAttribute("produto", "Produto: " + produto + "alterado!");
					session.setAttribute("produto", produto);
					
				}
				response.sendRedirect("estoque/result.jsp");
				break;
			}
			case 4://exclusao
			{
				id = Integer.parseInt(request.getParameter("id"));
				
				Produto produto = em.find(Produto.class, id);
				if(produto != null)//cliente encontrado
		 		{
		 			tx.begin();
			 		em.remove(produto);
			 		tx.commit();
		 			session.setAttribute("mensagem", "Cliente"+produto+ "Excluido!");

		 		}else //cliente nao encontrado
		 		{
		 			session.setAttribute("mensagem", "Cliente "+produto+"Não Encontrado. Exclusão cancelada!");
		 			session.setAttribute("produto", null);
		 		}
	 	 		response.sendRedirect("estoque/resultado.jsp");

		 		break;
			}
		
			}
	
			
			}
		}
		
		
	
		
	}


