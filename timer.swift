    import UIKit

    class TimerViewController: UIViewController {
    //video timer
    var videoTimer: Timer!
    var count = 0
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
         //VideoTimer
         self.videoTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(videoTimerUpdate), userInfo: nil, repeats: true)
        
        }
    
    
        @objc func videoTimerUpdate() {
        
        if(count >= 0){
            //let hours = String(count / 3600)
            let minutes = Int(count) / 60 % 60 //Int(count / 60)
            let seconds = Int(count % 60)
            timerForVideo.text = String(format:"%02i:%02i",minutes, seconds)//minutes + ":" + seconds
            count += 1
        }
    }
    
    // Call this method from the function or button where u want to stop the timer ,if u dont do that then timer will be always running in background 
    videoTimer.invalidate() // invalidate it to stop the timer
    
    }
