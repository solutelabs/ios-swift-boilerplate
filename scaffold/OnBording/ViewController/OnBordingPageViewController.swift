//
//  OnBordingPageViewController.swift
//  scaffold
//
//  Created by sl-mini on 13/07/21.
//

import UIKit

class OnBordingPageViewController: UIPageViewController {

    let btnSkip = UIButton()
    let btnContinue = UIButton()
    let pageControl = UIPageControl()
    
    var pages = [UIViewController]()
    let initialPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        style()
        layout()
    }

    // MARK: - Action
    @objc func skipTapped(_ sender: UIButton) {
        /*let lastPageIndex = pages.count - 1
        pageControl.currentPage = lastPageIndex
    
        goToSpecificPage(index: lastPageIndex, ofViewControllers: pages)
        animateControlsIfNeeded()*/
        showWelcomeScreen(from: true)
    }
    
    @objc func nextTapped(_ sender: UIButton) {
        pageControl.currentPage += 1
        goToNextPage()
       animateControlsIfNeeded()
   }

    @objc func pageControlTapped(_ sender: UIPageControl) {
        setViewControllers([pages[sender.currentPage]], direction: .forward, animated: true, completion: nil)
        animateControlsIfNeeded()
    }
    
    @objc func onBtnContinueTap(_ sender: UIButton) {
        showWelcomeScreen(from: false)
    }
    
    func showWelcomeScreen (from skip: Bool) {
        //  swiftlint:disable force_cast
        let next = self.storyboard?.instantiateViewController(withIdentifier: StorybordIndetifiersList.welcomeViewController.rawValue) as! WelcomeViewController
        // performSegue(withIdentifier: "WelcomeViewController", sender: self)
        setViewControllers([next], direction: .forward, animated: true, completion: nil)
       // self.navigationController?.pushViewController(next, animated: true)
        // swiftlint:enable force_cast
        btnContinue.isHidden = true
        pageControl.isHidden = true
        
        if skip {
            btnSkip.isHidden = true
        }
    }
    
    func setup() {
        dataSource = self
        delegate = self
        // pagecontrol.addTarget(self, action: #selector(pageControlTapped(_:)), for: .valueChanged)
        pages.append(getStepZero())
        pages.append(getStepOne())
        pages.append(getStepTwo())
        
        setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
    }
    
    func style() {
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPageIndicatorTintColor = UIColor(named: "Primary")
        pageControl.pageIndicatorTintColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = initialPage
        pageControl.isUserInteractionEnabled = false
        removeSwipeGesture()

        btnSkip.translatesAutoresizingMaskIntoConstraints = false
        btnSkip.setTitleColor(.black, for: .normal)
        btnSkip.setTitle("Skip", for: .normal)
        btnSkip.addTarget(self, action: #selector(skipTapped(_:)), for: .primaryActionTriggered)

        btnContinue.translatesAutoresizingMaskIntoConstraints = false
        btnContinue.frame.size = CGSize(width: 50, height: 50)
        btnContinue.layer.cornerRadius = 0.5 * btnContinue.bounds.size.width
        btnContinue.clipsToBounds = true
        btnContinue.setImage(UIImage(named: "LeftArrow"), for: .normal)
        btnContinue.backgroundColor = UIColor(named: "Primary")
        btnContinue.addTarget(self, action: #selector(nextTapped(_:)), for: .primaryActionTriggered)
        btnContinue.layer.masksToBounds = false
        btnContinue.layer.shadowColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1)
        // btnContinue.layer.shadowOpacity = 1.0
        btnContinue.layer.shadowRadius = 0
        btnContinue.layer.shadowOffset = CGSize(width: 0, height: 35)
    }
    
    func layout() {
        view.addSubview(pageControl)
        view.addSubview(btnContinue)
        view.addSubview(btnSkip)
        
        NSLayoutConstraint.activate([
            pageControl.topAnchor.constraint(equalTo: view.topAnchor, constant: (view.frame.size.height - 100)),
            pageControl.leadingAnchor.constraint(equalToSystemSpacingAfter:
                                                    view.layoutMarginsGuide.leadingAnchor, multiplier: 0),
            
            btnSkip.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 30),
            btnSkip.widthAnchor.constraint(equalToConstant: 100),
            btnSkip.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 5),
            
            btnContinue.widthAnchor.constraint(equalToConstant: 50),
            btnContinue.heightAnchor.constraint(equalToConstant: 50),
            btnContinue.trailingAnchor.constraint(equalToSystemSpacingAfter:
                                                    view.layoutMarginsGuide.trailingAnchor, multiplier: 0),
            btnContinue.leadingAnchor.constraint(equalTo: pageControl.trailingAnchor, constant: 200),
            btnContinue.topAnchor.constraint(equalTo: btnSkip.bottomAnchor, constant: view.frame.size.height - 200)
        ])
        // Scale Dots
        let scale: CGFloat = 2.0
        pageControl.transform = CGAffineTransform.init(scaleX: scale, y: scale)
        
    }
    
    func removeSwipeGesture() {
        for view in self.view.subviews {
            if let subView = view as? UIScrollView {
                subView.isScrollEnabled = false
            }
        }
    }

    func getStepZero() -> Step0ViewController {
        // swiftlint:disable force_cast
        return storyboard!.instantiateViewController(withIdentifier: StorybordIndetifiersList.step0ViewController.rawValue) as! Step0ViewController
        // swiftlint:enable force_cast
    }
    
    func getStepOne() -> Step1ViewController {
        // swiftlint:disable force_cast
        return storyboard!.instantiateViewController(withIdentifier: StorybordIndetifiersList.step1ViewController.rawValue) as! Step1ViewController
        // swiftlint:enable force_cast
    }
    
    func getStepTwo() -> Step2ViewController {
        // swiftlint:disable force_cast
        return storyboard!.instantiateViewController(withIdentifier: StorybordIndetifiersList.step2ViewController.rawValue) as! Step2ViewController
        // swiftlint:enable force_cast
    }
}
// MARK: - Data Source -
extension OnBordingPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
//        guard let currentIndex = pages.firstIndex(of: viewController) else { return nil }
//
//        if currentIndex == 0 {
//            return nil // pages.last               // wrap last // Stop Loop of pages
//        } else {
//            return pages[currentIndex - 1]  // go previous
//        }
        return nil
    }
        
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let currentIndex = pages.firstIndex(of: viewController) else { return nil }

        if currentIndex < pages.count - 1 {
            return pages[currentIndex + 1]  // go next
        } else {
            hideControls()
            return nil // pages.first              // wrap first // Stop Loop of pages
        }
    }
}
// MARK: - Delegate -
extension OnBordingPageViewController: UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            didFinishAnimating finished: Bool, previousViewControllers: [UIViewController],
                            transitionCompleted completed: Bool) {
        
        guard let viewControllers = pageViewController.viewControllers else { return }
        guard let currentIndex = pages.firstIndex(of: viewControllers[0]) else { return }
        
        pageControl.currentPage = currentIndex
        animateControlsIfNeeded()
    }
    
    private func animateControlsIfNeeded() {
        let lastPage = pageControl.currentPage == pages.count - 1
        
        if lastPage {
            hideControls()
            btnContinue.addTarget(self, action: #selector(onBtnContinueTap(_:)), for: .touchUpInside)
        } else {
            showControls()
        }
    }
    
    private func hideControls() {
        btnSkip.isHidden = true
        btnContinue.setImage(UIImage(named: "Check"), for: .normal)
        
    }

    private func showControls() {
        btnSkip.isHidden = false
    }
    
}
