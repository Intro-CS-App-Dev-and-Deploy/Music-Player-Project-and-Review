
For Arrays

File directory = new File("D:\\Documents\\GitHub\\Final-Project\\Musicxs");
  System.out.println(directory.getAbsolutePath());
  File[] FileList = folder.listFiles();
  for (File file : FileList) {
    if (file.isFile()) {
      if (file.toString().endsWith(".mp3")) {
        System.out.println(file.getName().toLowerCase()); //Lists Files In Music Folder ending in ".mp3"
      }
    }
  }
  //println(""); //Debug and Song List via java
  printArray(FileList); //Had no time to finish/optimize, using processing language