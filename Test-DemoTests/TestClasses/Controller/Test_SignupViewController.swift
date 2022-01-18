

import XCTest
@testable import Test_Demo

class Test_SignupViewController: XCTestCase {
    var storyboard: UIStoryboard!
    var signupVC: SignupViewController!

    override func setUpWithError() throws {
        let model = SignupModel(firstName: "Sabiul", lastName: "S J", email: "234sabiul@gmail.com",
                                password: "@AAAa0609", repeatedPassword: "@AAAa0609")
        signupVC = SignupViewController.getVC(with: SignupVM(model: model))
        signupVC.loadViewIfNeeded()
    }
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        storyboard = nil
        signupVC = nil
    }
    
    
    func testSignupViewController_Check_TextFields_EmptyInitialValues() throws {
        
        //Check for Initial Empty Value
        XCTAssertEqual(signupVC.firsName.text, "", "Failed - First name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(signupVC.lastName.text, "", "Failed - Last name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(signupVC.email.text, "", "Failed - Email text field was not empty when the view controller initially loaded")
        XCTAssertEqual(signupVC.password.text, "","Failed - Password text field was not empty when the view controller initially loaded")
        XCTAssertEqual(signupVC.repeatedPassword.text, "","Failed - Repeat Password text field was not empty when the view controller initially loaded")
    }
    func testSignupViewController_Check_TextFields_Placeholder() throws {
        
        //Check for Placeholder
        XCTAssertEqual(signupVC.firsName.placeholder, Placeholder.firstName, "Failed - First name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(signupVC.lastName.placeholder, Placeholder.lastName, "Failed - Last name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(signupVC.email.placeholder, Placeholder.email, "Failed - Email text field was not empty when the view controller initially loaded")
        XCTAssertEqual(signupVC.password.placeholder, Placeholder.password,"Failed - Password text field was not empty when the view controller initially loaded")
        XCTAssertEqual(signupVC.repeatedPassword.placeholder, Placeholder.repeatedPassword,"Failed - Repeat Password text field was not empty when the view controller initially loaded")
    }
    func testSignupViewController_Check_TextFields_ContentTypes() throws {
        XCTAssertEqual(signupVC.firsName.textContentType, .namePrefix, "FirstName ContentType is not matching")
        XCTAssertEqual(signupVC.lastName.textContentType, .nameSuffix, "LastName ContentType is not matching")
        XCTAssertEqual(signupVC.email.textContentType, .emailAddress, "Email ContentType is not matching")
        XCTAssertEqual(signupVC.password.textContentType, .password, "Password ContentType is not matching")
        XCTAssertEqual(signupVC.repeatedPassword.textContentType, .password, "Repeated Password ContentType is not matching")
    }
    func testSignupViewController_Check_TextFields_KeyboardType() throws {
        XCTAssertEqual(signupVC.firsName.keyboardType, .asciiCapable, "FirstName keyboardType is not matching")
        XCTAssertEqual(signupVC.lastName.keyboardType, .asciiCapable, "LastName keyboardTypekeyboardType is not matching")
        XCTAssertEqual(signupVC.email.keyboardType, .emailAddress, "Email keyboardType is not matching")
        XCTAssertEqual(signupVC.password.keyboardType, .asciiCapable, "Password keyboardType is not matching")
        XCTAssertEqual(signupVC.repeatedPassword.keyboardType, .asciiCapable, "Repeated Password keyboardType is not matching")
    }
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
