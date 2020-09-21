import 'package:flutter_quickstart/model/Location.dart';
import 'package:flutter_quickstart/model/location_fact.dart';

class MockLocation extends Location {
  static FetchAny() {
    return Location(
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
              "Koh Lipey) has been through rapid development to face the increasing tourism demand."
        ),
        LocationFact(
            title: "Beaches",
            text: "Sunset Beach (west), Sunrise Beach (east), and Pattaya Beach "
                "(south) are the three main beaches of Koh Lipe. The island and "
                "its surroundings are quite famous for snorkelling and scuba diving; "
                "its coral reefs are easy to reach as they start just a few metres "
                "away from each of the four main island’s beaches. A large number "
                "of accommodation choices are available on Koh Lipe, from "
                "bamboo-and-thatch bungalows to four-star resorts."
        )
      ]
    );
  }
}