import 'dart:math';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionbankeasy = [
    Question("Who was the first Indian woman in Space?", "A", " Kalpana Chawla",
        "Sunita Williams", "Koneru Humpy", "None of the above"),
    Question("Who was the first Indian in space?", "C", "Vikram Ambalal",
        "Ravish Malhotra", "Rakesh Sharma", "Naggapathi Bhat"),
    Question(" Who was the first Man to Climb Mount Everest Without Oxygen?",
        "D", "Junko Tabei", "Reinhold Messner", "Peter Habeler", "Phu Dorji"),
    Question("Who built the Jama Masjid?", "D", "Jahangir", "Akbar",
        "Imam Bukhari", "Shah Jahan"),
    Question(
        " Who wrote the Indian National Anthem?",
        "B",
        "Bakim Chandra Chatterji",
        "Rabindranath Tagore",
        "Swami Vivekanand",
        "None of the above"),
    Question(
        "Who was the first Indian Scientist to win a Nobel Prize?",
        "A",
        "CV Ramen",
        "Amartya Sen",
        "Hargobind Khorana",
        "DR> Subramanian Chrandrashekar"),
    Question(
        "Who is the first Indian to win a Nobel Prize?",
        "A",
        "Rabindranath Tagore",
        "CV Raman",
        "Mother Theresa",
        "Hargobind Khorana"),
    Question("Who was the first Indian woman to win the Miss World Title?", "C",
        "Aishwarya Rai", "Sushmita Sen", "Reita Faria", "Diya Mirza"),
    Question("Who was the first President of India?", "C", "Abdul Kalam",
        "Lal Bahadur Shastri", "Dr. Rajendra Prasad", "Zakir Hussain"),
    Question(
        "Who was the first Indian to win the Booker Prize?",
        "C",
        "Dhan Gopal Mukerji",
        "Nirad C. Chaudhuri",
        "Arundhati Roy",
        "Aravind Adiga"),
    Question(
        " India is a federal union comprising twenty-nine states and how many union territories?",
        "B",
        "6",
        "7",
        "8",
        "9"),
    Question("Which of the following is the capital of Arunachal Pradesh?", "A",
        "Itanagar", "Dispur", "Imphal", "Panaji"),
    Question(
        "What are the major languages spoken in Andhra Pradesh?",
        "B",
        "English and marathi",
        "Telugu and Urdu",
        "Telugu and Kannada",
        "All of the above languages"),
    Question("What is the state flower of Haryana?", "A", "Lotus",
        "Rhododendron", "Golden Shower", "Not Declared"),
    Question("Which of the following states is not located in the North?", "A",
        "Jharkhand", "Jammu and Kashmir", "HImachal Pradesh", "Haryana"),
    Question("In which state is the main language Khasi?", "C", "Mizoram",
        "Nagaland", "Meghalaya", "Tripura"),
    Question("Which is the largest coffee producing state of India?", "C",
        "Kerala", "Tamil Nadu", "Karnataka", "Arunachal Pradesh"),
    Question("Which state has the largest area?", "D", "Maharashtra",
        "Madhya Pradesh", "Uttar Pradesh", "Rajasthan"),
    Question("Which state has the largest population?", "A", "Uttar Pradesh",
        "Maharashtra", "Bihar", "Andra Pradesh"),
    Question(" In what state is the Elephant Falls located?", "D", "Mizoram",
        "Orissa", "Manipur", "Meghalaye"),
    Question("The 31st Olympic games will be held in ………", "B", "Argentina",
        "Brazil", "Mexico", "Qatar"),
    Question(
        "Which is the new entrant in the next Olympic Games to be held in 2016?",
        "A",
        "Kosovo",
        "Mali",
        "South korea",
        "None of these"),
    Question("What is the number of Olympic games to be held in 2016?", "C",
        "21st", "29th", "31st", "40th"),
    Question("How many games will be played in the next Olympic Games?", "C",
        "33", "34", "28", "30"),
    Question("Which is the host city of next Olympic Games?", "D", "Atlanta",
        "Paraguay", "Doha", "Rio de Janerio"),
    Question("How many countries will participate in the next Olympic Games?",
        "C", "206", "195", "158", "196"),
    Question("Where were first Olympic Games held?", "C", "Atlanta", "Mexico",
        "Athens", "Sydney"),
    Question(
        "Which of the following statement is not true about Olympic Games?",
        "D",
        "First Olympic Games were held in 1896",
        "First Olympic Games were held in Greece.",
        "There were just 13 countries participated in the first Olympic Games",
        "India got 10th position in the first Olympic Games"),
    Question(
        "Which of the following sentence is not correct regarding the Olympic Games?",
        "C",
        "Seventh Olympic Games were held in Belgium.",
        "Seventh Olympic Games were held in the year 1920.",
        " India won bronze medal in hockey in this tournament.",
        "Just 29 countries participated in the 7th Olympic Games."),
    Question("In which Olympic Games, Indian hockey team won the Gold medal?",
        "A", "9th", "10th", "11th", "12th"),
    Question(
        "Name the Glands associated with the Human Digestive System?",
        "D",
        "Salivary Glands and Pancreas",
        "Salivary Glands and Liver",
        "Liver and Pancreas",
        "Salivary Glands, Liver & Pancreas"),
    Question(
        "Arrange the correct sequence of the steps involved in the process of Human Digestive System?",
        "B",
        "Digestion, Ingestion, Assimilation, Egestion and Absorption",
        " Ingestion, Digestion, Absorption, Assimilation and Egestion",
        "Egestion, Absorption, Digestion, Assimilation and Ingestion",
        "Assimilation, Absorption, Ingestion, Digestion and Egestion"),
    Question("In which part of the body digestion of protein begins?", "B",
        "Pancreas", "Stomach", "Small Intestine", "Large Intestine"),
    Question("Name the largest part of the Alimentary canal?", "B",
        "Large Intestine", "Small Intestine", "Liver", "Stomach"),
    Question("Complete digestion of food occurs in:", "B", "Large Intestine",
        "Small Intestine", "Liver", "Stomach"),
    Question(
        "What is the function of Bile Juice secreted by Liver?",
        "A",
        " It makes the food alkaline.",
        " It makes the food acidic.",
        "It breaks down the food.",
        "None of the above"),
    Question("Name the hardest material present in the body?", "C", "Dentin",
        "Pulp", "Enamel", "None of the above"),
    Question("In which part of our body food gets absorbed?", "A",
        "Small Intestine", "Large Intestine", "Stomach", "Liver"),
    Question(
        "The undigested food stored in the liver in the form of carbohydrate is called:",
        "C",
        "Pulp",
        "Glucose",
        "Glycogen",
        "Carbohydrate"),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionbankeasy.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionbankeasy[_questionNumber].question;
  }

  String getAnswer() {
    return _questionbankeasy[_questionNumber].answer;
  }

  String o1() {
    return _questionbankeasy[_questionNumber].opt1;
  }

  String o2() {
    return _questionbankeasy[_questionNumber].opt2;
  }

  String o3() {
    return _questionbankeasy[_questionNumber].opt3;
  }

  String o4() {
    return _questionbankeasy[_questionNumber].opt4;
  }

  bool isFinished() {
    if (_questionNumber >= _questionbankeasy.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    Random random = new Random();
    _questionNumber = random.nextInt(40);
  }
}

