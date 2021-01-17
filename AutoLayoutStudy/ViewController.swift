//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    let emptyView = UIView()
    let emptyView1 = UIView()
    let emptyView2 = UIView()
    let emptyView3 = UIView()
    let scrollView = UIScrollView()
    let totalStackView = UIStackView()
    let loginLabel = UILabel()
    let loginImageView = UIImageView()
    let loginInfoLabel = UILabel()
    let loginEmailTextField = UITextField()
    let loginPasswordTextField = UITextField()
    let horizontalSwitchStackView = UIStackView()
    let horizontalButtonStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        let scrollViewHeight = scrollView.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor)
        scrollViewHeight.priority = .defaultLow
        
        addView()
        setUpLoginView()
        
        NSLayoutConstraint.activate([
            emptyView.heightAnchor.constraint(greaterThanOrEqualToConstant: 30),
            emptyView1.heightAnchor.constraint(equalTo: emptyView.heightAnchor),
            emptyView2.heightAnchor.constraint(equalTo: emptyView.heightAnchor),
            emptyView3.heightAnchor.constraint(equalTo: emptyView.heightAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollViewHeight,
        ])
    }
    
    private func addView() {
        view.addSubview(scrollView)
        scrollView.addSubview(totalStackView)
        totalStackView.addArrangedSubview(emptyView)
        totalStackView.addArrangedSubview(loginLabel)
        totalStackView.addArrangedSubview(loginImageView)
        totalStackView.addArrangedSubview(loginInfoLabel)
        totalStackView.addArrangedSubview(emptyView1)
        totalStackView.addArrangedSubview(loginEmailTextField)
        totalStackView.addArrangedSubview(loginPasswordTextField)
        totalStackView.addArrangedSubview(emptyView2)
        totalStackView.addArrangedSubview(horizontalSwitchStackView)
        totalStackView.addArrangedSubview(horizontalButtonStackView)
        totalStackView.addArrangedSubview(emptyView3)
    }
    
    //MARK: setUpLoginView
    private func setUpLoginView() {
        setUpViewMargin()
        setUpTotalStackView()
        setUpLoginLabel()
        setUpImageView()
        setUpLoginInfoLabel()
        setUpTextField()
        setUpSwitchStackView()
        setUpButtonStackView()
    }
    
    private func setUpViewMargin() {
        viewRespectsSystemMinimumLayoutMargins = false
        view.layoutMargins = UIEdgeInsets(top: 8, left: 20, bottom: 8, right: 20)
    }
    
    //MARK: TotalStackView
    private func setUpTotalStackView() {
        totalStackView.axis = .vertical
        totalStackView.translatesAutoresizingMaskIntoConstraints = false
        totalStackView.alignment = .center
        totalStackView.distribution = .fill
        totalStackView.spacing = 8
        
        NSLayoutConstraint.activate([
            totalStackView.widthAnchor.constraint(equalTo: view.widthAnchor),
            totalStackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            totalStackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            totalStackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            totalStackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
        ])
    }
    
    //MARK: LoginLabel
    private func setUpLoginLabel() {
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.text = "LoginScreen"
        loginLabel.font = .preferredFont(forTextStyle: .largeTitle)
        loginLabel.adjustsFontForContentSizeCategory = true
        loginLabel.numberOfLines = 0
    }
    
    //MARK: ImageView
    private func setUpImageView() {
        loginImageView.translatesAutoresizingMaskIntoConstraints = false
        loginImageView.image = UIImage(named: "Image")
        
        NSLayoutConstraint.activate([
            loginImageView.widthAnchor.constraint(equalTo: totalStackView.widthAnchor, multiplier: 0.7),
            loginImageView.heightAnchor.constraint(equalTo: loginImageView.widthAnchor, multiplier: 1)
        ])
    }
    
    //MARK: LoginInfoLabel
    private func setUpLoginInfoLabel() {
        loginInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        loginInfoLabel.text = "안녕하세요. 야곰 스터디 캠프에서 오토레이아웃 스터디를 진행하고 있어요. 이번 화면을 잘 만들어보자구요!!"
        loginInfoLabel.numberOfLines = 0
        loginInfoLabel.font = .preferredFont(forTextStyle: .callout)
        loginInfoLabel.textAlignment = .center
        loginInfoLabel.adjustsFontForContentSizeCategory = true
        
        NSLayoutConstraint.activate([
            loginInfoLabel.leadingAnchor.constraint(equalTo: loginImageView.leadingAnchor),
            loginInfoLabel.trailingAnchor.constraint(equalTo: loginImageView.trailingAnchor)
        ])
    }
    
    //MARK: TextField
    private func setUpTextField() {
        loginEmailTextField.translatesAutoresizingMaskIntoConstraints = false
        loginEmailTextField.font = .preferredFont(forTextStyle: .body)
        loginEmailTextField.adjustsFontForContentSizeCategory = true
        loginEmailTextField.placeholder = "E-mail"
        loginEmailTextField.borderStyle = .roundedRect
        
        loginPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginPasswordTextField.font = .preferredFont(forTextStyle: .body)
        loginPasswordTextField.adjustsFontForContentSizeCategory = true
        loginPasswordTextField.placeholder = "Password"
        loginPasswordTextField.borderStyle = .roundedRect
        
        NSLayoutConstraint.activate([
            loginEmailTextField.leadingAnchor.constraint(equalTo: loginImageView.leadingAnchor),
            loginEmailTextField.trailingAnchor.constraint(equalTo: loginImageView.trailingAnchor),
            loginPasswordTextField.leadingAnchor.constraint(equalTo: loginImageView.leadingAnchor),
            loginPasswordTextField.trailingAnchor.constraint(equalTo: loginImageView.trailingAnchor),
        ])
    }
    
    //MARK: SwitchStackView
    private func setUpSwitchStackView() {
        horizontalSwitchStackView.axis = .horizontal
        horizontalSwitchStackView.alignment = .center
        horizontalSwitchStackView.distribution = .fill
        horizontalSwitchStackView.spacing = 8
        horizontalSwitchStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let autoLoginSwitch = UISwitch()
        autoLoginSwitch.isOn = true
        
        let label = UILabel()
        label.text = "Remeber me"
        label.textColor = .black
        label.font = .preferredFont(forTextStyle: .title3)
        label.numberOfLines = 1
        label.adjustsFontForContentSizeCategory = true
        
        horizontalSwitchStackView.addArrangedSubview(autoLoginSwitch)
        horizontalSwitchStackView.addArrangedSubview(label)
    }
    
    //MARK: ButtonStackView
    private func setUpButtonStackView() {
        horizontalButtonStackView.axis = .horizontal
        horizontalButtonStackView.alignment = .fill
        horizontalButtonStackView.distribution = .fillEqually
        horizontalButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.blue, for: .normal)
        loginButton.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        loginButton.titleLabel?.numberOfLines = 0
        loginButton.titleLabel?.adjustsFontForContentSizeCategory = true
        
        let registerButton = UIButton()
        registerButton.setTitle("Register", for: .normal)
        registerButton.setTitleColor(.blue, for: .normal)
        registerButton.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        registerButton.titleLabel?.numberOfLines = 0
        registerButton.titleLabel?.adjustsFontForContentSizeCategory = true
        
        horizontalButtonStackView.addArrangedSubview(loginButton)
        horizontalButtonStackView.addArrangedSubview(registerButton)
    }
    
}

