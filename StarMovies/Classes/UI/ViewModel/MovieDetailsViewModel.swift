//
//  MovieDetailsViewModel.swift
//  StarMovies
//
//  Created by yun guo on 2022/1/14.
//

// 如果pod外使用，需要表明 public or open
public class MovieDetailsViewModel {
    var title: String?
    var posterImage: UIImage?
    var overview: String?
    
    // 如果想这里多个view监听或者耦合更松散一些，可以使用rxswift来监听状态的改变。
    var didUpdate: (() -> Void)?
    
    public init(title: String?,
                posterImage: UIImage?,
                overview: String?) {
        self.title = title
        self.posterImage = posterImage
        self.overview = overview
    }
    
    func reloadData() {
        // 网络请求更新数据
        // weak self 弱引用
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.title = "123"
            self?.posterImage = nil
            self?.overview = "overview111"
            self?.didUpdate?()
        }
    }
}
