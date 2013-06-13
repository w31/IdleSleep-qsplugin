About Quicksilver Plugins on Github
===================================

This repository contains the current source code of a the Quicksilver Plugin / Module. If you're having issues with this plugin, feel free to log them at the [Quicksilver issue tracker](https://github.com/quicksilver/Quicksilver/issues).

Always be sure to check the [Google Groups](http://groups.google.com/group/blacktree-quicksilver/topics?gvc=2) first incase there's a solution to your problem, as well as the [QSApp.com Wiki](http://qsapp.com/wiki/).


Before You Try It Out
---------------------

Before trying out any of these plugins, it's always a good idea to **BACKUP** all of your Quicksilver data.

This is easily done by backing up the following folders 

(`<user>` stands for your short user name):

`/Users/<user>/Library/Application Support/Quicksilver`  
`/Users/<user>/Library/Caches/Quicksilver`

	
Before Building
---------------

Before being able to build any of these plugins, you **MUST** set a new Source Tree for the `QSFramework` in the XCode Preferences.

This is done by going into the XCode preferences, clicking 'Source Trees' and adding a new one with the following options:

Setting Name: `QSFrameworks`  
Display Name: a suitable name, e.g. `Quicksilver Frameworks`  
Path: `/Applications/Quicksilver.app/Contents/Frameworks` (or path of Quicksilver.app if different)

For some plugins to compile correctly a source tree must also be set for `QS_SOURCE_ROOT` that points to the location of the [Quicksilver source code](https://github.com/quicksilver/Quicksilver) you've downloaded onto your local machine.

Setting Name: `QS_SOURCE_ROOT`	
Display Name: a suitable name, e.g. `Quicksilver source code root`	 
Path: `/Users/<user>/<path to Quicksilver source code>`

See the QSApp.com wiki for more information on [Building Quicksilver](http://qsapp.com/wiki/Building_Quicksilver).

Also check out the [Quicksilver Plugins Development Reference](http://projects.skurfer.com/QuicksilverPlug-inReference.mdown), especially the [Building and Testing section](http://projects.skurfer.com/QuicksilverPlug-inReference.mdown#building_and_testing).

Legal Stuff 
-----------

By downloading and/or using this software you agree to the following terms of use:

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this software except in compliance with the License.
    You may obtain a copy of the License at
    
      http://www.apache.org/licenses/LICENSE-2.0
    
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


Which basically means: whatever you do, I can't be held accountable if something breaks.

