import 'package:db_miner2/model/home_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Home_Helper {
  Home_Helper._();

  static final Home_Helper home_helper = Home_Helper._();
  Database? db;

  String dbname = 'ani.db';
  String tableName = 'animal';
  String colId = 'id';
  String colTitle = 'title';
  String colTxt = "txt";
  String colImage = 'image';

  Future<Database?> initDB() async {
    String path = join(await getDatabasesPath(), dbname);

    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      String query =
          "CREATE TABLE IF NOT EXISTS $tableName ($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, $colImage TEXT, $colTxt TEXT)";

      await db.execute(query);
    });

    return db;
  }

  //home_page
  Future<int> insert1() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage) VALUES('Mammals', 'assets/img/2.jpg');";

    return await db!.rawInsert(query);
  }
  Future<int> insert2() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage) VALUES('Birds', 'assets/img/3.jpg');";

    return await db!.rawInsert(query);
  }
  Future<int> insert3() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage) VALUES('Fish', 'assets/img/4.jpg');";

    return await db!.rawInsert(query);
  }
  Future<int> insert4() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage) VALUES('Reptiles', 'assets/img/5.jpg');";

    return await db!.rawInsert(query);
  }
  Future<int> insert5() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage) VALUES('Amphibians', 'assets/img/6.jpg');";

    return await db!.rawInsert(query);
  }

  //detail mammals
  Future<int> insert6() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Lion', 'assets/img/lion.jpg', 'The lion is a large cat of the\ngenus Panther native to Africa\nand India.')";

    return await db!.rawInsert(query);
  }
  Future<int> insert7() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Elephant', 'assets/img/ele.jpg', 'Elephants are the largest existing\nland animals. Three living\nspecies are currently recognised');";

    return await db!.rawInsert(query);
  }
  Future<int> insert8() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Leopard','assets/img/l.jpg', 'The leopard is one of the five\nextant species in the genus Panther,\na member of the cat family, Field.');";

    return await db!.rawInsert(query);
  }
  Future<int> insert9() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Zebra','assets/img/z.jpg', 'Zebras share the genus Equals\nwith horses and asses, the three\ngroups being the only living.');";

    return await db!.rawInsert(query);
  }
  Future<int> insert10() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Panda','assets/img/p.jpg', 'The giant panda, also known as\nthe panda bear, is a bear speciesful\nto China.');";

    return await db!.rawInsert(query);
  }


  //detail birds
  Future<int> b1() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Swan', 'assets/img/s.jpg', 'Swans are birds of the family\nAnimate within the genus\nCygnus The swans closest relat.');";

    return await db!.rawInsert(query);
  }
  Future<int> b2() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Kingfisher', 'assets/img/kingfisher.jpg', 'Kingfishers or Acceding are a\nfamily of small to medium-sized,\nbrightly colored birds.');";

    return await db!.rawInsert(query);
  }
  Future<int> b3() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Robin','assets/img/robin.jpg', 'The Indian robin is a species of\nbird in the family Musicale.');";

    return await db!.rawInsert(query);
  }
  Future<int> b4() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Dove','assets/img/dove.jpg', 'The dove is a member of the dove\nfamily, Columbia. The bird is also\nknown as the American dove.');";

    return await db!.rawInsert(query);
  }
  Future<int> b5() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Parrot','assets/img/parrot.jpg', 'Parrots, also known as psittacos\nare birds of the roughly comprising\nthe order found mostly in tropical.');";

    return await db!.rawInsert(query);
  }

  //detail fish
  Future<int> f1() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Dolphin', 'assets/img/dolphin.jpg', 'A dolphin is an aquatic mammal\nwithin the infrared Cetacean\nDolphin species belong to\nthe families Dolphin.');";

    return await db!.rawInsert(query);
  }
  Future<int> f2() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Siamese', 'assets/img/f2.jpg', 'The Siamese fighting fish (Betta\nspleens), commonly known\nas the betta.');";

    return await db!.rawInsert(query);
  }
  Future<int> f3() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Goldfish','assets/img/f3.jpg', 'The common goldfish is a\nbreed of goldfish with no other\ndifferences from its living.');";

    return await db!.rawInsert(query);
  }
  Future<int> f4() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Clownfish','assets/img/f4.jpg', 'These fishes live in the warm\nwaters of the Indian Ocean in\nsea anemones.');";

    return await db!.rawInsert(query);
  }
  Future<int> f5() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($colTitle, $colImage, $colTxt) VALUES('Cardinalfish','assets/img/f5.jpg', 'The Banggai cardinalfish\n(Pterapogon kauderni) is a small    \ntropical cardinalfish.');";

    return await db!.rawInsert(query);
  }

  Future<List<Hm>> fetch() async {
    db = await initDB();

    String query = "SELECT * FROM $tableName";

    List<Map<String, dynamic>> data = await db!.rawQuery(query);

    List<Hm> allData =
    data.map((e) => Hm.fromMap(e)).toList();

    return allData;
  }

  Future<int> deleteAllData() async {
    db = await initDB();


    String query = "DELETE FROM $tableName";


    return await db!.rawDelete(query);
  }
}
