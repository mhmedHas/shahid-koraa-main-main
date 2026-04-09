// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'package:korrrrrrrr/screens/film_screens/film_deitels.dart';
// import 'package:korrrrrrrr/serias_screens/series_detiels.dart';

// // الصفحة الرئيسية للأفلام
// class FilmPage extends StatefulWidget {
//   @override
//   _FilmPageState createState() => _FilmPageState();
// }

// class _FilmPageState extends State<FilmPage> with TickerProviderStateMixin {
//   PageController _pageController = PageController();
//   TextEditingController _searchController = TextEditingController();
//   Timer? _timer;
//   int _currentPage = 0;
//   bool _isSearching = false;
//   bool _showSearchBar = false;
//   List<Map<String, String>> _filteredMovies = [];
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;

//   final List<Map<String, String>> allMovies = [
//     {
//       "title": "The Batman",
//       "image": "assets/film/f2ed560fe62d4de524ad4be43d5658fb.jpg",
//       "rating": "8.2",
//       "year": "2022",
//       "genre": "Action",
//     },
//     {
//       "title": "Joker",
//       "image": "assets/film/42bbbaefd687903bc80b02c014e64a5b.jpg",
//       "rating": "8.4",
//       "year": "2019",
//       "genre": "Drama",
//     },
//     {
//       "title": "Avengers: Endgame",
//       "image": "assets/film/f97b4660ee04f70b8ee9b106a681a3d1.jpg",
//       "rating": "8.4",
//       "year": "2019",
//       "genre": "Action",
//     },
//     {
//       "title": "John Wick",
//       "image": "assets/film/63171370473454a0f2981d989213f8f3.jpg",
//       "rating": "7.4",
//       "year": "2014",
//       "genre": "Action",
//     },
//     {
//       "title": "Spider-Man",
//       "image": "assets/film/f2ed560fe62d4de524ad4be43d5658fb.jpg",
//       "rating": "8.7",
//       "year": "2021",
//       "genre": "Action",
//     },
//     {
//       "title": "The Batman",
//       "image": "assets/film/f2ed560fe62d4de524ad4be43d5658fb.jpg",
//       "rating": "8.2",
//       "year": "2022",
//       "genre": "Action",
//     },
//     {
//       "title": "Joker",
//       "image": "assets/film/42bbbaefd687903bc80b02c014e64a5b.jpg",
//       "rating": "8.4",
//       "year": "2019",
//       "genre": "Drama",
//     },
//     {
//       "title": "Avengers: Endgame",
//       "image": "assets/film/f97b4660ee04f70b8ee9b106a681a3d1.jpg",
//       "rating": "8.4",
//       "year": "2019",
//       "genre": "Action",
//     },
//     {
//       "title": "John Wick",
//       "image": "assets/film/63171370473454a0f2981d989213f8f3.jpg",
//       "rating": "7.4",
//       "year": "2014",
//       "genre": "Action",
//     },
//     {
//       "title": "Spider-Man",
//       "image": "assets/film/f2ed560fe62d4de524ad4be43d5658fb.jpg",
//       "rating": "8.7",
//       "year": "2021",
//       "genre": "Action",
//     },
//     {
//       "title": "The Batman",
//       "image": "assets/film/f2ed560fe62d4de524ad4be43d5658fb.jpg",
//       "rating": "8.2",
//       "year": "2022",
//       "genre": "Action",
//     },
//     {
//       "title": "Joker",
//       "image": "assets/film/42bbbaefd687903bc80b02c014e64a5b.jpg",
//       "rating": "8.4",
//       "year": "2019",
//       "genre": "Drama",
//     },
//     {
//       "title": "Avengers: Endgame",
//       "image": "assets/film/f97b4660ee04f70b8ee9b106a681a3d1.jpg",
//       "rating": "8.4",
//       "year": "2019",
//       "genre": "Action",
//     },
//     {
//       "title": "John Wick",
//       "image": "assets/film/63171370473454a0f2981d989213f8f3.jpg",
//       "rating": "7.4",
//       "year": "2014",
//       "genre": "Action",
//     },
//     {
//       "title": "Spider-Man",
//       "image": "assets/film/f2ed560fe62d4de524ad4be43d5658fb.jpg",
//       "rating": "8.7",
//       "year": "2021",
//       "genre": "Action",
//     },
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _filteredMovies = allMovies;
//     _animationController = AnimationController(
//       duration: Duration(milliseconds: 300),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
//     );
//     _animationController.forward();
//     _startAutoScroll();
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       if (!_isSearching && _pageController.hasClients) {
//         if (_currentPage < 7) {
//           _currentPage++;
//         } else {
//           _currentPage = 0;
//         }
//         _pageController.animateToPage(
//           _currentPage,
//           duration: Duration(milliseconds: 800),
//           curve: Curves.easeInOutCubic,
//         );
//       }
//     });
//   }

//   void _searchMovies(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         _filteredMovies = allMovies;
//         _isSearching = false;
//       } else {
//         _filteredMovies = allMovies
//             .where(
//               (movie) =>
//                   movie['title']!.toLowerCase().contains(query.toLowerCase()),
//             )
//             .toList();
//         _isSearching = true;
//       }
//     });
//   }

//   void _toggleSearch() {
//     setState(() {
//       _showSearchBar = !_showSearchBar;
//       if (!_showSearchBar) {
//         _searchController.clear();
//         _searchMovies('');
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     _searchController.dispose();
//     _animationController.dispose();
//     super.dispose();
//   }

//   Widget _buildFeaturedMoviesCarousel() {
//     List<Map<String, String>> featuredMovies = allMovies.take(8).toList();

//     return Container(
//       height: 280,
//       margin: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               children: [
//                 Container(
//                   width: 4,
//                   height: 25,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.amber, Colors.orange],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                     ),
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   'الأفلام المميزة',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     shadows: [
//                       Shadow(
//                         offset: Offset(2, 2),
//                         blurRadius: 4,
//                         color: Colors.black.withOpacity(0.5),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 15),
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: featuredMovies.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 final movie = featuredMovies[index];
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => FilmDetailsPage(
//                           title: movie["title"]!,
//                           image: movie["image"]!,
//                           rating: movie["rating"]!,
//                           year: movie["year"]!,
//                           genre: movie["genre"]!,
//                         ),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 15),
//                     child: Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.4),
//                                   spreadRadius: 3,
//                                   blurRadius: 15,
//                                   offset: Offset(0, 8),
//                                 ),
//                               ],
//                             ),
//                             child: Image.asset(
//                               featuredMovies[index]['image']!,
//                               fit: BoxFit.cover,
//                               errorBuilder: (context, error, stackTrace) {
//                                 return Container(
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       colors: [
//                                         Colors.grey[800]!,
//                                         Colors.grey[900]!,
//                                       ],
//                                       begin: Alignment.topLeft,
//                                       end: Alignment.bottomRight,
//                                     ),
//                                   ),
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.movie_creation_outlined,
//                                       size: 60,
//                                       color: Colors.white54,
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                               colors: [
//                                 Colors.transparent,
//                                 Colors.transparent,
//                                 Colors.black.withOpacity(0.9),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 20,
//                           left: 20,
//                           right: 20,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 featuredMovies[index]['title']!,
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   shadows: [
//                                     Shadow(
//                                       offset: Offset(1, 1),
//                                       blurRadius: 3,
//                                       color: Colors.black,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(height: 8),
//                               Row(
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                       horizontal: 8,
//                                       vertical: 4,
//                                     ),
//                                     decoration: BoxDecoration(
//                                       color: Colors.amber,
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.min,
//                                       children: [
//                                         Icon(
//                                           Icons.star,
//                                           color: Colors.black,
//                                           size: 16,
//                                         ),
//                                         SizedBox(width: 4),
//                                         Text(
//                                           featuredMovies[index]['rating'] ??
//                                               '8.0',
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(width: 10),
//                                   Text(
//                                     featuredMovies[index]['year'] ?? '2024',
//                                     style: TextStyle(
//                                       color: Colors.white70,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   Spacer(),
//                                   Container(
//                                     padding: EdgeInsets.all(8),
//                                     decoration: BoxDecoration(
//                                       color: Colors.red.withOpacity(0.8),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: Icon(
//                                       Icons.play_arrow,
//                                       color: Colors.white,
//                                       size: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               featuredMovies.length,
//               (index) => AnimatedContainer(
//                 duration: Duration(milliseconds: 300),
//                 margin: EdgeInsets.symmetric(horizontal: 4),
//                 width: _currentPage == index ? 30 : 10,
//                 height: 6,
//                 decoration: BoxDecoration(
//                   gradient: _currentPage == index
//                       ? LinearGradient(colors: [Colors.amber, Colors.orange])
//                       : null,
//                   color: _currentPage == index ? null : Colors.white38,
//                   borderRadius: BorderRadius.circular(3),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   //////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   Widget _buildMovieCard(Map<String, String> movie, int index) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => FilmDetailsPage(
//               title: movie["title"]!,
//               image: movie["image"]!,
//               rating: movie["rating"]!,
//               year: movie["year"]!,
//               genre: movie["genre"]!,

//             ),
//           ),
//         );
//       },
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300 + (index * 50)),
//         child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => SeriesDetailsPage(
//                   title: movie["title"]!,
//                   image: movie["image"]!,
//                   rating: movie["rating"]!,
//                   year: movie["year"]!,
//                   genre: movie["genre"]!,
//                 ),
//               ),
//             );
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(18),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3),
//                   spreadRadius: 2,
//                   blurRadius: 12,
//                   offset: Offset(0, 6),
//                 ),
//               ],
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(18),
//               child: Stack(
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     height: double.infinity,
//                     child: Image.asset(
//                       movie['image']!,
//                       fit: BoxFit.cover,
//                       errorBuilder: (context, error, stackTrace) {
//                         return Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [Colors.grey[800]!, Colors.grey[900]!],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ),
//                           ),
//                           child: Center(
//                             child: Icon(
//                               Icons.movie_creation_outlined,
//                               size: 40,
//                               color: Colors.white54,
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.8),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 8,
//                     right: 8,
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
//                       decoration: BoxDecoration(
//                         color: Colors.amber,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Icon(Icons.star, color: Colors.black, size: 12),
//                           SizedBox(width: 2),
//                           Text(
//                             movie['rating'] ?? '8.0',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 10,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   // Center(
//                   //   child: Container(
//                   //     width: 50,
//                   //     height: 50,
//                   //     decoration: BoxDecoration(
//                   //       color: Colors.black.withOpacity(0.7),
//                   //       shape: BoxShape.circle,
//                   //       border: Border.all(
//                   //         color: Colors.white.withOpacity(0.3),
//                   //         width: 2,
//                   //       ),
//                   //     ),
//                   //     child: Icon(
//                   //       Icons.play_arrow,
//                   //       color: Colors.white,
//                   //       size: 28,
//                   //     ),
//                   //   ),
//                   // ),
//                   Positioned(
//                     bottom: 8,
//                     left: 8,
//                     right: 8,
//                     child: Text(
//                       movie['title']!,
//                       style: TextStyle(
//                         fontSize: 13,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         shadows: [
//                           Shadow(
//                             offset: Offset(1, 1),
//                             blurRadius: 2,
//                             color: Colors.black,
//                           ),
//                         ],
//                       ),
//                       textAlign: TextAlign.center,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF8B4513),
//         elevation: 0,
//         title: Text(
//           'مكتبة الأفلام',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: _toggleSearch,
//             icon: Icon(
//               _showSearchBar ? Icons.close : Icons.search,
//               color: Colors.white,
//               size: 28,
//             ),
//           ),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF8B4513), Color(0xFF654321), Color(0xFF2F1B14)],
//           ),
//         ),
//         child: FadeTransition(
//           opacity: _fadeAnimation,
//           child: CustomScrollView(
//             slivers: [
//               // شريط البحث (يظهر عند الضغط على الأيقونة)
//               if (_showSearchBar)
//                 SliverToBoxAdapter(
//                   child: Container(
//                     padding: EdgeInsets.all(20),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(25),
//                         border: Border.all(
//                           color: Colors.white.withOpacity(0.2),
//                           width: 1,
//                         ),
//                       ),
//                       child: TextField(
//                         controller: _searchController,
//                         onChanged: _searchMovies,
//                         style: TextStyle(color: Colors.white),
//                         autofocus: true,
//                         decoration: InputDecoration(
//                           hintText: 'ابحث عن فيلم...',
//                           hintStyle: TextStyle(color: Colors.white60),
//                           prefixIcon: Icon(Icons.search, color: Colors.white70),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(
//                             horizontal: 20,
//                             vertical: 15,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//               // العرض المميز (يظهر فقط عند عدم البحث)
//               if (!_isSearching)
//                 SliverToBoxAdapter(child: _buildFeaturedMoviesCarousel()),

//               // عنوان جميع الأفلام
//               SliverToBoxAdapter(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 4,
//                         height: 25,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [Colors.red, Colors.orange],
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                           ),
//                           borderRadius: BorderRadius.circular(2),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(
//                         _isSearching ? 'نتائج البحث' : 'جميع الأفلام',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                           shadows: [
//                             Shadow(
//                               offset: Offset(2, 2),
//                               blurRadius: 4,
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               // شبكة الأفلام (3 في الصف)
//               SliverPadding(
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 sliver: SliverGrid(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     childAspectRatio: 0.65,
//                     crossAxisSpacing: 12,
//                     mainAxisSpacing: 15,
//                   ),
//                   delegate: SliverChildBuilderDelegate((context, index) {
//                     return _buildMovieCard(_filteredMovies[index], index);
//                   }, childCount: _filteredMovies.length),
//                 ),
//               ),

//               // مساحة إضافية في النهاية
//               SliverToBoxAdapter(child: SizedBox(height: 30)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// // }
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:convert'; // For JSON decoding
// import 'package:http/http.dart' as http; // For making HTTP requests
// import 'package:cloud_firestore/cloud_firestore.dart'; // For Firebase Firestore

// import 'package:korrrrrrrr/screens/film_screens/film_deitels.dart';
// import 'package:korrrrrrrr/serias_screens/series_detiels.dart';

// // Define a Movie model to better handle data
// class Movie {
//   final String id;
//   final String title;
//   final String imageUrl;
//   final String rating;
//   final String year;
//   final String genre;
//   String? videoLink; // Nullable video link from Firebase

//   Movie({
//     required this.id,
//     required this.title,
//     required this.imageUrl,
//     required this.rating,
//     required this.year,
//     required this.genre,
//     this.videoLink,
//   });

//   // Factory constructor to create a Movie from TMDB API response
//   factory Movie.fromJson(Map<String, dynamic> json) {
//     return Movie(
//       id: json['id'].toString(),
//       title: json['title'] ?? 'N/A',
//       imageUrl: json['poster_path'] != null
//           ? "https://image.tmdb.org/t/p/w500${json['poster_path']}"
//           : '', // Use empty string if no poster
//       rating: (json['vote_average'] as num?)?.toStringAsFixed(1) ?? 'N/A',
//       year: (json['release_date'] as String?)?.split('-').first ?? 'N/A',
//       genre: 'N/A', // TMDB genre_ids need mapping, simplified for this example
//     );
//   }
// }

// class FilmPage extends StatefulWidget {
//   @override
//   _FilmPageState createState() => _FilmPageState();
// }

// class _FilmPageState extends State<FilmPage> with TickerProviderStateMixin {
//   PageController _pageController = PageController();
//   TextEditingController _searchController = TextEditingController();
//   Timer? _timer;
//   int _currentPage = 0;
//   bool _isSearching = false;
//   bool _showSearchBar = false;

//   List<Movie> _allMovies = []; // Stores all fetched movies
//   List<Movie> _filteredMovies = []; // Stores movies after search filter

//   late Future<List<Movie>> _moviesFuture; // Future for fetching movies
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: Duration(milliseconds: 300),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
//     );
//     _animationController.forward();

//     _moviesFuture = _fetchAndProcessMovies();
//     _startAutoScroll();
//   }

//   Future<List<Movie>> _fetchAndProcessMovies() async {
//     final response = await http.get(
//       Uri.parse(
//         'https://api.themoviedb.org/3/movie/popular?api_key=4b4def61e74e0998a748e2c7806d10b0&language=en-US&page=1',
//       ),
//     );

//     if (response.statusCode == 200) {
//       final jsonData = json.decode(response.body);
//       List<Movie> fetchedMovies = List<Map<String, dynamic>>.from(
//         jsonData['results'],
//       ).map((json) => Movie.fromJson(json)).toList();

//       // Fetch video links from Firebase for each movie
//       for (var movie in fetchedMovies) {
//         movie.videoLink = await _getVideoLink(movie.id);
//       }

//       setState(() {
//         _allMovies = fetchedMovies;
//         _filteredMovies =
//             _allMovies; // Initialize filtered list with all movies
//       });
//       return fetchedMovies;
//     } else {
//       throw Exception('Failed to load movies from TMDB');
//     }
//   }

//   Future<void> _addLink(String movieId, String link) async {
//     await _firestore.collection("movies").doc(movieId).set({
//       'link': link,
//     }, SetOptions(merge: true));

//     // Update the specific movie's link in the local list and trigger rebuild
//     setState(() {
//       final index = _allMovies.indexWhere((movie) => movie.id == movieId);
//       if (index != -1) {
//         _allMovies[index].videoLink = link;
//         // Re-apply filter to update _filteredMovies if searching
//         _searchMovies(_searchController.text);
//       }
//     });
//   }

//   Future<String?> _getVideoLink(String id) async {
//     final doc = await _firestore.collection('movies').doc(id).get();
//     return (doc.exists && doc.data()?['link'] != null)
//         ? doc.data()!['link'] as String
//         : null;
//   }

//   void _showAddLinkDialog(String movieId) {
//     final TextEditingController _controller = TextEditingController();
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('إضافة رابط مشاهدة'),
//         content: TextField(
//           controller: _controller,
//           decoration: const InputDecoration(hintText: 'ضع الرابط هنا'),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text('إلغاء'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               _addLink(movieId, _controller.text);
//               Navigator.pop(context);
//             },
//             child: const Text('حفظ'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       if (!_isSearching &&
//           _pageController.hasClients &&
//           _allMovies.isNotEmpty) {
//         // Ensure there are enough movies for the carousel (at least 8 for your current logic)
//         if (_currentPage < (_allMovies.take(8).length - 1)) {
//           _currentPage++;
//         } else {
//           _currentPage = 0;
//         }
//         _pageController.animateToPage(
//           _currentPage,
//           duration: Duration(milliseconds: 800),
//           curve: Curves.easeInOutCubic,
//         );
//       }
//     });
//   }

//   void _searchMovies(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         _filteredMovies = _allMovies;
//         _isSearching = false;
//       } else {
//         _filteredMovies = _allMovies
//             .where(
//               (movie) =>
//                   movie.title.toLowerCase().contains(query.toLowerCase()),
//             )
//             .toList();
//         _isSearching = true;
//       }
//     });
//   }

//   void _toggleSearch() {
//     setState(() {
//       _showSearchBar = !_showSearchBar;
//       if (!_showSearchBar) {
//         _searchController.clear();
//         _searchMovies('');
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     _searchController.dispose();
//     _animationController.dispose();
//     super.dispose();
//   }

//   Widget _buildFeaturedMoviesCarousel(List<Movie> movies) {
//     List<Movie> featuredMovies = movies
//         .take(8)
//         .toList(); // Take first 8 for carousel
//     if (featuredMovies.isEmpty) {
//       return SizedBox.shrink(); // Don't show if no movies
//     }

//     return Container(
//       height: 280,
//       margin: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               children: [
//                 Container(
//                   width: 4,
//                   height: 25,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.amber, Colors.orange],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                     ),
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   'الأفلام المميزة',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     shadows: [
//                       Shadow(
//                         offset: Offset(2, 2),
//                         blurRadius: 4,
//                         color: Colors.black.withOpacity(0.5),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 15),
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: featuredMovies.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 final movie = featuredMovies[index];
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => SeriesDetailsPage(
//                           title: movie.title,
//                           image: movie.imageUrl,
//                           rating: movie.rating,
//                           year: movie.year,
//                           genre: movie.genre,
//                           videoLink: movie.videoLink, // Pass the video link
//                         ),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 15),
//                     child: Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.4),
//                                   spreadRadius: 3,
//                                   blurRadius: 15,
//                                   offset: Offset(0, 8),
//                                 ),
//                               ],
//                             ),
//                             child: movie.imageUrl.isNotEmpty
//                                 ? Image.network(
//                                     movie.imageUrl,
//                                     fit: BoxFit.cover,
//                                     errorBuilder: (context, error, stackTrace) {
//                                       return Container(
//                                         decoration: BoxDecoration(
//                                           gradient: LinearGradient(
//                                             colors: [
//                                               Colors.grey[800]!,
//                                               Colors.grey[900]!,
//                                             ],
//                                             begin: Alignment.topLeft,
//                                             end: Alignment.bottomRight,
//                                           ),
//                                         ),
//                                         child: Center(
//                                           child: Icon(
//                                             Icons.movie_creation_outlined,
//                                             size: 60,
//                                             color: Colors.white54,
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                   )
//                                 : Container(
//                                     decoration: BoxDecoration(
//                                       gradient: LinearGradient(
//                                         colors: [
//                                           Colors.grey[800]!,
//                                           Colors.grey[900]!,
//                                         ],
//                                         begin: Alignment.topLeft,
//                                         end: Alignment.bottomRight,
//                                       ),
//                                     ),
//                                     child: Center(
//                                       child: Icon(
//                                         Icons.movie_creation_outlined,
//                                         size: 60,
//                                         color: Colors.white54,
//                                       ),
//                                     ),
//                                   ),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                               colors: [
//                                 Colors.transparent,
//                                 Colors.transparent,
//                                 Colors.black.withOpacity(0.9),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 20,
//                           left: 20,
//                           right: 20,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 movie.title,
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   shadows: [
//                                     Shadow(
//                                       offset: Offset(1, 1),
//                                       blurRadius: 3,
//                                       color: Colors.black,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               SizedBox(height: 8),
//                               Row(
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                       horizontal: 8,
//                                       vertical: 4,
//                                     ),
//                                     decoration: BoxDecoration(
//                                       color: Colors.amber,
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.min,
//                                       children: [
//                                         Icon(
//                                           Icons.star,
//                                           color: Colors.black,
//                                           size: 16,
//                                         ),
//                                         SizedBox(width: 4),
//                                         Text(
//                                           movie.rating,
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(width: 10),
//                                   Text(
//                                     movie.year,
//                                     style: TextStyle(
//                                       color: Colors.white70,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   Spacer(),
//                                   // Link status icon for carousel items
//                                   Container(
//                                     padding: const EdgeInsets.all(8),
//                                     decoration: BoxDecoration(
//                                       color: Colors.black.withOpacity(0.7),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: movie.videoLink != null
//                                         ? const Icon(
//                                             Icons.check_circle,
//                                             color: Colors.green,
//                                             size: 20,
//                                           )
//                                         : const Icon(
//                                             Icons.link_off,
//                                             color: Colors.red,
//                                             size: 20,
//                                           ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               featuredMovies.length,
//               (index) => AnimatedContainer(
//                 duration: Duration(milliseconds: 300),
//                 margin: EdgeInsets.symmetric(horizontal: 4),
//                 width: _currentPage == index ? 30 : 10,
//                 height: 6,
//                 decoration: BoxDecoration(
//                   gradient: _currentPage == index
//                       ? LinearGradient(colors: [Colors.amber, Colors.orange])
//                       : null,
//                   color: _currentPage == index ? null : Colors.white38,
//                   borderRadius: BorderRadius.circular(3),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMovieCard(Movie movie, int index) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => SeriesDetailsPage(
//               title: movie.title,
//               image: movie.imageUrl,
//               rating: movie.rating,
//               year: movie.year,
//               genre: movie.genre,
//               videoLink: movie.videoLink, // Pass the video link
//             ),
//           ),
//         );
//       },
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300 + (index * 50)),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(18),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.3),
//                 spreadRadius: 2,
//                 blurRadius: 12,
//                 offset: Offset(0, 6),
//               ),
//             ],
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(18),
//             child: Stack(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: double.infinity,
//                   child: movie.imageUrl.isNotEmpty
//                       ? Image.network(
//                           movie.imageUrl,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return Container(
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   colors: [
//                                     Colors.grey[800]!,
//                                     Colors.grey[900]!,
//                                   ],
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Icon(
//                                   Icons.movie_creation_outlined,
//                                   size: 40,
//                                   color: Colors.white54,
//                                 ),
//                               ),
//                             );
//                           },
//                         )
//                       : Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [Colors.grey[800]!, Colors.grey[900]!],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ),
//                           ),
//                           child: Center(
//                             child: Icon(
//                               Icons.movie_creation_outlined,
//                               size: 40,
//                               color: Colors.white54,
//                             ),
//                           ),
//                         ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Colors.transparent,
//                         Colors.transparent,
//                         Colors.black.withOpacity(0.8),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 8,
//                   right: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Icon(Icons.star, color: Colors.black, size: 12),
//                         SizedBox(width: 2),
//                         Text(
//                           movie.rating,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 10,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 8,
//                   left: 8,
//                   right: 8,
//                   child: Text(
//                     movie.title,
//                     style: TextStyle(
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       shadows: [
//                         Shadow(
//                           offset: Offset(1, 1),
//                           blurRadius: 2,
//                           color: Colors.black,
//                         ),
//                       ],
//                     ),
//                     textAlign: TextAlign.center,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 // Link status icon for grid items
//                 Positioned(
//                   bottom: 8,
//                   right: 8,
//                   child: GestureDetector(
//                     onTap: () => _showAddLinkDialog(movie.id),
//                     child: Container(
//                       padding: const EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                         color: Colors.black54,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: movie.videoLink != null
//                           ? const Icon(
//                               Icons.check_circle,
//                               color: Colors.green,
//                               size: 20,
//                             )
//                           : const Icon(
//                               Icons.link_off,
//                               color: Colors.red,
//                               size: 20,
//                             ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF8B4513),
//         elevation: 0,
//         title: Text(
//           'مكتبة الأفلام',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: _toggleSearch,
//             icon: Icon(
//               _showSearchBar ? Icons.close : Icons.search,
//               color: Colors.white,
//               size: 28,
//             ),
//           ),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF8B4513), Color(0xFF654321), Color(0xFF2F1B14)],
//           ),
//         ),
//         child: FadeTransition(
//           opacity: _fadeAnimation,
//           child: FutureBuilder<List<Movie>>(
//             future: _moviesFuture,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(
//                   child: CircularProgressIndicator(color: Colors.amber),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(
//                   child: Text(
//                     "Error: ${snapshot.error}",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 );
//               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                 return Center(
//                   child: Text(
//                     "No movies found.",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 );
//               } else {
//                 return CustomScrollView(
//                   slivers: [
//                     if (_showSearchBar)
//                       SliverToBoxAdapter(
//                         child: Container(
//                           padding: EdgeInsets.all(20),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white.withOpacity(0.1),
//                               borderRadius: BorderRadius.circular(25),
//                               border: Border.all(
//                                 color: Colors.white.withOpacity(0.2),
//                                 width: 1,
//                               ),
//                             ),
//                             child: TextField(
//                               controller: _searchController,
//                               onChanged: _searchMovies,
//                               style: TextStyle(color: Colors.white),
//                               autofocus: true,
//                               decoration: InputDecoration(
//                                 hintText: 'ابحث عن فيلم...',
//                                 hintStyle: TextStyle(color: Colors.white60),
//                                 prefixIcon: Icon(
//                                   Icons.search,
//                                   color: Colors.white70,
//                                 ),
//                                 border: InputBorder.none,
//                                 contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 20,
//                                   vertical: 15,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     if (!_isSearching)
//                       SliverToBoxAdapter(
//                         child: _buildFeaturedMoviesCarousel(snapshot.data!),
//                       ),
//                     SliverToBoxAdapter(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 10,
//                         ),
//                         child: Row(
//                           children: [
//                             Container(
//                               width: 4,
//                               height: 25,
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   colors: [Colors.red, Colors.orange],
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                 ),
//                                 borderRadius: BorderRadius.circular(2),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               _isSearching ? 'نتائج البحث' : 'جميع الأفلام',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 shadows: [
//                                   Shadow(
//                                     offset: Offset(2, 2),
//                                     blurRadius: 4,
//                                     color: Colors.black.withOpacity(0.5),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SliverPadding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       sliver: SliverGrid(
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3,
//                           childAspectRatio: 0.65,
//                           crossAxisSpacing: 12,
//                           mainAxisSpacing: 15,
//                         ),
//                         delegate: SliverChildBuilderDelegate((context, index) {
//                           return _filteredMovies.isNotEmpty
//                               ? _buildMovieCard(_filteredMovies[index], index)
//                               : Center(
//                                   child: Text(
//                                     "No results found.",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 );
//                         }, childCount: _filteredMovies.length),
//                       ),
//                     ),
//                     SliverToBoxAdapter(child: SizedBox(height: 30)),
//                   ],
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:convert'; // For JSON decoding
// import 'package:http/http.dart' as http; // For making HTTP requests
// import 'package:cloud_firestore/cloud_firestore.dart'; // For Firebase Firestore

// import 'package:korrrrrrrr/screens/film_screens/film_deitels.dart';
// import 'package:korrrrrrrr/serias_screens/series_detiels.dart';

// // Define a Movie model to better handle data
// class Movie {
//   final String id;
//   final String title;
//   final String imageUrl;
//   final String rating;
//   final String year;
//   final String genre;
//   String? videoLink; // Nullable video link from Firebase

//   Movie({
//     required this.id,
//     required this.title,
//     required this.imageUrl,
//     required this.rating,
//     required this.year,
//     required this.genre,
//     this.videoLink,
//   });

//   // Factory constructor to create a Movie from TMDB API response
//   factory Movie.fromJson(Map<String, dynamic> json) {
//     return Movie(
//       id: json['id'].toString(),
//       title: json['title'] ?? 'N/A',
//       imageUrl: json['poster_path'] != null
//           ? "https://image.tmdb.org/t/p/w500${json['poster_path']}"
//           : '', // Use empty string if no poster
//       rating: (json['vote_average'] as num?)?.toStringAsFixed(1) ?? 'N/A',
//       year: (json['release_date'] as String?)?.split('-').first ?? 'N/A',
//       genre: 'N/A', // TMDB genre_ids need mapping, simplified for this example
//     );
//   }
// }

// class FilmPage extends StatefulWidget {
//   @override
//   _FilmPageState createState() => _FilmPageState();
// }

// class _FilmPageState extends State<FilmPage> with TickerProviderStateMixin {
//   PageController _pageController = PageController();
//   TextEditingController _searchController = TextEditingController();
//   Timer? _timer;
//   int _currentPage = 0;
//   bool _isSearching = false;
//   bool _showSearchBar = false;

//   List<Movie> _allMovies = []; // Stores all fetched movies
//   List<Movie> _filteredMovies = []; // Stores movies after search filter

//   late Future<List<Movie>> _moviesFuture; // Future for fetching movies
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: Duration(milliseconds: 300),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
//     );
//     _animationController.forward();

//     _moviesFuture = _fetchAndProcessMovies();
//     _startAutoScroll();
//   }

//   Future<List<Movie>> _fetchAndProcessMovies() async {
//     final response = await http.get(
//       Uri.parse(
//         'https://api.themoviedb.org/3/movie/popular?api_key=4b4def61e74e0998a748e2c7806d10b0&language=en-US&page=1',
//       ),
//     );

//     if (response.statusCode == 200) {
//       final jsonData = json.decode(response.body);
//       List<Movie> fetchedMovies = List<Map<String, dynamic>>.from(
//         jsonData['results'],
//       ).map((json) => Movie.fromJson(json)).toList();

//       // --- OPTIMIZATION: Fetch all video links from Firebase in one go ---
//       final QuerySnapshot firebaseLinksSnapshot = await _firestore
//           .collection('movies')
//           .get();
//       final Map<String, String> videoLinksMap = {};
//       for (var doc in firebaseLinksSnapshot.docs) {
//         if (doc.data() != null &&
//             (doc.data() as Map<String, dynamic>).containsKey('link')) {
//           videoLinksMap[doc.id] =
//               (doc.data() as Map<String, dynamic>)['link'] as String;
//         }
//       }
//       // --- END OPTIMIZATION ---

//       // Assign video links from the pre-fetched map
//       for (var movie in fetchedMovies) {
//         movie.videoLink = videoLinksMap[movie.id];
//       }

//       setState(() {
//         _allMovies = fetchedMovies;
//         _filteredMovies =
//             _allMovies; // Initialize filtered list with all movies
//       });
//       return fetchedMovies;
//     } else {
//       throw Exception('Failed to load movies from TMDB');
//     }
//   }

//   Future<void> _addLink(String movieId, String link) async {
//     await _firestore.collection("movies").doc(movieId).set({
//       'link': link,
//     }, SetOptions(merge: true));

//     // Update the specific movie's link in the local list and trigger rebuild
//     setState(() {
//       final index = _allMovies.indexWhere((movie) => movie.id == movieId);
//       if (index != -1) {
//         _allMovies[index].videoLink = link;
//         // Re-apply filter to update _filteredMovies if searching
//         _searchMovies(_searchController.text);
//       }
//     });
//   }

//   // This function is no longer needed for initial fetch due to optimization
//   // but kept for potential individual lookups if needed elsewhere.
//   Future<String?> _getVideoLink(String id) async {
//     final doc = await _firestore.collection('movies').doc(id).get();
//     return (doc.exists && doc.data()?['link'] != null)
//         ? doc.data()!['link'] as String
//         : null;
//   }

//   void _showAddLinkDialog(String movieId) {
//     final TextEditingController _controller = TextEditingController();
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('إضافة رابط مشاهدة'),
//         content: TextField(
//           controller: _controller,
//           decoration: const InputDecoration(hintText: 'ضع الرابط هنا'),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text('إلغاء'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               _addLink(movieId, _controller.text);
//               Navigator.pop(context);
//             },
//             child: const Text('حفظ'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       if (!_isSearching &&
//           _pageController.hasClients &&
//           _allMovies.isNotEmpty) {
//         // Ensure there are enough movies for the carousel (at least 8 for your current logic)
//         if (_currentPage < (_allMovies.take(8).length - 1)) {
//           _currentPage++;
//         } else {
//           _currentPage = 0;
//         }
//         _pageController.animateToPage(
//           _currentPage,
//           duration: Duration(milliseconds: 800),
//           curve: Curves.easeInOutCubic,
//         );
//       }
//     });
//   }

//   void _searchMovies(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         _filteredMovies = _allMovies;
//         _isSearching = false;
//       } else {
//         _filteredMovies = _allMovies
//             .where(
//               (movie) =>
//                   movie.title.toLowerCase().contains(query.toLowerCase()),
//             )
//             .toList();
//         _isSearching = true;
//       }
//     });
//   }

//   void _toggleSearch() {
//     setState(() {
//       _showSearchBar = !_showSearchBar;
//       if (!_showSearchBar) {
//         _searchController.clear();
//         _searchMovies('');
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     _searchController.dispose();
//     _animationController.dispose();
//     super.dispose();
//   }

//   Widget _buildFeaturedMoviesCarousel(List<Movie> movies) {
//     List<Movie> featuredMovies = movies
//         .take(8)
//         .toList(); // Take first 8 for carousel
//     if (featuredMovies.isEmpty) {
//       return SizedBox.shrink(); // Don't show if no movies
//     }

//     return Container(
//       height: 280,
//       margin: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               children: [
//                 Container(
//                   width: 4,
//                   height: 25,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.amber, Colors.orange],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                     ),
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   'الأفلام المميزة',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     shadows: [
//                       Shadow(
//                         offset: Offset(2, 2),
//                         blurRadius: 4,
//                         color: Colors.black.withOpacity(0.5),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 15),
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: featuredMovies.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 final movie = featuredMovies[index];
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => SeriesDetailsPage(
//                           title: movie.title,
//                           image: movie.imageUrl,
//                           rating: movie.rating,
//                           year: movie.year,
//                           genre: movie.genre,
//                           videoLink: movie.videoLink, // Pass the video link
//                         ),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 15),
//                     child: Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.4),
//                                   spreadRadius: 3,
//                                   blurRadius: 15,
//                                   offset: Offset(0, 8),
//                                 ),
//                               ],
//                             ),
//                             child: movie.imageUrl.isNotEmpty
//                                 ? Image.network(
//                                     movie.imageUrl,
//                                     fit: BoxFit.cover,
//                                     errorBuilder: (context, error, stackTrace) {
//                                       return Container(
//                                         decoration: BoxDecoration(
//                                           gradient: LinearGradient(
//                                             colors: [
//                                               Colors.grey[800]!,
//                                               Colors.grey[900]!,
//                                             ],
//                                             begin: Alignment.topLeft,
//                                             end: Alignment.bottomRight,
//                                           ),
//                                         ),
//                                         child: Center(
//                                           child: Icon(
//                                             Icons.movie_creation_outlined,
//                                             size: 60,
//                                             color: Colors.white54,
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                   )
//                                 : Container(
//                                     decoration: BoxDecoration(
//                                       gradient: LinearGradient(
//                                         colors: [
//                                           Colors.grey[800]!,
//                                           Colors.grey[900]!,
//                                         ],
//                                         begin: Alignment.topLeft,
//                                         end: Alignment.bottomRight,
//                                       ),
//                                     ),
//                                     child: Center(
//                                       child: Icon(
//                                         Icons.movie_creation_outlined,
//                                         size: 60,
//                                         color: Colors.white54,
//                                       ),
//                                     ),
//                                   ),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                               colors: [
//                                 Colors.transparent,
//                                 Colors.transparent,
//                                 Colors.black.withOpacity(0.9),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 20,
//                           left: 20,
//                           right: 20,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 movie.title,
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   shadows: [
//                                     Shadow(
//                                       offset: Offset(1, 1),
//                                       blurRadius: 3,
//                                       color: Colors.black,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               SizedBox(height: 8),
//                               Row(
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                       horizontal: 8,
//                                       vertical: 4,
//                                     ),
//                                     decoration: BoxDecoration(
//                                       color: Colors.amber,
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.min,
//                                       children: [
//                                         Icon(
//                                           Icons.star,
//                                           color: Colors.black,
//                                           size: 16,
//                                         ),
//                                         SizedBox(width: 4),
//                                         Text(
//                                           movie.rating,
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(width: 10),
//                                   Text(
//                                     movie.year,
//                                     style: TextStyle(
//                                       color: Colors.white70,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   Spacer(),
//                                   // Link status icon for carousel items
//                                   Container(
//                                     padding: const EdgeInsets.all(8),
//                                     decoration: BoxDecoration(
//                                       color: Colors.black.withOpacity(0.7),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child:
//                                         movie.videoLink != null &&
//                                             movie.videoLink!.isNotEmpty
//                                         ? const Icon(
//                                             Icons.check_circle,
//                                             color: Colors.green,
//                                             size: 20,
//                                           )
//                                         : const Icon(
//                                             Icons.link_off,
//                                             color: Colors.red,
//                                             size: 20,
//                                           ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               featuredMovies.length,
//               (index) => AnimatedContainer(
//                 duration: Duration(milliseconds: 300),
//                 margin: EdgeInsets.symmetric(horizontal: 4),
//                 width: _currentPage == index ? 30 : 10,
//                 height: 6,
//                 decoration: BoxDecoration(
//                   gradient: _currentPage == index
//                       ? LinearGradient(colors: [Colors.amber, Colors.orange])
//                       : null,
//                   color: _currentPage == index ? null : Colors.white38,
//                   borderRadius: BorderRadius.circular(3),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMovieCard(Movie movie, int index) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => SeriesDetailsPage(
//               title: movie.title,
//               image: movie.imageUrl,
//               rating: movie.rating,
//               year: movie.year,
//               genre: movie.genre,
//               videoLink: movie.videoLink, // Pass the video link
//             ),
//           ),
//         );
//       },
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300 + (index * 50)),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(18),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.3),
//                 spreadRadius: 2,
//                 blurRadius: 12,
//                 offset: Offset(0, 6),
//               ),
//             ],
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(18),
//             child: Stack(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: double.infinity,
//                   child: movie.imageUrl.isNotEmpty
//                       ? Image.network(
//                           movie.imageUrl,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return Container(
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   colors: [
//                                     Colors.grey[800]!,
//                                     Colors.grey[900]!,
//                                   ],
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Icon(
//                                   Icons.movie_creation_outlined,
//                                   size: 40,
//                                   color: Colors.white54,
//                                 ),
//                               ),
//                             );
//                           },
//                         )
//                       : Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [Colors.grey[800]!, Colors.grey[900]!],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ),
//                           ),
//                           child: Center(
//                             child: Icon(
//                               Icons.movie_creation_outlined,
//                               size: 40,
//                               color: Colors.white54,
//                             ),
//                           ),
//                         ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Colors.transparent,
//                         Colors.transparent,
//                         Colors.black.withOpacity(0.8),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 8,
//                   right: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Icon(Icons.star, color: Colors.black, size: 12),
//                         SizedBox(width: 2),
//                         Text(
//                           movie.rating,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 10,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 8,
//                   left: 8,
//                   right: 8,
//                   child: Text(
//                     movie.title,
//                     style: TextStyle(
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       shadows: [
//                         Shadow(
//                           offset: Offset(1, 1),
//                           blurRadius: 2,
//                           color: Colors.black,
//                         ),
//                       ],
//                     ),
//                     textAlign: TextAlign.center,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 // Link status icon for grid items
//                 Positioned(
//                   bottom: 8,
//                   right: 8,
//                   child: GestureDetector(
//                     // onTap: () => _showAddLinkDialog(movie.id),
//                     child: Container(
//                       padding: const EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                         color: Colors.black54,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child:
//                           movie.videoLink != null && movie.videoLink!.isNotEmpty
//                           ? const Icon(
//                               Icons.check_circle,
//                               color: Colors.green,
//                               size: 20,
//                             )
//                           : const Icon(
//                               Icons.link_off,
//                               color: Colors.red,
//                               size: 20,
//                             ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF8B4513),
//         elevation: 0,
//         title: Text(
//           'مكتبة الأفلام',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: _toggleSearch,
//             icon: Icon(
//               _showSearchBar ? Icons.close : Icons.search,
//               color: Colors.white,
//               size: 28,
//             ),
//           ),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF8B4513), Color(0xFF654321), Color(0xFF2F1B14)],
//           ),
//         ),
//         child: FadeTransition(
//           opacity: _fadeAnimation,
//           child: FutureBuilder<List<Movie>>(
//             future: _moviesFuture,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(
//                   child: CircularProgressIndicator(color: Colors.amber),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(
//                   child: Text(
//                     "Error: ${snapshot.error}",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 );
//               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                 return Center(
//                   child: Text(
//                     "No movies found.",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 );
//               } else {
//                 return CustomScrollView(
//                   slivers: [
//                     if (_showSearchBar)
//                       SliverToBoxAdapter(
//                         child: Container(
//                           padding: EdgeInsets.all(20),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white.withOpacity(0.1),
//                               borderRadius: BorderRadius.circular(25),
//                               border: Border.all(
//                                 color: Colors.white.withOpacity(0.2),
//                                 width: 1,
//                               ),
//                             ),
//                             child: TextField(
//                               controller: _searchController,
//                               onChanged: _searchMovies,
//                               style: TextStyle(color: Colors.white),
//                               autofocus: true,
//                               decoration: InputDecoration(
//                                 hintText: 'ابحث عن فيلم...',
//                                 hintStyle: TextStyle(color: Colors.white60),
//                                 prefixIcon: Icon(
//                                   Icons.search,
//                                   color: Colors.white70,
//                                 ),
//                                 border: InputBorder.none,
//                                 contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 20,
//                                   vertical: 15,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     if (!_isSearching)
//                       SliverToBoxAdapter(
//                         child: _buildFeaturedMoviesCarousel(snapshot.data!),
//                       ),
//                     SliverToBoxAdapter(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 10,
//                         ),
//                         child: Row(
//                           children: [
//                             Container(
//                               width: 4,
//                               height: 25,
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   colors: [Colors.red, Colors.orange],
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                 ),
//                                 borderRadius: BorderRadius.circular(2),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               _isSearching ? 'نتائج البحث' : 'جميع الأفلام',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 shadows: [
//                                   Shadow(
//                                     offset: Offset(2, 2),
//                                     blurRadius: 4,
//                                     color: Colors.black.withOpacity(0.5),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SliverPadding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       sliver: SliverGrid(
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3,
//                           childAspectRatio: 0.65,
//                           crossAxisSpacing: 12,
//                           mainAxisSpacing: 15,
//                         ),
//                         delegate: SliverChildBuilderDelegate((context, index) {
//                           return _filteredMovies.isNotEmpty
//                               ? _buildMovieCard(_filteredMovies[index], index)
//                               : Center(
//                                   child: Text(
//                                     "No results found.",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 );
//                         }, childCount: _filteredMovies.length),
//                       ),
//                     ),
//                     SliverToBoxAdapter(child: SizedBox(height: 30)),
//                   ],
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:io';

import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert'; // For JSON decoding
import 'package:http/http.dart' as http; // For making HTTP requests
import 'package:cloud_firestore/cloud_firestore.dart'; // For Firebase Firestore
import 'package:korrrrrrrr/removed/film_screens/film_deitels.dart'; // تأكد من صحة هذا المسار
import 'package:korrrrrrrr/removed/serias_screens/series_detiels.dart';
import 'package:korrrrrrrr/widget/install.dart';
import 'package:share_plus/share_plus.dart';

// تأكد من صحة هذا المسار

// Define a Movie model to better handle data
class Movie {
  final String id;
  final String title;
  final String imageUrl;
  final String rating;
  final String year;
  final String genre;
  String? videoLink; // Nullable video link from Firebase
  final bool isCustom; // New field to identify custom movies

  Movie({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.year,
    required this.genre,
    this.videoLink,
    this.isCustom = false, // Default to false for TMDB movies
  });

  // Factory constructor to create a Movie from TMDB API response
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'].toString(),
      title: json['title'] ?? 'N/A',
      imageUrl: json['poster_path'] != null
          ? "https://image.tmdb.org/t/p/w500${json['poster_path']}"
          : '', // Use empty string if no poster
      rating: (json['vote_average'] as num?)?.toStringAsFixed(1) ?? 'N/A',
      year: (json['release_date'] as String?)?.split('-').first ?? 'N/A',
      genre: 'N/A', // TMDB genre_ids need mapping, simplified for this example
      isCustom: false,
    );
  }

  // Factory constructor to create a Movie from Firebase Firestore document
  factory Movie.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Movie(
      id: doc.id, // Use doc.id as the unique identifier for custom movies
      title: data['title'] ?? 'N/A',
      imageUrl: data['image'] ?? '', // 'image' from Firebase
      rating: (data['rating'] as num?)?.toStringAsFixed(1) ?? 'N/A',
      year: (data['year'] as int?)?.toString() ?? 'N/A',
      genre: data['genre'] ?? 'N/A',
      videoLink: data['videoLink'],
      isCustom:
          data['isCustom'] ?? true, // Assume true if coming from Firestore
    );
  }
}

class FilmPage extends StatefulWidget {
  @override
  _FilmPageState createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> with TickerProviderStateMixin {
  PageController _pageController = PageController();
  TextEditingController _searchController = TextEditingController();
  Timer? _timer;
  int _currentPage = 0;
  bool _isSearching = false;
  bool _showSearchBar = false;
  List<Movie> _allMovies = []; // Stores all fetched movies
  List<Movie> _filteredMovies = []; // Stores movies after search filter
  late Future<List<Movie>> _moviesFuture; // Future for fetching movies
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
    _moviesFuture = _fetchAndProcessMovies();
    _startAutoScroll();
  }

  Future<void> playVideoExternally(
    BuildContext context, {
    required String link,
  }) async {
    if (link == null || link.isEmpty) {
      return;
    }

    String videoUrl = link;

    const String playerPackage = 'com.skoplayer.pro';
    const String playStoreUrl =
        'https://play.google.com/store/apps/details?id=com.skoplayer.pro';

    // 1- التحقق من تثبيت التطبيق
    bool ok = await AppChecker.isAppInstalledd(playerPackage);

    if (!ok) {
      // 2- إظهار نافذة شبيهة بالصورة
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // const Icon(
              //   Icons.play_circle_fill,
              //   size: 48,
              //   color: Colors.redAccent,
              // ),
              Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/iconnn.jpg"),
              ),
              const SizedBox(height: 12),
              const Text(
                'المشغّل غير مثبت!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'قم بتثبيت المشغّل من أجل المشاهدة .',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('إلغاء'),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('تثبيت'),
              onPressed: () async {
                Navigator.pop(context);
                final intent = AndroidIntent(
                  action: 'action_view',
                  data: playStoreUrl,
                  package: 'com.android.vending',
                );
                await intent.launch();
              },
            ),
          ],
        ),
      );
      return;
    }

    // 3- إذا كان مثبتًا شغّل الرابط مباشرة
    if (videoUrl.isEmpty) {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text('لا يوجد رابط مشاهدة'),
          content: Text('عذرًا، لا يتوفر رابط مشاهدة لهذه المباراة حاليًا.'),
        ),
      );
      return;
    }

    try {
      final intent = AndroidIntent(
        action: 'action_view',
        data: videoUrl,
        type: 'video/*',
        package: 'com.skoplayer.pro',

        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
      );
      await intent.launch();
    } catch (e) {
      print('Error launching intent: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة الرابط.'),
          backgroundColor: Colors.red,
        ),
      );
      await Share.share(videoUrl);
    }
  }

  Future<List<Movie>> _fetchAndProcessMovies() async {
    List<Movie> combinedMovies = [];
    try {
      final QuerySnapshot firebaseMoviesSnapshot = await _firestore
          .collection('add_movies')
          .orderBy('timestamp', descending: true) // الأحدث أولاً
          .get();
      List<Movie> firebaseMovies = firebaseMoviesSnapshot.docs
          .map((doc) => Movie.fromFirestore(doc))
          .toList();
      combinedMovies.addAll(firebaseMovies);
    } catch (e) {
      print('Error fetching Firebase movies: $e');
    }

    // 1. Fetch movies from TMDB
    try {
      final response = await http.get(
        Uri.parse(
          'https://api.themoviedb.org/3/movie/popular?api_key=4b4def61e74e0998a748e2c7806d10b0&language=en-US&page=1',
        ),
      );
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<Movie> tmdbMovies = List<Map<String, dynamic>>.from(
          jsonData['results'],
        ).map((json) => Movie.fromJson(json)).toList();
        combinedMovies.addAll(tmdbMovies);
      } else {
        print('Failed to load movies from TMDB: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching TMDB movies: $e');
    }

    // 2. Fetch movies from Firebase Firestore

    // 3. Assign video links (if any) from Firebase to all movies
    // This step is now less critical as Movie.fromFirestore already sets videoLink
    // but we keep the general logic for TMDB movies if their links are added later.
    final QuerySnapshot allLinksSnapshot = await _firestore
        .collection('movies')
        .get();
    final Map<String, String> videoLinksMap = {};
    for (var doc in allLinksSnapshot.docs) {
      if (doc.data() != null &&
          (doc.data() as Map<String, dynamic>).containsKey('link')) {
        videoLinksMap[doc.id] =
            (doc.data() as Map<String, dynamic>)['link'] as String;
      }
    }

    for (var movie in combinedMovies) {
      if (videoLinksMap.containsKey(movie.id)) {
        movie.videoLink = videoLinksMap[movie.id];
      }
    }

    setState(() {
      _allMovies = combinedMovies;
      _filteredMovies = _allMovies; // Initialize filtered list with all movies
    });
    return combinedMovies;
  }

  // Future<void> _addLink(String movieId, String link) async {
  //   await _firestore.collection("movies").doc(movieId).set({
  //     'link': link,
  //   }, SetOptions(merge: true));
  //   // Update the specific movie's link in the local list and trigger rebuild
  //   setState(() {
  //     final index = _allMovies.indexWhere((movie) => movie.id == movieId);
  //     if (index != -1) {
  //       _allMovies[index].videoLink = link;
  //       // Re-apply filter to update _filteredMovies if searching
  //       _searchMovies(_searchController.text);
  //     }
  //   });
  // }

  // This function is no longer needed for initial fetch due to optimization
  // but kept for potential individual lookups if needed elsewhere.
  Future<String?> _getVideoLink(String id) async {
    final doc = await _firestore.collection('movies').doc(id).get();
    return (doc.exists && doc.data()?['link'] != null)
        ? doc.data()!['link'] as String
        : null;
  }

  // void _showAddLinkDialog(String movieId) {
  //   final TextEditingController _controller = TextEditingController();
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: const Text('إضافة رابط مشاهدة'),
  //       content: TextField(
  //         controller: _controller,
  //         decoration: const InputDecoration(hintText: 'ضع الرابط هنا'),
  //       ),
  //       actions: [
  //         TextButton(
  //           onPressed: () {
  //             Navigator.pop(context);
  //           },
  //           child: const Text('إلغاء'),
  //         ),
  //         ElevatedButton(
  //           onPressed: () {
  //             _addLink(movieId, _controller.text);
  //             Navigator.pop(context);
  //           },
  //           child: const Text('حفظ'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (!_isSearching &&
          _pageController.hasClients &&
          _allMovies.isNotEmpty) {
        // Ensure there are enough movies for the carousel (at least 8 for your current logic)
        if (_currentPage < (_allMovies.take(8).length - 1)) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 800),
          curve: Curves.easeInOutCubic,
        );
      }
    });
  }

  void _searchMovies(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredMovies = _allMovies;
        _isSearching = false;
      } else {
        _filteredMovies = _allMovies
            .where(
              (movie) =>
                  movie.title.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
        _isSearching = true;
      }
    });
  }

  void _toggleSearch() {
    setState(() {
      _showSearchBar = !_showSearchBar;
      if (!_showSearchBar) {
        _searchController.clear();
        _searchMovies('');
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    _searchController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildFeaturedMoviesCarousel(List<Movie> movies) {
    List<Movie> featuredMovies = movies
        .take(8)
        .toList(); // Take first 8 for carousel
    if (featuredMovies.isEmpty) {
      return SizedBox.shrink(); // Don't show if no movies
    }
    return Container(
      height: 280,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: 4,
                  height: 25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.amber, Colors.orange],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'الأفلام المميزة',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: featuredMovies.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final movie = featuredMovies[index];
                return GestureDetector(
                  onTap: () {
                    playVideoExternally(context, link: movie.videoLink!);

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => SeriesDetailsPage(
                    //       title: movie.title,
                    //       image: movie.imageUrl,
                    //       rating: movie.rating,
                    //       year: movie.year,
                    //       genre: movie.genre,
                    //       videoLink: movie.videoLink, // Pass the video link
                    //     ),
                    //   ),
                    // );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 3,
                                  blurRadius: 15,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            ),
                            child: movie.imageUrl.isNotEmpty
                                ? Image.network(
                                    movie.imageUrl,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.grey[800]!,
                                              Colors.grey[900]!,
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.movie_creation_outlined,
                                            size: 60,
                                            color: Colors.white54,
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.grey[800]!,
                                          Colors.grey[900]!,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.movie_creation_outlined,
                                        size: 60,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(0.9),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          right: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1, 1),
                                      blurRadius: 3,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.black,
                                          size: 16,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          movie.rating,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    movie.year,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  // Link status icon for carousel items
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.7),
                                      shape: BoxShape.circle,
                                    ),
                                    child:
                                        movie.videoLink != null &&
                                            movie.videoLink!.isNotEmpty
                                        ? const Icon(
                                            Icons.check_circle,
                                            color: Colors.green,
                                            size: 20,
                                          )
                                        : const Icon(
                                            Icons.link_off,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              featuredMovies.length,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 30 : 10,
                height: 6,
                decoration: BoxDecoration(
                  gradient: _currentPage == index
                      ? LinearGradient(colors: [Colors.amber, Colors.orange])
                      : null,
                  color: _currentPage == index ? null : Colors.white38,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovieCard(Movie movie, int index) {
    return GestureDetector(
      onTap: () {
        playVideoExternally(context, link: movie.videoLink!);

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => SeriesDetailsPage(
        //       title: movie.title,
        //       image: movie.imageUrl,
        //       rating: movie.rating,
        //       year: movie.year,
        //       genre: movie.genre,
        //       videoLink: movie.videoLink, // Pass the video link
        //     ),
        //   ),
        // );
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300 + (index * 50)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: movie.imageUrl.isNotEmpty
                      ? Image.network(
                          movie.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.grey[800]!,
                                    Colors.grey[900]!,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.movie_creation_outlined,
                                  size: 40,
                                  color: Colors.white54,
                                ),
                              ),
                            );
                          },
                        )
                      : Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.grey[800]!, Colors.grey[900]!],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.movie_creation_outlined,
                              size: 40,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.black, size: 12),
                        SizedBox(width: 2),
                        Text(
                          movie.rating,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Text(
                    movie.title,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 2,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // Link status icon for grid items
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:
                          movie.videoLink != null && movie.videoLink!.isNotEmpty
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 20,
                            )
                          : const Icon(
                              Icons.link_off,
                              color: Colors.red,
                              size: 20,
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8B4513),
        elevation: 0,
        title: Text(
          'مكتبة الأفلام',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _toggleSearch,
            icon: Icon(
              _showSearchBar ? Icons.close : Icons.search,
              color: Colors.white,
              size: 28,
            ),
          ),
          // زر إضافة فيلم جديد
          // IconButton(
          //   onPressed: () async {
          //     await Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const AddMoviePage()),
          //     );
          //     // Refresh the movie list after returning from AddMoviePage
          //     setState(() {
          //       _moviesFuture = _fetchAndProcessMovies();
          //     });
          //   },
          //   icon: Icon(
          //     Icons.add_box_outlined, // أيقونة مناسبة للإضافة
          //     color: Colors.white,
          //     size: 28,
          //   ),
          //   tooltip: 'إضافة فيلم جديد',
          // ),
          // SizedBox(width: 10),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF8B4513), Color(0xFF654321), Color(0xFF2F1B14)],
          ),
        ),
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: FutureBuilder<List<Movie>>(
            future: _moviesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(color: Colors.amber),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    "Error: ${snapshot.error}",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(
                  child: Text(
                    "No movies found.",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              } else {
                return CustomScrollView(
                  slivers: [
                    if (_showSearchBar)
                      SliverToBoxAdapter(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.2),
                                width: 1,
                              ),
                            ),
                            child: TextField(
                              controller: _searchController,
                              onChanged: _searchMovies,
                              style: TextStyle(color: Colors.white),
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: 'ابحث عن فيلم...',
                                hintStyle: TextStyle(color: Colors.white60),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white70,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (!_isSearching)
                      SliverToBoxAdapter(
                        child: _buildFeaturedMoviesCarousel(snapshot.data!),
                      ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 4,
                              height: 25,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.red, Colors.orange],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              _isSearching ? 'نتائج البحث' : 'جميع الأفلام',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    offset: Offset(2, 2),
                                    blurRadius: 4,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      sliver: SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.65,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 15,
                        ),
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _filteredMovies.isNotEmpty
                              ? _buildMovieCard(_filteredMovies[index], index)
                              : Center(
                                  child: Text(
                                    "No results found.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                        }, childCount: _filteredMovies.length),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 30)),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
