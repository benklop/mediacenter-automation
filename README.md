# mediacenter-automation
A collection of scripts for use in my media center box. Derived from numerous sources, and probably not useful to anyone but me.

## bin/find-orphans.py
A modified and enhanced version of the find-orphans script available on [the mythtv wiki](https://www.mythtv.org/wiki/Find_orphans.py)
This version recognises mp4, mkv, flv, and avi files in storage directories, and associated .nfo and en.sub files, and will not remove them unless they are not tied to a recording. 
I'm hoping this will make it unnecessary to use links to add downloads to mythtv's recording list - at least once changes like this are in a few more places.
Not using links should, in turn, make managing space a bit easier.

## sickbeard-2-myth.py
Modified and enhanced version of the mythtv / sickbeard integration script originally by [Andrew Leech](https://github.com/andrewleech/sickbeard-2-myth)
This version includes more information in the recording that was not originally included, and works with current MythTV, SickRage, and Kodi metadata format. 

##future plans
I'd like to add a user job for mythtv that would notify sickbeard when a recording has occurred, and its quality.

One other thought would be to use SickRage as a tuner and listings source, but I'm not sure how well that could work.
