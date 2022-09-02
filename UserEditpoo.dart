import 'dart:io';

class Username {
  List<String> usernames = ["jose", "joao"];
  add() {
    print("deseja adicionar um username ao sistema? S/N");

    String resposta = stdin.readLineSync()!;
    if (resposta == "S" || resposta == "s") {
      print("insira um nome");
      String name = stdin.readLineSync()!;
      int index = usernames.indexOf(name);
       if (index == -1) {
        usernames.add(name);
    }    
      else {
        print("nome existente, tente novamente");
        add();
      }
      return usernames;
      
    } else {
      return usernames;
    }
  }
remove() {
    print("Deseja remover um username do sistema? S/N");

    String resposta = stdin.readLineSync()!;
    if (resposta == "S" || resposta == "s") {
      print("insira o nome que deseja remover nome");
      String name = stdin.readLineSync()!;
      int index = usernames.indexOf(name);
      if (index == -1) {
        // Se não existir no DB
        print("Esse nome não consta na lista");
      } else {
        usernames.removeAt(index);
        print("Usuário excluido");
      }
      return usernames;
    } else {
      return usernames;
    }
  }
  edit() {
    print("deseja editar um username do sistema? S/N");
    String resposta = stdin.readLineSync()!;
    if (resposta == "S" || resposta == "s") {
      print("insira o nome que deseja Editar nome");
      String name = stdin.readLineSync()!;
      int index = usernames.indexOf(name);
      if (index == -1) {
        // Se não existir no DB
        print("Esse nome não consta na lista");
      } else  {
        print("Qual o novo nome");
        String novoname = stdin.readLineSync()!;
        usernames[index] = novoname;
        print("Usuário editado");
        return usernames;
      }
    } else {     
       return usernames;
    }

  }
}
void main() {
  Username username = Username();
  username.usernames = username.add();

  print("usuarios cadastrados: ");
  for (String username in username.usernames) {
    print(username + "\n");
  }
  username.usernames = username.remove();
  print(username.usernames);
  username.usernames = username.edit();
  print(username.usernames);
}
