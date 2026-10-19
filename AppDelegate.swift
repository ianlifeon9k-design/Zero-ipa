import UIKit
import WebKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let w = UIWindow(frame: UIScreen.main.bounds)
        w.rootViewController = WebViewController()
        w.makeKeyAndVisible()
        window = w
        return true
    }
}

class WebViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!

    override func loadView() {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []
        webView = WKWebView(frame: .zero, configuration: config)
        webView.uiDelegate = self
        webView.isOpaque = false
        webView.backgroundColor = UIColor(red: 0.035, green: 0.035, blue: 0.047, alpha: 1)
        webView.scrollView.backgroundColor = webView.backgroundColor
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.scrollView.bounces = false
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
    }

    override var preferredStatusBarStyle: UIStatusBarStyle { .lightContent }
}
