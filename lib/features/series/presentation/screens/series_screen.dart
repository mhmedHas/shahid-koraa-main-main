// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:korrrrrrrr/serias_screens/series_detiels.dart';

// class Series {
//   final String id;
//   final String title;
//   final String imageUrl;
//   final String rating;
//   final String year;
//   final String seasons;
//   final String genre;
//   String? videoLink;
//   final bool isCustom;

//   Series({
//     required this.id,
//     required this.title,
//     required this.imageUrl,
//     required this.rating,
//     required this.year,
//     required this.seasons,
//     required this.genre,
//     this.videoLink,
//     this.isCustom = false,
//   });

//   factory Series.fromJson(Map<String, dynamic> json) {
//     return Series(
//       id: json['id'].toString(),
//       title: json['name'] ?? 'N/A',
//       imageUrl: json['poster_path'] != null
//           ? 'https://image.tmdb.org/t/p/w500${json['poster_path']}'
//           : '',
//       rating: (json['vote_average'] as num?)?.toStringAsFixed(1) ?? 'N/A',
//       year: json['first_air_date']?.substring(0, 4) ?? 'N/A',
//       seasons: '${json['number_of_seasons'] ?? 0} مواسم',
//       genre: json['genres'] != null && json['genres'].isNotEmpty
//           ? json['genres'][0]['name'] ?? 'N/A'
//           : 'N/A',
//       isCustom: false,
//     );
//   }

//   factory Series.fromFirestore(DocumentSnapshot doc) {
//     final data = doc.data() as Map<String, dynamic>;
//     return Series(
//       id: doc.id,
//       title: data['title'] ?? 'N/A',
//       imageUrl: data['image'] ?? '',
//       rating: (data['rating'] as num?)?.toStringAsFixed(1) ?? 'N/A',
//       year: (data['year'] as int?)?.toString() ?? 'N/A',
//       seasons: data['seasons'] ?? 'N/A',
//       genre: data['genre'] ?? 'N/A',
//       videoLink: data['videoLink'],
//       isCustom: true,
//     );
//   }
// }

// class SeriesPage extends StatefulWidget {
//   @override
//   _SeriesPageState createState() => _SeriesPageState();
// }

// class _SeriesPageState extends State<SeriesPage> with TickerProviderStateMixin {
//   PageController _pageController = PageController();
//   TextEditingController _searchController = TextEditingController();
//   Timer? _timer;
//   int _currentPage = 0;
//   bool _isSearching = false;
//   bool _showSearchBar = false;
//   List<Series> _allSeries = [];
//   List<Series> _filteredSeries = [];
//   late Future<List<Series>> _seriesFuture;
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
//     _seriesFuture = _fetchAndProcessSeries();
//     _startAutoScroll();
//   }

//   Future<List<Series>> _fetchAndProcessSeries() async {
//     List<Series> combinedSeries = [];
//     try {
//       final QuerySnapshot customSeriesSnapshot = await _firestore
//           .collection('add_seres')
//           .orderBy('timestamp', descending: true) // الأحدث أولاً
//           .get();

//       List<Series> fetchedCustomSeries = customSeriesSnapshot.docs
//           .map((doc) => Series.fromFirestore(doc))
//           .toList();
//       combinedSeries.addAll(fetchedCustomSeries);
//     } catch (e) {
//       print('Error fetching custom series: $e');
//     }

//     // 1. Fetch from TMDB API
//     try {
//       final response = await http.get(
//         Uri.parse(
//           'https://api.themoviedb.org/3/discover/tv?api_key=4b4def61e74e0998a748e2c7806d10b0&language=ar-EG&sort_by=popularity.desc',
//         ),
//       );
//       if (response.statusCode == 200) {
//         final jsonData = json.decode(response.body);
//         List<Series> fetchedSeries = List<Map<String, dynamic>>.from(
//           jsonData['results'],
//         ).map((json) => Series.fromJson(json)).toList();
//         combinedSeries.addAll(fetchedSeries);
//       }
//     } catch (e) {
//       print('Error fetching series: $e');
//     }

//     // 2. Fetch custom series from Firebase

