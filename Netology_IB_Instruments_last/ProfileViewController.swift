import UIKit

final class ProfileViewController: UIViewController {
    
    private lazy var profileView: ProfileView = {
        let profileView = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as! ProfileView
        profileView.translatesAutoresizingMaskIntoConstraints = false
        return profileView
    }()
    
    private func setupSubviews() {
        view.addSubview(profileView)
    }
    
    private func setupConstraints() {
        // Закрепляем по всем краям с учётом safe area
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func configureView() {
        // Установка данных
        profileView.avatarImage.image = UIImage(named: "avatar")
        profileView.avatarImage.contentMode = .scaleToFill
        profileView.labelName.text = "Евгения Панфилова"
        profileView.labelBirth.text = "10 декабря 1985"
        profileView.labelCity.text = "Волгоград"
        profileView.textView.text = "Люблю путешествовать, читать и изучать новые языки."
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupSubviews()
        setupConstraints()
        configureView()
    }
}
