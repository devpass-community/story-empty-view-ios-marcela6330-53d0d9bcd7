import UIKit

class EmptyView: UIView {
    
    private lazy var texto: UILabel = {
        let label = UILabel()
        label.text = "No data found"
        label.tintColor = .black
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        self.setupView()
        self.setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


private extension EmptyView {
    func setupView() {
        addSubview(texto)
    }
    
    func setConstraints() {
        texto.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        texto.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
}
