import '../models/song_data_model.dart';

const String trendingNow = 'Trending right now';

const String search = 'Search';

const String recentFavs = " Recent favourites";

const songData = [
  {
    'image':
        'https://m.media-amazon.com/images/M/MV5BNjYzY2ZhMDktYzIwOC00YzJkLThjYzAtZGQzY2NiZjczNzAwXkEyXkFqcGdeQXVyMTMzMzUzMDM2._V1_UY100_UX100_AL_.jpg',
    'name': 'Hum To Deewane Hue',
    'singer': 'Abhijeet & Alka Yagnik',
    'file': 'Hum To Deewane Huye - Badshaah.mp3'
  },
  {
    'image':
        'https://m.media-amazon.com/images/M/MV5BMzc5MzcxYTktOTlmMS00YzFkLWE3MTktMDRiMTY3ZTRlNmVlXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY100_CR24,0,100,100_AL_.jpg',
    'name': 'Mohabbat Ho Gayee',
    'singer': 'Abhijeet & Alka Yagnik',
    'file': 'Mohabbat Ho Gayee - Badshaah.mp3'
  },
  {
    'image':
        'https://m.media-amazon.com/images/M/MV5BMzM1ZDRjZjEtZWRkNS00YzkwLTlkOTAtYmMzMDU3ZTkyYjU1XkEyXkFqcGdeQXVyODU5NTMxODE@._V1_UX100_CR0,0,100,100_AL_.jpg',
    'name': 'Wo Ladki Jo',
    'singer': 'Abhijeet Bhattacharya',
    'file': 'Wo Ladki Jo - Badshaah.mp3'
  },
  {
    'image':
        'https://tse1.mm.bing.net/th?id=OIP.EWj72mQK27Susg8hfxrrKAHaDJ&pid=Api&rs=1&c=1&qlt=95&w=243&h=103',
    'name': 'Dil Mein Thee',
    'singer': 'Sonu Nigam',
    'file': 'Dil Mein Thee - Aa Bhi Ja O Piya 128 Kbps.mp3'
  },
  {
    'image':
        'https://tse1.mm.bing.net/th?id=OIP._4MeyockkLgUv7-_rMw4XQHaKn&pid=Api&rs=1&c=1&qlt=95&w=67&h=96',
    'name': 'Bidaai',
    'singer': 'Richa Sharma',
    'file': 'Baabul - Bidai Song - Baabul.mp3'
  },
  {
    'image':
        'https://tse1.mm.bing.net/th?id=OIP._4MeyockkLgUv7-_rMw4XQHaKn&pid=Api&rs=1&c=1&qlt=95&w=67&h=96',
    'name': 'Har Manzar',
    'singer': 'Kunal Ganjawala',
    'file': 'Har Manzar - Baabul.mp3'
  }
];

List<SongData> listData = songData.map((e) => SongData.fromJson(e)).toList();

List<String> categoryData = [
  "Trending right now",
  "Rock",
  "Hip Hop",
  "Electro",
  "Recent favourites"
];
