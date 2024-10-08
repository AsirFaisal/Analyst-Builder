
# Write a query to report the IDs of low quality YouTube videos.
#A video is considered low quality if the like percentage of the video (number of likes divided by the total number of votes) is less than 55%.
#Return the result table ordered by ID in ascending order.
# link https://www.analystbuilder.com/questions/low-quality-youtube-video-idbeu

SELECT video_id 
FROM youtube_videos
WHERE ROUND(thumbs_up / (thumbs_up + thumbs_down), 2) < 0.55
ORDER BY video_id;