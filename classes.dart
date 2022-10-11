class Alpha {
  String a = 'alpha';
  Beta? beta = Beta();
}

class Beta {
  String b = 'beta';

  // Gamma? gamma; // output == >> null <<
  Gamma? gamma = Gamma(); // outout == theta
}

class Gamma {
  String g = 'gamma';
  Delta? delta = Delta();
}

class Delta {
  String d = 'delta';
  Epsilon? epsilon = Epsilon();
}

class Epsilon {
  String e = 'epsilon';
  Zeta zeta = Zeta();
}

class Zeta {
  String z = 'zeta';
  Theta? theta = Theta();
}

class Theta {
  // int t = 234892348923;
  String t = 'theta';
}

void main() {
  Alpha a = Alpha();
  print(a.beta!.gamma!.delta!.epsilon!.zeta.theta!.t);
}
