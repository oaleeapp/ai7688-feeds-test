#!bin/bash
iwpriv ra0 set SiteSurvey=1
sleep 5
iwpriv ra0 get_site_survey | sed 1d | while read line;
do
  echo $line > /Oya/flask_server/APLIST.txt
done
