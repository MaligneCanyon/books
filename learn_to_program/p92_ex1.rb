def copy_file(src, dest)
  File.open(dest, 'w') { |f| f.write(File.read(src)) }
end


# the direct access path to my camera, via USB cable, does not work in Ubuntu
#pic_names = Dir["gphoto2://[usb:002,014]/DCIM/103CANON/IMG_307*.{JPG,jpg}"]
# however, access via the card reader does work
pic_names = Dir["/media/gmk/CANON_DC/DCIM/103CANON/IMG_307*.{JPG,jpg}"]
puts pic_names
if pic_names.length > 0
  Dir.chdir "/home/gmk/ruby/learn_to_program/media"
  puts "copying files to directory #{Dir.pwd}"
  print "what would you like to call this batch ?  "
  batch_name = gets.chomp
  print "downloading #{pic_names.length} files:  "
  pic_num = 1
  progress_str = ""
  pic_names.each do |fname|
    new_fname = "#{batch_name}" + (pic_num < 10) ? "0" : "" + "#{pic_num}.jpg"
    pic_num += 1
    progress_str << "."

    #File.rename(fname, new_fname) # better to copy file than to rename it
    if File.exist?(new_fname)
      print "\nfile #{new_fname} already exists;" +
        "'o' to overwrite, 's' to skip, 'x' to exit: "
      choice = gets.chomp
      exit if choice == 'x'
      print progress_str
      next unless choice == 'o'
    else
      print "."
    end

    copy_file(fname, new_fname)
  end
  puts "\ndone!"
else
  puts "no files found"
end
