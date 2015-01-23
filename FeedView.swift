//
//  FeedView.swift
//
//  Created by Dalton Cherry on 1/23/15.
//  Copyright (c) 2015 Vluxe. All rights reserved.
//

import UIKit

public class FeedView: UIScrollView {
    
    public  var topSpacing: CGFloat = 6.0
    public  var leftSpacing: CGFloat = 6.0
    private var padding: CGFloat = 0
    ///init method
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    //init method
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    //layout the views!
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    //add views to the super view (this view).
    public func addViews(views: Array<UIView>, animated: Bool) {
        var leftPad = leftSpacing + padding
        var topPad = topSpacing + padding
        var top = topPad
        var left = leftPad
        var tallest: CGFloat = 0
        var delay: NSTimeInterval = 0.0
        for view in views {
            if view.frame.size.width > self.frame.size.width - leftPad {
                continue //this view is to wide, skip it
            }
            self.addSubview(view)
            if view.frame.size.width > self.frame.size.width - left {
                top += tallest + topPad
                left = leftPad
                tallest = 0
            }
            
            if animated {
                UIView.animateWithDuration(0.5, delay: delay, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5,
                    options: .TransitionNone, animations: { () -> Void in
                    view.frame = CGRectMake(left, top, view.frame.size.width, view.frame.size.height)
                    }, completion: { (Bool) -> Void in
                })
            } else {
                view.frame = CGRectMake(left, top, view.frame.size.width, view.frame.size.height)
            }
            left += view.frame.size.width + leftPad
            if view.frame.size.height > tallest {
                tallest = view.frame.size.height
            }
            delay += 0.1
        }
        self.contentSize = CGSizeMake(self.frame.size.width, top+tallest+topPad)
    }
    
    ///does some handy math to give the recommend size based on the desired row count and spacing
    public func recommendedSize(rowCount: Int,adjustSpacing: Bool) -> CGFloat {
        let r = CGFloat(rowCount)
        let size = floor((self.frame.size.width-((r+1)*leftSpacing))/r)
        if adjustSpacing {
            padding = (self.frame.size.width-(size*r+(leftSpacing*(r+1))))/r
        } else {
            padding = 0
        }
        return size
    }
}