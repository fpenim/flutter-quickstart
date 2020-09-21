import 'package:flutter_quickstart/model/location.dart';
import 'package:flutter_quickstart/model/location_fact.dart';

class MockLocation extends Location {

  static Location fetchAny() => items.first;

  static List<Location> fetchAll() => items;

  static Location fetch(int index) => items[index];

  static final List<Location> items = [
    Location(
        name: "Koh Lipe, Thailand",
        url: "https://static.asiawebdirect.com/m/phuket/portals/thaiwave-com/homepage/koh-lipe/allParagraphs/BucketComponent/ListingContainer/07/image/serendipity-beach-resort-lipe.jpg",
        facts: <LocationFact>[
          LocationFact(
              title: "Location",
              text:
                  "Koh Lipe is a small L-shaped island located in the southern "
                  "Thailand’s Satun Province near the Thailand/Malaysia border. "
                  "It belongs to the Adang-Rawi Archipelago, situated on the outskirts "
                  "of the Tarutao National Marine Park. Originally only inhabited "
                  "by Sea Gypsies, the Chao Ley who gave the island its name – "
                  "Koh Lipe means Paper Island in Chao Ley, Koh Lipe (a.k.a. Koh Lipeh or "
                  "Koh Lipey) has been through rapid development to face the increasing tourism demand."),
          LocationFact(
              title: "Beaches",
              text:
                  "Sunset Beach (west), Sunrise Beach (east), and Pattaya Beach "
                  "(south) are the three main beaches of Koh Lipe. The island and "
                  "its surroundings are quite famous for snorkelling and scuba diving; "
                  "its coral reefs are easy to reach as they start just a few metres "
                  "away from each of the four main island’s beaches. A large number "
                  "of accommodation choices are available on Koh Lipe, from "
                  "bamboo-and-thatch bungalows to four-star resorts.")
        ]),
    Location(
      name: "Sesimbra, Portugal",
      url: "https://upload.wikimedia.org/wikipedia/commons/9/92/Pink_Sesimbra.jpg",
      facts: <LocationFact>[
        LocationFact(
          title: "General information",
          text: "Sesimbra is a municipality of Portugal, in the Setúbal District, "
              "lying at the foothills of the Serra da Arrábida, a mountain range "
              "between Setúbal and Sesimbra. Due to its particular position at the Setúbal Bay, "
              "near the mouth of the Sado River and its natural harbour, it’s an important fishing town. "
              "The town is known for its beaches, fish restaurants and nightlife. "
        ),
        LocationFact(
          title: "Brief history",
          text: "The original name of Celtic origin was Cempsibriga, meaning the high "
              "place (briga) of the Celtic tribe the Cempsi. Close by, "
              "on a mountaintop, 240 m (787.40 ft) above sea level, lies strategically "
              "(the ruins of) the Moorish castle. It was taken from the Moors, "
              "during the Portuguese Reconquista in the year 1165 by king Afonso "
              "Henriques with the help of Frank Crusaders. The battlements afford "
              "a panorama over Sesimbra, its harbour and the surrounding countryside. "
              "In addition to the castle, Sessimbra has two forts dating back to the 17th century; "
              "the Fortress of Saint James of Sesimbra in the centre of town and "
              "the Fort of São Teodósio da Ponta do Cavalo. The former contains "
              "a museum covering Sesimbra's history as a fishing village."
        )
      ]),
    Location(
      name: "Coimbra, Portugal",
      url: "https://upload.wikimedia.org/wikipedia/commons/1/1e/Coimbra_University_tower_building.jpg",
      facts: [
        LocationFact(
          title: "University city",
          text: "Among the many archaeological structures dating back to the Roman era, "
              "when Coimbra was the settlement of Aeminium, are its well-preserved aqueduct "
              "and cryptoporticus. Similarly, buildings from the period when Coimbra was "
              "the capital of Portugal (from 1131 to 1255) still remain. During the late "
              "Middle Ages, with its decline as the political centre of the Kingdom "
              "of Portugal, Coimbra began to evolve into a major cultural centre. "
              "This was in large part helped by the establishment of the University "
              "of Coimbra in 1290, the oldest academic institution in the Portuguese-speaking world. "
              "Apart from attracting many European and international students, "
              "the university is visited by many tourists for its monuments and history. "
              "Its historical buildings were classified as a World Heritage site by UNESCO in 2013."
        )
      ])
  ];
}