//     // 3. Fetch video links
//     final QuerySnapshot linksSnapshot = await _firestore
//         .collection('tv_series')
//         .get();
//     final Map<String, String> videoLinksMap = {};
//     for (var doc in linksSnapshot.docs) {
//       if (doc.data() != null &&
//           (doc.data() as Map<String, dynamic>).containsKey('link')) {
//         videoLinksMap[doc.id] =
//             (doc.data() as Map<String, dynamic>)['link'] as String;
//       }
//     }

//     // 4. Assign video links
//     for (var series in combinedSeries) {
//       if (videoLinksMap.containsKey(series.id)) {
//         series.videoLink = videoLinksMap[series.id];
//       }
//     }

//     setState(() {
//       _allSeries = combinedSeries;
//       _filteredSeries = _allSeries;
//     });
//     return combinedSeries;
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       if (!_isSearching &&
//           _pageController.hasClients &&
//           _allSeries.isNotEmpty) {
//         if (_currentPage < (_allSeries.take(8).length - 1)) {
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

//   void _searchSeries(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         _filteredSeries = _allSeries;
//         _isSearching = false;
//       } else {
//         _filteredSeries = _allSeries
//             .where(
//               (series) =>
//                   series.title.toLowerCase().contains(query.toLowerCase()),
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
//         _searchSeries('');
//       }
//     });
//   }

//   // <CHANGE> تحديث دالة الانتقال لتمرير seriesId
//   void _navigateToSeriesDetails(Series series) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => SeriesDetailsPage(
//           seriesId: series.id, // إضافة معرف المسلسل
//           title: series.title,
//           image: series.imageUrl,
//           rating: series.rating,
//           year: series.year,
//           seasons: series.seasons,
//           genre: series.genre,
//           videoLink: series.videoLink,
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     _searchController.dispose();
//     _animationController.dispose();
//     super.dispose();
//   }

//   Widget _buildFeaturedSeriesCarousel(List<Series> seriesList) {
//     List<Series> featuredSeries = seriesList.take(8).toList();
//     if (featuredSeries.isEmpty) return SizedBox.shrink();

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
//                   'المسلسلات الشائعة',
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
//               itemCount: featuredSeries.length,
//               onPageChanged: (index) => setState(() => _currentPage = index),
//               itemBuilder: (context, index) {
//                 final series = featuredSeries[index];
//                 return GestureDetector(
//                   // <CHANGE> استخدام الدالة المحدثة
//                   onTap: () => _navigateToSeriesDetails(series),
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
//                             child: series.imageUrl.isNotEmpty
//                                 ? Image.network(
//                                     series.imageUrl,
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
//                                             Icons.tv,
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
//                                         Icons.tv,
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
//                                 series.title,
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
//                                           color: Colors.white,
//                                           size: 16,
//                                         ),
//                                         SizedBox(width: 4),
//                                         Text(
//                                           series.rating,
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(width: 10),
//                                   Text(
//                                     series.year,
//                                     style: TextStyle(
//                                       color: Colors.white70,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   Spacer(),
//                                   Container(
//                                     padding: const EdgeInsets.all(8),
//                                     decoration: BoxDecoration(
//                                       color: Colors.black.withOpacity(0.7),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child:
//                                         series.videoLink != null &&
//                                             series.videoLink!.isNotEmpty
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
//               featuredSeries.length,
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

//   Widget _buildSeriesCard(Series series, int index) {
//     return GestureDetector(
//       // <CHANGE> استخدام الدالة المحدثة
//       onTap: () => _navigateToSeriesDetails(series),
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
//                   child: series.imageUrl.isNotEmpty
//                       ? Image.network(
//                           series.imageUrl,
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
//                                   Icons.tv,
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
//                               Icons.tv,
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
//                         Icon(Icons.star, color: Colors.white, size: 12),
//                         SizedBox(width: 2),
//                         Text(
//                           series.rating,
//                           style: TextStyle(
//                             color: Colors.white,
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
//                     series.title,
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
//                 Positioned(
//                   bottom: 8,
//                   right: 8,
//                   child: Container(
//                     padding: const EdgeInsets.all(4),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child:
//                         series.videoLink != null && series.videoLink!.isNotEmpty
//                         ? const Icon(
//                             Icons.check_circle,
//                             color: Colors.green,
//                             size: 20,
//                           )
//                         : const Icon(
//                             Icons.link_off,
//                             color: Colors.red,
//                             size: 20,
//                           ),
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
//           'مكتبة المسلسلات',
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
//           child: FutureBuilder<List<Series>>(
//             future: _seriesFuture,
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
//                     "No series found.",
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
//                               onChanged: _searchSeries,
//                               style: TextStyle(color: Colors.white),
//                               autofocus: true,
//                               decoration: InputDecoration(
//                                 hintText: 'ابحث عن مسلسل...',
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
//                         child: _buildFeaturedSeriesCarousel(snapshot.data!),
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
//                                   colors: [Colors.amber, Colors.orange],
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                 ),
//                                 borderRadius: BorderRadius.circular(2),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               _isSearching ? 'نتائج البحث' : 'جميع المسلسلات',
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
//                           return _filteredSeries.isNotEmpty
//                               ? _buildSeriesCard(_filteredSeries[index], index)
//                               : Center(
//                                   child: Text(
//                                     "No results found.",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 );
//                         }, childCount: _filteredSeries.length),
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
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:korrrrrrrr/removed/serias_screens/series_detiels.dart';

