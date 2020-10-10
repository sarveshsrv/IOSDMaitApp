/*
Plese go though the "Contributors.md" file before you start coding or editing.
However the guidelines are as follows:
1) This is the only file which you need to edit to contribute in the development. However, you can always look at other files in the codebase incase you are inquisitive enough.
2)Now, What to edit in this file?
All you need is to create one more member object below within the list _members and provide all the details about yourself. Also, before this make sure your profile picture is in the assets/profile folder. 
The fields in the member class are:
Name=your name
Year=your year of study in college
Department=your department of graduation
ProfilePic=path to your profile photo
AboutMe= A brief introduction about yourself in maximum 2-3 lines.
facebookUrl=your facebook account url
GithubURl=your github account url
LinkedInURl=your linkedIn account url
Status= A 2-3 word technical expertise
Remember all are string input.
I have already added my info. I have also added info of other developers for demonstration purpose.In same manner you need to add yours.
If you don't have url for the fb ,github & linkedIn, just remove that field.
*/

import 'package:IOSDMaitApp/Screens/member.dart';

class AllMembers {
  static List<Member> _members = [
    Member(
        name: 'Sarvesh Nath Tiwari',
        year: '3rd',
        department: 'Computer Science',
        profilePic: 'assets/profilesPic/Sarvesh.png',
        aboutMe:
            'I am a flutter developer.Efficient coder in  C++ , java and dart. Good understanding of Data Structures & Algorithms.I focus on building life rather than a resume.',
        facebookURL:
            'https://www.facebook.com/people/Sarvesh-Tiwari/100004745170873',
        githubURL: 'https://github.com/sarveshsrv',
        linkedInURL:
            'https://www.linkedin.com/in/sarvesh-nath-tiwari-5575a218a',
        status: 'Flutter Developer'),
    Member(
        name: 'Nandeesh Gupta',
        year: '3rd',
        department: 'Computer Science',
        profilePic: 'assets/profilesPic/Nandeesh.jpeg',
        aboutMe:
            'A web developer and competitive programming enthusiast. I love data structures and algorithms. I am a pro at Vim editor.',
        facebookURL: 'https://www.facebook.com/nandeesh2/',
        githubURL: 'https://github.com/NandeeshG',
        linkedInURL: 'https://www.linkedin.com/in/nandeesh-gupta-05b43014a/',
        status: 'Competitive Programmer'),
    Member(
      name: 'Samaksh Singh',
      year: '4th',
      department: 'Information Technology',
      profilePic: 'assets/profilesPic/SamakshS.jpeg',
      aboutMe:
          'President at IOSD -MAIT, Experienced Python Developer, skilled in Cloud Computing and Amazon-AWS.',
      facebookURL: 'https://www.facebook.com/profile.php?id=100012922746311',
      githubURL: 'https://www.instagram.com/samaksh_singh_/',
      linkedInURL: 'https://www.linkedin.com/in/samaksh-singh-30640216a',
      status: 'Java and Python Developer',
    ),
    Member(
        name: 'Shubh Bansal',
        year: '3rd',
        department: 'Computer Science',
        profilePic: 'assets/profilesPic/ShubhB.jpeg',
        aboutMe:
            'I am a budding engineer, a sport programmer(Codeforces-Expert, Codechef 4 Stars) and a Quantum Computing enthusiast.I am < proRam />.',
        facebookURL: 'fb.com/shubh.bansal2',
        githubURL: 'https://github.com/proRamLOGO',
        linkedInURL: 'https://www.linkedin.com/in/proram',
        status: 'Competitive Programmer'),
    Member(
        name: 'Garima Arora',
        year: '3rd',
        department: 'Computer Science',
        profilePic: 'assets/profilesPic/GarimaAr.jpeg',
        aboutMe:
            'I am a web developer.Love to code in java and C++.Good at data structures and algorithms. Hardworking and adaptable to any kind of working situations.',
        githubURL: 'https://github.com/garimarora11',
        linkedInURL: 'https://www.linkedin.com/in/garima-arora-a5713417b/',
        status: 'Web Developer'),
    Member(
        name: 'Sarthak Mittal',
        year: '3rd',
        department: 'Computer Science',
        profilePic: 'assets/profilesPic/sarthakM.jpeg',
        aboutMe:
            'Full Stack Developer experience. Skilled in Responsive Web Design, Back-End Web Development, Web Design, Graphic Design, and Logo Design.',
        facebookURL: 'https://www.facebook.com/sarthak.mittal.520562',
        githubURL: 'https://github.com/sam-mittal',
        linkedInURL: 'https://www.linkedin.com/in/sarthak-mittal-9854a8170',
        status: 'Web Developer'),
    Member(
        name: 'Shivanshu Garg',
        year: '3rd',
        department: 'Information Technology',
        profilePic: 'assets/profilesPic/Shivanshu.jpg',
        aboutMe:
            'A HackerRank 5-star coder, loves to solve problems and a Web dev enthusiast always ready to learn and guide about new and upcoming stuﬀs in the ﬁeld of the Tech.',
        facebookURL: 'https://www.facebook.com/shivanshu.garg.35',
        githubURL: 'https://github.com/shivanshugarg12800',
        linkedInURL: 'https://www.linkedin.com/in/shivanshugarg12',
        status: 'Web Designer'),
  ];

  static List<Member> get members {
    return [..._members];
  }
}
