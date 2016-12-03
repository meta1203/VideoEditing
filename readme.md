VideoEditing
============

Some bash scripts I use to make snack sized video cuts.

**Requirements:**

- ffmpeg
- bc
- x264 encoder
- any other decoders needed to decode your videos

  

Commands:  
./2pass.sh \<filename\> \<final file size in MB\>  
Runs a x264 two-pass encode on a file using a bitrate determined by the target size and the length of the video  
Video bitrate = calculated bitrate - 128 kbps (audio)

./resize.sh \<filename\> \<height in pixels\>  
Uses ffmpeg to scale a video's size to a height specified.  
The video scales proportionally to the specified height.
