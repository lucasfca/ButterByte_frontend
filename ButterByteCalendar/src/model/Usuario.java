package model;

import java.io.Serializable;

public class Usuario implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String nome;
    private String email;
    private String cargo;
    private String empresa;
    private long cpf;
    private long codigoRegistro;
    private long telefone;
    private int ramal;
    private String senha;

    public String getSenha() {
   	 return senha;
   	}

   	public void setSenha(String senha) {
   	 this.senha = senha;
   	}
    
    public int getRamal() {
    	 return ramal;
    	}

    	public void setRamal(int ramal) {
    	 this.ramal = ramal;
    	}
    	
    public long getTelefone() {
     	 return telefone;
     	}

     	public void setTelefone(long telefone) {
     	 this.telefone = telefone;
     	}
    
    public long getCodigoRegistro() {
      	 return codigoRegistro;
      	}

      	public void setCodigoRegistro(long codigoRegistro) {
      	 this.codigoRegistro = codigoRegistro;
      	}
      	
    public long getCpf() {
      	 return cpf;
      	}

      	public void setCpf(long cpf) {
      	 this.cpf = cpf;
      	}
      	
    public String getEmpresa() {
   	 return empresa;
   	}

   	public void setEmpresa(String empresa) {
   	 this.empresa = empresa;
   	}
   	
    public String getCargo() {
    	 return cargo;
    	}

    	public void setCargo(String cargo) {
    	 this.cargo = cargo;
    	}

public Usuario() {
}

public int getId() {
 return id;
}

public void setId(int id) {
 this.id = id;
}

public String getNome() {
 return nome;
}

public void setNome(String nome) {
 this.nome = nome;
}

public String getEmail() {
 return email;
}

public void setEmail(String email) {
 this.email = email;
}

@Override
public String toString() {
 return "Usuario [id=" + "id" + "\n" 
 		 + "nome: " + nome + "\n" + 
		   "E-mail: " + email + "\n" +
 		   "Cargo: " + cargo + "\n" +
		   "Empresa: " + empresa + "\n" +
		   "CPF: " + cpf + "\n" + 
		   "Código de Registro da Empresa: " + codigoRegistro + "\n" +
		   "Telefone: " + telefone + "\n" +
		   "Ramal: " + ramal + "\n" +
		   "Senha: " + senha + "\n" +
		   "Confirmar Senha: " + senha;
}

@Override
public boolean equals(Object obj) {
 if (this == obj)
  return true;
 if (obj == null)
  return false;
 if (getClass() != obj.getClass())
  return false;
 Usuario other = (Usuario) obj;
 
 if (cpf == 0) {
	  if (other.cpf != 0)
	   return false;
	 } else if (cpf == 0)
	  return false;
 
 if (codigoRegistro == 0) {
	  if (other.codigoRegistro != 0)
	   return false;
	 } else if (codigoRegistro == 0)
	  return false;
 
 if (telefone == 0) {
	  if (other.telefone != 0)
	   return false;
	 } else if (telefone == 0)
	  return false;
 
 if (ramal == 0) {
	  if (other.ramal != 0)
	   return false;
	 } else if (ramal == 0)
	  return false;
 
 if (id != other.id)
  return false;
 
 if (nome == null) {
  if (other.nome != null)
   return false;
 } else if (!nome.equals(other.nome))
  return false;
 return true; 
 }
}

