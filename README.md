# Tipster
Tip Calculator application; pre-work submission for CodePath.

# Pre-work - *Tipster*

**Tipster** is a tip calculator application for iOS.

Submitted by: **Rohan Raval**

Time spent: **15** hours spent in total

## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Redesigned UI to more robust structure; added vibrant and colorful themes
- [x] Settings page includes ability to change between "light" (orange background, blue text) and "dark" (blue background, orange text) color themes on the home page
- [x] Selected theme is set as default; the user will see the the selected theme every time app is opened until he/she changes the theme
- [x] Functionality to split the bill up to 4 ways. User selects how many people are splitting the bill and the bill per person is displayed along with the total bill.
- [x] Per person bill is hidden when the bill is not being split (i.e. the selected number of people splitting the bill is set to 1)
[x] Added App Icon

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://imgur.com/2BtidD7.gif' title='Video Walkthrough - Basic' width='' alt='Video Walkthrough' />
- Walkthrough of the basic functions

<img src='http://imgur.com/xUZq6Zd.gif' title='Video Walkthrough - Basic' width='' alt='Video Walkthrough' />
- Walkthrough of the advanced functions (settings page: default tip setting, color themes)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

- [x] I had no previous experience with Swift and XCode, but I was able to learn quickly.
- [x] I experienced difficulty in figuring out how to change the background color and text colors on the home screen from the settings page (i.e. how to communicate information between the ViewControllers). I had to use NSDefaults to resolve the problem.

## License

    Copyright [2015] [Rohan Raval]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
