import 'package:flutter/material.dart';
// import 'package:nebeng_yuk_app/match/aktif/match_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => MatchScreen(),
        //       )),
        // ),
        backgroundColor: Color(0xFFC9F4C2),
        title: Center(
          child: Text(
            'Layanan BMKG',
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: index % 2 == 0
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color:
                            index % 2 == 0 ? Color(0xFFDCF8C6) : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: index % 2 == 0
                              ? Radius.circular(20)
                              : Radius.circular(0),
                          bottomRight: index % 2 == 0
                              ? Radius.circular(0)
                              : Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User ${(index + 1).toString()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  index % 2 == 0 ? Colors.green : Colors.black,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Halo BMKG?',
                            style: TextStyle(
                              color:
                                  index % 2 == 0 ? Colors.green : Colors.black,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '10:00',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  index % 2 == 0 ? Colors.green : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    index % 2 == 0
                        ? CircleAvatar(
                            child: Icon(Icons.person),
                          )
                        : SizedBox(),
                  ],
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: Offset(0, -3),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      filled: true,
                      fillColor: Color(0xFFF6F6F6),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
