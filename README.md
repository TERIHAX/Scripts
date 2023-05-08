# Notice (If You Can't Find Something Read Below)
**If you get banned, I am not responsible nor are the creators of these scripts.**
*Please tell me if there are any scripts that don't work or if they are malicious by creating an issue [here](https://github.com/TERIHAX/Scripts/issues). (https://github.com/TERIHAX/Scripts/issues)*

Also, if you're wondering where the Dex Explorer script is, it's [here](https://github.com/TERIHAX/Scripts/tree/main/Universal/Dex%20Explorers). (Sentinel Dex, Dex V1 to V4, Including Dark Dex)

And Remote Spys are [here](https://github.com/TERIHAX/Scripts/tree/main/Universal/Remote%20Spies).

And Admin Scripts are [here](https://github.com/TERIHAX/Scripts/tree/main/Universal/Admin%20Scripts).

SE (Script Exodus) Hub is Not Made by Me, I Just Grouped Their Scripts Into a Hub.
And If You Use SE Hub on Mad City, There is a Ban Risk, And Pet Simulator X Has Active Admins There.

# YOU CAN MAKE PULL REQUESTS TO ADD NEW SCRIPTS, AND I WILL ACCEPT THEM

-----------------------
-----------------------

# How to turn into a `loadstring()`
## 1. Copy the raw link:

![image](https://user-images.githubusercontent.com/69073505/229570395-b9206245-eaef-4595-83da-f970c5c3d854.png)
![image](https://user-images.githubusercontent.com/69073505/229571110-43734606-8e3a-4b57-9205-d2bd94d14d1f.png)

#### The context/right click menu may look different on different browsers and operating systems.

## 2. Go to [this link](https://loadstringer.mattlawz.dev/) ([loadstringer.mattlawz.dev](https://loadstringer.mattlawz.dev/)) and put in the link that you copied.

![image](https://user-images.githubusercontent.com/69073505/229574811-76e31b79-0c9e-4735-af85-3dc8b6c35f25.png)

### Done.

----------------------

## 3. Another way is to put `loadstring(game:HttpGet('` in front of your link and `', true))()` at the end, like this:
### `loadstring(game:HttpGet('YOUR LINK HERE', true))()`

You **MUST** put `, true` after your link because it makes it directly retrieve it from the server and not from cache.

----------------------

## 4. This other way is probably better, put `loadstring(game:HttpGetAsync('` in front of your link and `'))()` at the end, like this:
### `loadstring(game:HttpGetAsync('YOUR LINK HERE'))()`