class Series {
  final String id;
  final String title;
  final String imageUrl;
  final String rating;
  final String year;
  final String seasons;
  final String genre;
  String? videoLink;
  final bool isCustom;
  // <CHANGE> إضافة حقول جديدة للحلقات
  int? latestEpisodeNumber;
  DateTime? latestEpisodeDate;
  bool hasNewEpisodes;

  Series({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.year,
    required this.seasons,
    required this.genre,
    this.videoLink,
    this.isCustom = false,
    // <CHANGE> إضافة المعاملات الجديدة
    this.latestEpisodeNumber,
    this.latestEpisodeDate,
    this.hasNewEpisodes = false,
  });

  factory Series.fromJson(Map<String, dynamic> json) {
    return Series(
      id: json['id'].toString(),
      title: json['name'] ?? 'N/A',
      imageUrl: json['poster_path'] != null
          ? 'https://image.tmdb.org/t/p/w500${json['poster_path']}'
          : '',
      rating: (json['vote_average'] as num?)?.toStringAsFixed(1) ?? 'N/A',
      year: json['first_air_date']?.substring(0, 4) ?? 'N/A',
      seasons: '${json['number_of_seasons'] ?? 0} مواسم',
      genre: json['genres'] != null && json['genres'].isNotEmpty
          ? json['genres'][0]['name'] ?? 'N/A'
          : 'N/A',
      isCustom: false,
    );
  }

  factory Series.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Series(
      id: doc.id,
      title: data['title'] ?? 'N/A',
      imageUrl: data['image'] ?? '',
      rating: (data['rating'] as num?)?.toStringAsFixed(1) ?? 'N/A',
      year: (data['year'] as int?)?.toString() ?? 'N/A',
      seasons: data['seasons'] ?? 'N/A',
      genre: data['genre'] ?? 'N/A',
      videoLink: data['videoLink'],
      isCustom: true,
    );
  }
}

class SeriesPage extends StatefulWidget {
  @override
  _SeriesPageState createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> with TickerProviderStateMixin {
  PageController _pageController = PageController();
  TextEditingController _searchController = TextEditingController();
  Timer? _timer;
  // <CHANGE> إضافة timer للتحديث التلقائي
  Timer? _refreshTimer;
  int _currentPage = 0;
  bool _isSearching = false;
  bool _showSearchBar = false;
  List<Series> _allSeries = [];
  List<Series> _filteredSeries = [];
  late Future<List<Series>> _seriesFuture;
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
    _seriesFuture = _fetchAndProcessSeries();
    _startAutoScroll();
    _refreshSeriesData();
    // <CHANGE> إضافة تحديث تلقائي كل 5 ثوانٍ
  }

  // // <CHANGE> إضافة دالة التحديث التلقائي
  // void _startAutoRefresh() {
  //   _refreshTimer = Timer.periodic(Duration(seconds: 5), (timer) {

  //   });
  // }

  // <CHANGE> إضافة دالة تحديث البيانات
  void _refreshSeriesData() {
    setState(() {
      _seriesFuture = _fetchAndProcessSeries();
    });
  }

