void main() {
//1
List<String> planets = ['Terre', 'Mars', 'Mercure', 'Saturne', 'Jupiter', 'Uranus', 'Neptune', 'Vénus'];

planets.sort();
print(planets);

//2
for (String planet in planets) {
  print(planet.toUpperCase());
}
//3
int i = 0;
while (i < planets.length) {
  print(planets[i][0]);
  i++;
}
//4
i = 0;
  do {
    print((i + 1).toString() + "- " + planets[i]);
    i++;
  } while (i < planets.length);


//5
int k = 0;
List<String> voyelles = ['a', 'e', 'i', 'o', 'u', 'y'];
while (k < planets.length) {
  String lastChar = planets[k][planets[k].length - 1]; 
  if (voyelles.contains(lastChar)) {
    print(planets[k]);
  }
  k++;
}
//6
planets.add('Pluton');
print(planets);

//7
List<Planet> planetObjects = [
  Planet('Mercure', 91.69),
  Planet('Saturne', 1275.0),
  Planet('Neptune', 4351.40),
  Planet('Jupiter', 628.73),
  Planet('Mars', 78.34),
  Planet('Venus', 41.40),
  Planet('Uranus', 2723.95)
];

planetObjects.sort((a, b) => a.distanceFromEarth.compareTo(b.distanceFromEarth));
print(planetObjects);

//8
Map<String, String> apollo = {
  '07_1969': 'Apollo 11',
  '11_1969': 'Apollo 12',
  '02_1971': 'Apollo 14',
  '07_1971': 'Apollo 15',
  '04_1972': 'Apollo 16',
  '12_1972': 'Apollo 17'
};


print(apollo);
print(apollo['07_1971']);
print(apollo.keys);
print(apollo.values);


//9
apollo['07_1969'] = 'Neil Armstrong + Buzz Aldrin';
print(apollo['07_1969']);

//10

var sun = SolarSystemElement('Sun', Kind.star);
var earth = SolarSystemElement('Earth', Kind.planet);
var moon = SolarSystemElement('Moon', Kind.satellite);
var plutonElem = SolarSystemElement('Pluton', Kind.satellite);

print([sun, earth, moon, plutonElem]);

}

class Planet {
  String name;
  double distanceFromEarth;

  Planet(this.name, this.distanceFromEarth);
}

enum Kind { planet, star, satellite, asteroid, comet }

class SolarSystemElement {
  String name;
  Kind kind;

  SolarSystemElement(this.name, this.kind);

  @override
  String toString() => '$name (${kind.name})';
}