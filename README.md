# Implement-Count-UP-Down-Timer-
This will use timer to Show Count UP/Down in String with proper time format


```
//Declare variable
var count = 0
var videoTimer: Timer!

//Call It in ViewDidLaod

   //VideoTimer
 self.videoTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(videoTimerUpdate), userInfo: nil, repeats: true)



// this is selector function call outside viewDidLoad 
    @objc func videoTimerUpdate() {
        
        if(count >= 0){
            //let hours = String(count / 3600)
            let minutes = Int(count) / 60 % 60 
            let seconds = Int(count % 60)
            timerForVideo.text = String(format:"%02i:%02i",minutes, seconds) //minutes + ":" + seconds
            count += 1
        }
    }
