//
//  Transition.swift
//  NMBaseUIClasses
//
//  Created by Nicolas Mahe on 27/04/15.
//  Copyright (c) 2015 Nicolas Mahé. All rights reserved.
//

import UIKit

//@todo: add example

extension UIView {

  /**
  Do a modal transition to the new controller and dealloc the old controller
  */
  public class func transitionDeinit(
    toController: UIViewController,
    transition: UIViewAnimationOptions,
    duration: TimeInterval = 0.3,
    animation: @escaping (_  callback: @escaping () -> Void) -> Void = { (callback) -> Void in callback() }
    ) {

      let delegate = UIApplication.shared.delegate

      let anim = { () -> Void in ()
        delegate?.window??.rootViewController = toController
        delegate?.window??.makeKeyAndVisible()
      }

      if let window = delegate?.window, let _window = window  {
        
        UIView.transition(
          with: _window,
          duration: duration,
          options: UIViewAnimationOptions.allowAnimatedContent.union(transition),
          animations: { () -> Void in
            animation(anim)
          },
          completion: { (success:Bool) -> Void in
          }
        )
        
      }
  }
  
}


//Example:
//UIView.transitionDeinit(
//  toController: UINavigationController(rootViewController: OnBoardingViewController()),
//  transition: UIViewAnimationOptions.transitionFlipFromLeft,
//  animation: { [weak self] (callback) -> Void in ()
//    self?.navigationController?.dismiss(
//      animated: false,
//      completion: { () -> Void in
//        callback()
//    }
//    )
//  }
//)
