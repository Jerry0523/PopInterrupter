# PopInterrupter
A drop-in library that helps manage the UINavigationController's interactivePopGestureRecognizer and backButtonItem. You can interrupt the pop back manually. It also helps to solve the conflicts between the interactivePopGestureRecognizer and the scrollView's panGestureRecognizer.


Usage
-------

### When your app finishes launch, call the function below to start up the helper.

```swift
PopInterrupter.load()
```
> swizzle UINavigationController.viewDidLoad

### Examples of pop interruption is as follow.

```swift
import UIKit
import PopInterrupter

class ViewController: UIViewController, AnyPopInterrupter {

    var isPopEnabled: Bool {
        if !jobHasDone {
            let alertController = UIAlertController(title: "Attention", message: "Are you sure to leave this page?", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { action in
            self.navigationController?.popViewController(animated: true)
            }))
            alertController.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        return jobHasDone
    }

    var jobHasDone = false
}

```

>Make the vc conform to the protocol AnyPopInterrupter.

>Override the property isPopEnabled. Set to true if pop is enabled.

>Set to false to interrupt the pop gesture. You can even do some additional jobs (show an alert , e.g.).

>Keep in mind that the bar's back BarButtonItem and pop gesture are under control symantaniously.

License
-------
(MIT license)