class QuizBrainHard {
  int _qe = 0;

  List<Question> _questionbankhard = [
    Question(
        "Which of the following was the place of Nirvana of the 23rd Jain Tirthankara Parshwanath?",
        "D",
        "Pavapuri",
        "Raivatgiri",
        "Mount Ashtapada",
        "Samet Shikhar"),
    Question("In Indian History, when the Komagata Maru incident took place?",
        "C", "1910", "1912", "1914", "1916"),
    Question(
        "Who among the following won the Nobel Prize in Physics 2020?",
        "D",
        "Roger Penrose",
        "Reinhard Genzel",
        "Andrea Ghez",
        "All of the above"),
    Question("Who was the first Indian woman in Space?", "A", " Kalpana Chawla",
        "Sunita Williams", "Koneru Humpy", "None of the above"),
    Question("Who was the first Indian in space?", "C", "Vikram Ambalal",
        "Ravish Malhotra", "Rakesh Sharma", "Naggapathi Bhat"),
    Question(" Who was the first Man to Climb Mount Everest Without Oxygen?",
        "D", "Junko Tabei", "Reinhold Messner", "Peter Habeler", "Phu Dorji"),
    Question("Who built the Jama Masjid?", "D", "Jahangir", "Akbar",
        "Imam Bukhari", "Shah Jahan"),
    Question(
        " Who wrote the Indian National Anthem?",
        "B",
        "Bakim Chandra Chatterji",
        "Rabindranath Tagore",
        "Swami Vivekanand",
        "None of the above"),
    Question(
        "Who was the first Indian Scientist to win a Nobel Prize?",
        "A",
        "CV Ramen",
        "Amartya Sen",
        "Hargobind Khorana",
        "DR> Subramanian Chrandrashekar"),
    Question(
        "Who is the first Indian to win a Nobel Prize?",
        "A",
        "Rabindranath Tagore",
        "CV Raman",
        "Mother Theresa",
        "Hargobind Khorana"),
    Question("Who was the first Indian woman to win the Miss World Title?", "C",
        "Aishwarya Rai", "Sushmita Sen", "Reita Faria", "Diya Mirza"),
    Question("Who was the first President of India?", "C", "Abdul Kalam",
        "Lal Bahadur Shastri", "Dr. Rajendra Prasad", "Zakir Hussain"),
    Question(
        "Who was the first Indian to win the Booker Prize?",
        "C",
        "Dhan Gopal Mukerji",
        "Nirad C. Chaudhuri",
        "Arundhati Roy",
        "Aravind Adiga"),
    Question(
        " India is a federal union comprising twenty-nine states and how many union territories?",
        "B",
        "6",
        "7",
        "8",
        "9"),
    Question("Which of the following is the capital of Arunachal Pradesh?", "A",
        "Itanagar", "Dispur", "Imphal", "Panaji"),
    Question(
        "What are the major languages spoken in Andhra Pradesh?",
        "B",
        "English and marathi",
        "Telugu and Urdu",
        "Telugu and Kannada",
        "All of the above languages"),
    Question("What is the state flower of Haryana?", "A", "Lotus",
        "Rhododendron", "Golden Shower", "Not Declared"),
    Question(
        "Recently, in which state in India it is decided to build temporary shelters for migratory birds?",
        "D",
        "Gujarat",
        "Haryana",
        "Uttar Pradesh",
        "Rajasthan"),
    Question("When was the K.V Kamath Committee set up?", "B", "August 2019",
        "August 2020", "July 2019", "July 2020"),
    Question(
        "The upper house of Indian Parliament is known as  ",
        "A",
        "The Rajya Sabha",
        "The Lok Sabha ",
        "The Vidhan Sabha",
        "The Vidhan Parishad"),
    Question(
        "Which is the house where the Chairperson is not the member of that house",
        "C",
        "Lok Sabha",
        "Vidhan Parishad",
        "Rajya Sabha",
        "Vidhan Sabha"),
    Question("The first mid-term elections for Lok Sabha were held in", "A",
        "1971", "1999", "1987", "1934"),
    Question("Finance bill of Indian Government is presented in", "C",
        "Upper House", "Middle House", "Lower House", "Raw House"),
    Question("The Chairperson of the Lok Sabha is designated as", "A",
        "speaker", "President", "Vice-President", "Prime Minister"),
    Question("Which states has only one member of the Lok Sabha", "C",
        "Rajasthan", "Madhya Pradesh", "Sikkim", "Uttar Pradesh"),
    Question("Which Indian state had the first woman Chief Minister", "A",
        "Uttar Pradesh", "Madhya Pradesh", "Sikkim", "Arunachal Pradesh"),
    Question(
        "Who appoints the Governor of Jammu & Kashmir",
        "C",
        "Prime Minister of India",
        "Chief Minister",
        "The President of India",
        "Governor"),
  ];

