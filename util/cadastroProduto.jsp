<jsp:directive.page import="java.sql.*"/>
<jsp:declaration>
	private String driver = "org.postgresql.Driver";
	private String caminho = "jdbc:postgresql://localhost:5432/Estoque";
	private String usuario = "postgres";
	private String senha ="123";
	public Connection conexao;
	
	public void init () throws ServletException{
		try {
			 System.out.println("tentando");
			Class.forName(driver);
			conexao = DriverManager.getConnection(caminho,usuario,senha);
			conexao.setAutoCommit(false);
		}catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

</jsp:declaration>
<jsp:scriptlet>
	// TODO Auto-generated method stub
	Integer categoria;
	categoria = Integer.parseInt(request.getParameter("categoria"));
	String consultar = "SELECT * FROM produtos where categoria between '1";
	Statement statement;
	try {
		statement = conexao.createStatement();
		ResultSet rs = statement.executeQuery(consultar);
	if (rs.next()) 
	{
		session.setAttribute("mensagem", "usuário Autenticado!");
	    session.setAttribute("login", "true");
		response.sendRedirect("../estoque/cadastroProduto.jsp");
	}
	else
	{
		session.setAttribute("mensagem", "usuário não Autenticado");
		response.sendRedirect("../login/index.jsp");
	}
	}catch(SQLException e) {
		e.printStackTrace();
	}
			
			


</jsp:scriptlet>