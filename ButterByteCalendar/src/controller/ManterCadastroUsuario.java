package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Usuario;
import service.UsuarioService;

@WebServlet("/ManterCadastroUsuario.do")
public class ManterCadastroUsuario extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 doPost(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 String pNome = request.getParameter("nome");
 String pEmail = request.getParameter("email");
 String pCargo = request.getParameter("cargo");
 String pEmpresa = request.getParameter("empresa");
 long pCpf = Long.parseLong(request.getParameter("cpf"));
 long pCodigoRegistro = Long.parseLong(request.getParameter("codigoRegistro"));
 long pTelefone = Long.parseLong(request.getParameter("telefone"));
 int pRamal = Integer.parseInt(request.getParameter("ramal"));
 String pSenha = request.getParameter("senha");

 //instanciar o javabean
 Usuario usuario = new Usuario();
 usuario.setNome(pNome);
 usuario.setEmail(pEmail);
 usuario.setCargo(pCargo);
 usuario.setEmpresa(pEmpresa);
 usuario.setCpf(pCpf);
 usuario.setCodigoRegistro(pCodigoRegistro);
 usuario.setTelefone(pTelefone);
 usuario.setRamal(pRamal);
 usuario.setSenha(pSenha);
 
 //instanciar o service
 UsuarioService cs = new UsuarioService();
 cs.criar(usuario);
 usuario = cs.carregar(usuario.getId());
 
 
    request.setAttribute("Usuario", usuario);
    RequestDispatcher view = 
    request.getRequestDispatcher("Usuario.jsp");
    view.forward(request, response);
 
}

}