  void nextQuestion() {
    if (_qe < _questionbankhard.length - 1) {
      _qe++;
    }
  }

  String getQuestion() {
    return _questionbankhard[_qe].question;
  }

  String getAnswer() {
    return _questionbankhard[_qe].answer;
  }

  String o1() {
    return _questionbankhard[_qe].opt1;
  }

  String o2() {
    return _questionbankhard[_qe].opt2;
  }

  String o3() {
    return _questionbankhard[_qe].opt3;
  }

  String o4() {
    return _questionbankhard[_qe].opt4;
  }

  bool isFinished() {
    if (_qe >= _questionbankhard.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    Random random = new Random();
    _qe = random.nextInt(40);
  }
}

class QuizBrainMedium {
  int _qe = 0;

  List<Question> _questionbankmedium = [
    Question(
        "The upper house of Indian Parliament is known as  ",
        "A",
        "The Rajya Sabha",
        "The Lok Sabha ",
        "The Vidhan Sabha",
        "The Vidhan Parishad"),
    Question(
        "Which is the house where the Chairperson is not the member of that house",
        "C",
        "Lok Sabha",
        "Vidhan Parishad",
        "Rajya Sabha",
        "Vidhan Sabha"),
    Question("The first mid-term elections for Lok Sabha were held in", "A",
        "1971", "1999", "1987", "1934"),
    Question("Finance bill of Indian Government is presented in", "C",
        "Upper House", "Middle House", "Lower House", "Raw House"),
    Question("The Chairperson of the Lok Sabha is designated as", "A",
        "speaker", "President", "Vice-President", "Prime Minister"),
    Question("Which states has only one member of the Lok Sabha", "C",
        "Rajasthan", "Madhya Pradesh", "Sikkim", "Uttar Pradesh"),
    Question("Which Indian state had the first woman Chief Minister", "A",
        "Uttar Pradesh", "Madhya Pradesh", "Sikkim", "Arunachal Pradesh"),
    Question(
        "Who appoints the Governor of Jammu & Kashmir",
        "C",
        "Prime Minister of India",
        "Chief Minister",
        "The President of India",
        "Governor"),
    Question("Who has the right to transfer any case anywhere in India", "A",
        "Supreme Court", "High Court", "Local Court", "Panchayat"),
    Question(
        "The Contingency Fund of the State is operated by",
        "D",
        "Prime Minister of India",
        "Chief Minister",
        " The President of India",
        "Governor of the State"),
    Question(
        " Fist president of India who died while in office",
        "A",
        " Zakir Hussain",
        "Rajendra Prasad",
        "Jawahar Lal Nehru",
        "Sardar Patel"),
    Question("The first British viceroy of India", "C", "Lord Kargen",
        "Lord Irvin", "Lord Cannon", "Lord Tom"),
    Question(
        "The longest Corridor in India?",
        "A",
        "Rameswaram temple Corridor",
        "Meenakshi Temple",
        "Kanyakumari Temple",
        "Badri Nath Temple"),
    Question(
        "Who won the Nobel Prize for peace in the year 2014?",
        "A",
        "Malala Yousafzai & Kailash Satyarthi",
        "Mother Teresa",
        "Pandit Jakir Hussain",
        "Abdul Kalam Azad"),
    Question("The First women Airline pilot", "C", "Hema Devi",
        "Babita Savarkar", "Durga Banerjee", "Neha Sharma"),
    Question("Father of Indian space program?", "C", "Rajesh Sharma",
        "Ashutosh Verma", "Vikram Sarabhai", "Mohan Pandey"),
    Question(
        "City of festivals?", "A", "Maduri", "Varanasi", "jaipur", "Nagpur"),
    Question("Study of insects is known as", "C", "Astrology", "Emetology",
        "Entomology", "Geology"),
    Question("Instrument is used to measure heat", "A", "Calorimeter",
        "Barometer", "Lactometer", "Thermometer"),
    Question("River Krishna is originated from", "C", "Eastern Ghats",
        "Northern Ghats", "Western Ghats", "Southern Ghats"),
    Question("Founder of Buddhism Buddha’s original name", "A", "Siddhartha",
        "Dushyant", "Samara", "Mahatma"),
    Question("Queen of Arabian sea", "C", "Bombay", "Andaman", "Cochin", "Goa"),
    Question(
        " Silicon city of India", "A", "Bangalore", "Goa", "Jaipur", "Delhi"),
    Question("The study of sound & sound waves", "C", "Mechanical", "Technical",
        "Acoustics", "Sound Waves"),
    Question(
        "Instrument used for recording & origin of intensity of earthquakes",
        "C",
        " Light Metre",
        "Clock",
        "Seismograph",
        "Thermometer"),
    Question("Sound level while a rocket taking off", "A", "130db", "120db",
        "150db", "170db"),
    Question("World press Freedom Day is on", "C", "1st June", "22nd July",
        "3rd May", "15th August"),
    Question("United Nations Organization headquarters is at", "C", "Canada",
        "Spain", "New York", "Japan"),
    Question(
        "Who was the first recipient of Rajiv Gandhi Khel Ratna award, the highest sports honour in India?",
        "C",
        "Sachin Tendulkar",
        "Leander Paes",
        "Viswanathan Anand",
        "Sania Mirza"),
    Question("Chukker and Mallet terms are associated with the game of", "C",
        "Water Polo", "Tennis", "Polo", "Basket Ball"),
  ];

  void nextQuestion() {
    if (_qe < _questionbankmedium.length - 1) {
      _qe++;
    }
  }

  String getQuestion() {
    return _questionbankmedium[_qe].question;
  }

  String getAnswer() {
    return _questionbankmedium[_qe].answer;
  }

  String o1() {
    return _questionbankmedium[_qe].opt1;
  }

  String o2() {
    return _questionbankmedium[_qe].opt2;
  }

  String o3() {
    return _questionbankmedium[_qe].opt3;
  }

  String o4() {
    return _questionbankmedium[_qe].opt4;
  }

  bool isFinished() {
    if (_qe >= _questionbankmedium.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    Random random = new Random();
    _qe = random.nextInt(40);
  }
}
