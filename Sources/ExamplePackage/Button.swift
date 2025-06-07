//
//  Button.swift
//  
//
//  Created by Samuel Alake on 6/7/25.
//


/// A customizable button component for the design system.
///
/// Use this button to represent a tappable element with a label and optional action.
///
/// ```swift
/// let button = Button(title: "Click Me") {
///     print("Button tapped!")
/// }
/// ```
public struct Button {
    /// The text displayed on the button.
    public let title: String
    
    /// The action to perform when the button is tapped.
    public let action: () -> Void
    
    /// Creates a new button with a title and action.
    ///
    /// - Parameters:
    ///   - title: The text to display on the button.
    ///   - action: A closure to execute when the button is tapped.
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    /// Simulate tapping the button.
    public func tap() {
        action()
    }
}
