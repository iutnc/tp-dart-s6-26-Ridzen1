void main() {
  print('Hello, World!');

  var message = 'Hello, World !';
  var hello = 'Hello';
  var world = 'World';

  print('$hello, $world !');
  print ((hello + ', ' + world + ' !'));

  print(message.substring(0, 5));

  const String messages = 'Hello, World !';
  print(messages.length);

  const String welcome = 'Hello, World !';
  String chiffres = welcome.toUpperCase() .replaceAll('E', '3') .replaceAll('O', '8') .replaceAll('L', '1');
  print(chiffres);
 
  const String welcome2 = "Hello World";
  final List<String> words = List.unmodifiable(welcome2.split(' '));
  print(words);

  String pwd = ""; 
  print(pwd.isEmpty ? "Mot de passe manquant" : "Mot de passe fourni");

  String email = "john@doe.com";
  bool isEmailValid = email.contains("@") && email.contains(".");
  print(isEmailValid ? "Email valide" : "Email invalide");

}