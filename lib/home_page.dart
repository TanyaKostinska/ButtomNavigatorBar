import 'package:book/detail_book.dart';
import 'package:flutter/material.dart';

import 'home_library.dart';

class HomePage extends StatelessWidget {
  List<Book> books = [
    Book(
        title: 'Як керувати рабами',
        author: 'Макс Сідоній Фалкс',
        photo:
            'https://images.pexels.com/photos/3767397/pexels-photo-3767397.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        discription:
            '«Е́пос про Гільгаме́ша», або поема «Про того, хто бачив усе» (аккад. ša nagba imuru) — один із найдавніших літературних творів людства, найбільший твір, написаний клинописом, один із найкращих творів літератури Стародавнього Сходу. «Епос» створювався аккадською мовою на основі шумерських оповідей упродовж півтори тисячі років, починаючи з XVIII—XVII століть до н. е. Його найповнішу версію віднайшли в середині XIX століття під час розкопок клинописної бібліотеки царя Ашшурбаніпала в Ніневії. Вона була записана на 12 шестиколонних табличках дрібним клинописом, містила близько 3 тисяч віршів і датувалась VII століттям до н. е. Також у XX столітті були віднайдені фрагменти інших версій епосу, зокрема хуритською і хетською мовами.'),
    Book(
        author: 'Анджели Нанетті',
        title: 'Мій дідусь був черешнею',
        discription:
            '«Е́пос про Гільгаме́ша», або поема «Про того, хто бачив усе» (аккад. ša nagba imuru) — один із найдавніших літературних творів людства, найбільший твір, написаний клинописом, один із найкращих творів літератури Стародавнього Сходу. «Епос» створювався аккадською мовою на основі шумерських оповідей упродовж півтори тисячі років, починаючи з XVIII—XVII століть до н. е. Його найповнішу версію віднайшли в середині XIX століття під час розкопок клинописної бібліотеки царя Ашшурбаніпала в Ніневії. Вона була записана на 12 шестиколонних табличках дрібним клинописом, містила близько 3 тисяч віршів і датувалась VII століттям до н. е. Також у XX столітті були віднайдені фрагменти інших версій епосу, зокрема хуритською і хетською мовами.'),
    Book(
        author: 'Тома Роббінса',
        title: 'Напівсонний у піжамі в жабках',
        discription:
            '«Е́пос про Гільгаме́ша», або поема «Про того, хто бачив усе» (аккад. ša nagba imuru) — один із найдавніших літературних творів людства, найбільший твір, написаний клинописом, один із найкращих творів літератури Стародавнього Сходу. «Епос» створювався аккадською мовою на основі шумерських оповідей упродовж півтори тисячі років, починаючи з XVIII—XVII століть до н. е. Його найповнішу версію віднайшли в середині XIX століття під час розкопок клинописної бібліотеки царя Ашшурбаніпала в Ніневії. Вона була записана на 12 шестиколонних табличках дрібним клинописом, містила близько 3 тисяч віршів і датувалась VII століттям до н. е. Також у XX столітті були віднайдені фрагменти інших версій епосу, зокрема хуритською і хетською мовами.'),
    Book(
        author: 'Ентоні Берджеса',
        title: 'Однорукі оплески',
        discription:
            '«Е́пос про Гільгаме́ша», або поема «Про того, хто бачив усе» (аккад. ša nagba imuru) — один із найдавніших літературних творів людства, найбільший твір, написаний клинописом, один із найкращих творів літератури Стародавнього Сходу. «Епос» створювався аккадською мовою на основі шумерських оповідей упродовж півтори тисячі років, починаючи з XVIII—XVII століть до н. е. Його найповнішу версію віднайшли в середині XIX століття під час розкопок клинописної бібліотеки царя Ашшурбаніпала в Ніневії. Вона була записана на 12 шестиколонних табличках дрібним клинописом, містила близько 3 тисяч віршів і датувалась VII століттям до н. е. Також у XX столітті були віднайдені фрагменти інших версій епосу, зокрема хуритською і хетською мовами.'),
    Book(
        author: 'Антуан де Сент-Екзюпері',
        title: 'Маленький принц',
        photo:
            'https://images.pexels.com/photos/3767397/pexels-photo-3767397.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        discription:
            '«Е́пос про Гільгаме́ша», або поема «Про того, хто бачив усе» (аккад. ša nagba imuru) — один із найдавніших літературних творів людства, найбільший твір, написаний клинописом, один із найкращих творів літератури Стародавнього Сходу. «Епос» створювався аккадською мовою на основі шумерських оповідей упродовж півтори тисячі років, починаючи з XVIII—XVII століть до н. е. Його найповнішу версію віднайшли в середині XIX століття під час розкопок клинописної бібліотеки царя Ашшурбаніпала в Ніневії. Вона була записана на 12 шестиколонних табличках дрібним клинописом, містила близько 3 тисяч віршів і датувалась VII століттям до н. е. Також у XX столітті були віднайдені фрагменти інших версій епосу, зокрема хуритською і хетською мовами.'),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Books'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'ListView.builder',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBook(
                            book: books[index],
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(books[index].title),
                      subtitle: Text(books[index].author),
                    ),
                  );
                }),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeLibrary()));
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.account_box),
                SizedBox(width: 15),
                Text('Home Library'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Book {
  final String author;
  final String title;
  final String discription;
  final String? photo;

  Book({
    required this.title,
    required this.author,
    required this.discription,
    this.photo,
  });
}