  // <CHANGE> تحديث دالة جلب المسلسلات لتشمل الحلقات
  Future<List<Series>> _fetchAndProcessSeries() async {
    List<Series> combinedSeries = [];
    try {
      final QuerySnapshot customSeriesSnapshot = await _firestore
          .collection('add_seres')
          .get();

      List<Series> fetchedCustomSeries = [];

      // <CHANGE> جلب الحلقات لكل مسلسل وترتيبها
      for (var doc in customSeriesSnapshot.docs) {
        Series series = Series.fromFirestore(doc);

        // جلب آخر حلقة لهذا المسلسل
        final QuerySnapshot episodesSnapshot = await _firestore
            .collection('add_seres')
            .doc(doc.id)
            .collection('episodes')
            .orderBy('createdAt', descending: true)
            .limit(1)
            .get();

        if (episodesSnapshot.docs.isNotEmpty) {
          final latestEpisodeDoc = episodesSnapshot.docs.first;
          final episodeData = latestEpisodeDoc.data() as Map<String, dynamic>;

          series.latestEpisodeNumber = episodeData['episodeNumber'] ?? 0;
          series.latestEpisodeDate = (episodeData['createdAt'] as Timestamp)
              .toDate();

          // تحديد إذا كانت الحلقة جديدة (خلال آخر 7 أيام)
          final now = DateTime.now();
          final daysDifference = now
              .difference(series.latestEpisodeDate!)
              .inDays;
          series.hasNewEpisodes = daysDifference <= 7;
        }

        fetchedCustomSeries.add(series);
      }

      // <CHANGE> ترتيب المسلسلات: المسلسلات مع الحلقات الجديدة أولاً، ثم حسب تاريخ آخر حلقة
      fetchedCustomSeries.sort((a, b) {
        // المسلسلات مع الحلقات الجديدة أولاً
        if (a.hasNewEpisodes && !b.hasNewEpisodes) return -1;
        if (!a.hasNewEpisodes && b.hasNewEpisodes) return 1;

        // إذا كان كلاهما له حلقات جديدة أو لا، رتب حسب تاريخ آخر حلقة
        if (a.latestEpisodeDate != null && b.latestEpisodeDate != null) {
          return b.latestEpisodeDate!.compareTo(a.latestEpisodeDate!);
        }

        // إذا لم يكن لديهما حلقات، رتب حسب timestamp الأصلي
        return 0;
      });

      combinedSeries.addAll(fetchedCustomSeries);
    } catch (e) {
      print('Error fetching custom series: $e');
    }

    // ... existing code ...
    try {
      final response = await http.get(
        Uri.parse(
          'https://api.themoviedb.org/3/discover/tv?api_key=4b4def61e74e0998a748e2c7806d10b0&language=ar-EG&sort_by=popularity.desc',
        ),
      );
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<Series> fetchedSeries = List<Map<String, dynamic>>.from(
          jsonData['results'],
        ).map((json) => Series.fromJson(json)).toList();
        combinedSeries.addAll(fetchedSeries);
      }
    } catch (e) {
      print('Error fetching series: $e');
    }

    // ... existing code ...
    final QuerySnapshot linksSnapshot = await _firestore
        .collection('tv_series')
        .get();
    final Map<String, String> videoLinksMap = {};
    for (var doc in linksSnapshot.docs) {
      if (doc.data() != null &&
          (doc.data() as Map<String, dynamic>).containsKey('link')) {
        videoLinksMap[doc.id] =
            (doc.data() as Map<String, dynamic>)['link'] as String;
      }
    }

    for (var series in combinedSeries) {
      if (videoLinksMap.containsKey(series.id)) {
        series.videoLink = videoLinksMap[series.id];
      }
    }

