//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Евгения Панфилова on 12.11.2025.
//

import UIKit

final class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Загружаем ProfileView из XIB и добавляем как подвид
        let profileView = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as! ProfileView

        // Настройка масштабирования
        profileView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileView)
        
        // Закрепляем по всем краям с учётом safe area
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        // Установка данных
        profileView.avatarImage.image = UIImage(named: "avatar")
        profileView.avatarImage.contentMode = .scaleToFill
        profileView.labelName.text = "Евгения Панфилова"
        profileView.labelBirth.text = "10 декабря 1985"
        profileView.labelCity.text = "Волгоград"
        profileView.textView.text = "Люблю путешествовать, читать и изучать новые языки."
    }
}
