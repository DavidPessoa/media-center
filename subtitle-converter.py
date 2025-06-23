import os
import subprocess

# Define the base directories for TV shows and movies
base_dirs = [
    "/nas/media-center/data/media/tv",
    "/nas/media-center/data/media/movies"
]

# Loop through each base directory
for base_dir in base_dirs:
    # Walk through all subdirectories
    for root, _, files in os.walk(base_dir):
        # Find all .ASS files in the current directory
        ass_files = [f for f in files if f.endswith(".ass")]
        
        # Convert each .ASS file to .SRT
        for ass_file in ass_files:
            # Input path for .ass
            ass_path = os.path.join(root, ass_file)
            # Generate the output .srt filename
            srt_file = os.path.splitext(ass_file)[0] + ".srt"
            # Output path for .srt
            srt_path = os.path.join(root, srt_file)
            
            # Convert .ass to .srt with ffmpeg
            subprocess.run(["ffmpeg", "-i", ass_path, srt_path])
