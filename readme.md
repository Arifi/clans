# FAF Clan Management
http://faforever.com/clans

Forged Alliance Forever (FAF) is a community developed replacement for the defunct GPGNet game lobby for Supreme Commander Forged Alliance.
For more information about FAF visit official homepage: 
http://www.faforever.com

Forum-Thread: http://www.faforever.com/forums/viewtopic.php?f=45&t=6618

This application was orginally designed by Brendan Hart and distributed on Bitbucket: 
https://bitbucket.org/hartbren/faf_clans_webapp
Application supposed to fulfill goals of Quest for Webcoders that was organized by Ze_PilOt (main developer of FAF):
http://www.faforever.com/forums/viewtopic.php?f=2&t=2881
Brendan Hart disappeared without single word in October 2013. We decided to finish application.
Dragonfire finished the application 2014 and integrate it with Ze_PilOt.

## Installation Guide

0. Obtain the webapp source from GitHub: https://github.com/FAForever/clans

1. Extract into a folder which is accessible via your webserver

2. Create two databases from schemas:
* faf: https://github.com/FAForever/clans/blob/master/model/faf_db_schema.sql
* clans: https://github.com/FAForever/clans/blob/master/model/fafclans.sql

3. Modify index.php to have the correct server address/username/password for the two
 databases (clans and faf). Make sure that user has privileges to access these databases.

4. The Webserver needs to be configured something like the following. (Assuming Apache, adapt as needed for other servers)

## Planning

* Migrate to Foundation: https://github.com/FAForever/website
* Use for the View React (+ JQuery): https://facebook.github.io/react/
* Data Access over FAF API (faftools): https://github.com/FAForever/faftools
* Model Framework: https://github.com/orbitjs/orbit.js
* Cleanup database

## Specifiation
A short overview of the features of the clan system

* Player can login with their faf login
    * case insensitive loginname
* Login is stored
* Logout
* Home/News page with short infos about the app
* Clan List
    * Clan Name
    * Clan Tag
    * CLan Leader
    * Members
    * sortable, searchable, pages
    * Detail Page
        * Clan Description
        * Founder
        * Founded Date
* Clan Page
    * linkable page
    * join the clan
    * Clan Details
        * Name
        * Clan Tag
        * Members
        * Leader
        * Founder
        * Founded Date
        * Clan Description
    * Member Overview
        * See joined data
        * see rank 
            * ACU = Leader
            * LAB = Member
        * sortable, searchable, pages
* Player List
    * show only players that has once login to the clan system
    * sortable, searchable, pages
* My Clan
    * General
        * Invite Player
        * Change Leader
        * Delete Clan
    * Accept/Reject Membership Requests
    * Clan Details same as Clan Page
    * Clan Details Change ...
        * Name
        * Clan Tag (max 3 symbols)
        * Description 
    * Member Overview
        * same as in the Clan Page
        * Remove Member from Clan
* Create Clan
    * same Input then My Clan page
* Notifications
    * Show invitations from clans
        * You can accept or reject Clan Invitations

## Rejected/Dropped Features

* Clan Tag with 4 charcters
* Message System
    * Send messages to player
    * Send messages to clans
    * Anwer messages
* Email Notification
    * if member accept join request
    * if player receive invitation
* Clan Avatars
* External link to clan pages
* Player Stats
* Organize Clan Matches/Tournaments
* Clan Stats
    * e.g Win/Lose
* Integration into Faf.Client (Lobby) notification system

