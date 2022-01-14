//
//  MovieDetailsViewController.swift
//  StarMovies
//
//  Created by yun guo on 2022/1/14.
//

public class MovieDetailsViewController: UIViewController {
    let viewModel: MovieDetailsViewModel
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .red
        
        return label
    }()
    
    //optional 可以在初始化的时候不用赋值
    var overviewLabel: UILabel?
    
    public init(viewModel: MovieDetailsViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel.didUpdate = { [weak self] in
            self?.titleLabel.text = self?.viewModel.title
            self?.overviewLabel?.text = self?.viewModel.overview
            // or other state change
        }
        
        view.backgroundColor = .white
        steupTitleLabel()
        setupoOverviewLabel()
        setupReloadButton()
    }
    
    private func steupTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.text = viewModel.title
        titleLabel.frame = CGRect.init(x: 10, y: 200, width: 120, height: 30)
    }
    
    private func setupoOverviewLabel() {
        let label = UILabel()
        label.text = viewModel.overview
        label.textColor = .green
        
        view.addSubview(label)
        //如果觉得这种写约束的方式繁琐，可以用snapkit.
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.leftAnchor.constraint(equalTo: view.leftAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
                                        ])
        overviewLabel = label
    }
    
    private func setupReloadButton() {
        let button = UIButton(type: .custom)
        button.setTitle("重新加载", for: .normal)
        button.titleLabel?.font = UIFont
            .systemFont(ofSize: 14, weight: .semibold)
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leftAnchor.constraint(equalTo: view.leftAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20)
                                        ])
    }
    
    @objc func buttonDidTap() {
        viewModel.reloadData()
    }
}