    setState(() {
      _allSeries = combinedSeries;
      _filteredSeries = _allSeries;
    });
    return combinedSeries;
  }

  // ... existing code ...

  @override
  void dispose() {
    _timer?.cancel();
    // <CHANGE> إلغاء timer التحديث التلقائي
    _refreshTimer?.cancel();
    _pageController.dispose();
    _searchController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  // ... existing code ...

  void _navigateToSeriesDetails(Series series) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SeriesDetailsPage(
          seriesId: series.id,
          title: series.title,
          image: series.imageUrl,
          rating: series.rating,
          year: series.year,
          seasons: series.seasons,
          genre: series.genre,
          videoLink: series.videoLink,
          contentType: ContentType.series,
        ),
      ),
    );
  }

  // <CHANGE> تحديث بناء كارت المسلسل لعرض رقم الحلقة
  Widget _buildSeriesCard(Series series, int index) {
    return GestureDetector(
      onTap: () => _navigateToSeriesDetails(series),
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
              // <CHANGE> إضافة تأثير إضاءة للمسلسلات الجديدة
              if (series.hasNewEpisodes)
                BoxShadow(
                  color: Colors.red.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              children: [
                // ... existing code ...
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: series.imageUrl.isNotEmpty
                      ? Image.network(
                          series.imageUrl,
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
                                  Icons.tv,
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
                              Icons.tv,
                              size: 40,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                ),
                // ... existing code ...
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
                // <CHANGE> إضافة مؤشر الحلقة الجديدة
                if (series.latestEpisodeNumber != null)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: series.hasNewEpisodes ? Colors.red : Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (series.hasNewEpisodes) ...[
                            Icon(
                              Icons.fiber_new,
                              color: Colors.white,
                              size: 12,
                            ),
                            SizedBox(width: 2),
                          ],
                          Text(
                            '${series.latestEpisodeNumber}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                // ... existing code ...
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
                          series.rating,
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
                // ... existing code ...
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Text(
                    series.title,
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
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:
                        series.videoLink != null && series.videoLink!.isNotEmpty
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
          'مكتبة المسلسلات',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          // <CHANGE> إضافة زر التحديث اليدوي
          IconButton(
            onPressed: _refreshSeriesData,
            icon: Icon(Icons.refresh, color: Colors.white, size: 28),
          ),
          IconButton(
            onPressed: _toggleSearch,
            icon: Icon(
              _showSearchBar ? Icons.close : Icons.search,
              color: Colors.white,
              size: 28,
            ),
          ),
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
          child: FutureBuilder<List<Series>>(
            future: _seriesFuture,
            builder: (context, snapshot) {
              // ... existing code ...
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
                    "No series found.",
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
                              onChanged: _searchSeries,
                              style: TextStyle(color: Colors.white),
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: 'ابحث عن مسلسل...',
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
                        child: _buildFeaturedSeriesCarousel(snapshot.data!),
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
                              _isSearching ? 'نتائج البحث' : 'جميع المسلسلات',
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
                          return _filteredSeries.isNotEmpty
                              ? _buildSeriesCard(_filteredSeries[index], index)
                              : Center(
                                  child: Text(
                                    "No results found.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                        }, childCount: _filteredSeries.length),
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

  // ... existing methods remain unchanged ...
  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (!_isSearching &&
          _pageController.hasClients &&
          _allSeries.isNotEmpty) {
        if (_currentPage < (_allSeries.take(8).length - 1)) {
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

  void _searchSeries(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredSeries = _allSeries;
        _isSearching = false;
      } else {
        _filteredSeries = _allSeries
            .where(
              (series) =>
                  series.title.toLowerCase().contains(query.toLowerCase()),
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
        _searchSeries('');
      }
    });
  }

  Widget _buildFeaturedSeriesCarousel(List<Series> seriesList) {
    List<Series> featuredSeries = seriesList.take(8).toList();
    if (featuredSeries.isEmpty) return SizedBox.shrink();

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
                  'المسلسلات المميزة',
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
              itemCount: featuredSeries.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                final series = featuredSeries[index];
                return GestureDetector(
                  onTap: () => _navigateToSeriesDetails(series),
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
                            child: series.imageUrl.isNotEmpty
                                ? Image.network(
                                    series.imageUrl,
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
                                            Icons.tv,
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
                                        Icons.tv,
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
                                series.title,
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
                                          series.rating,
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
                                    series.year,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.7),
                                      shape: BoxShape.circle,
                                    ),
                                    child:
                                        series.videoLink != null &&
                                            series.videoLink!.isNotEmpty
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
              featuredSeries.length,
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
}
