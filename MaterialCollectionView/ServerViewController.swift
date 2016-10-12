

import UIKit

import Material


private struct Item {
    
    var text: String
    
    var detail: String
    
    var image: UIImage?
    
}


class ServerViewController: UIViewController {
    
    /// A tableView used to display Bond entries.
    
    private let tableView: UITableView = UITableView()
    
    
    
    /// A list of all the Author Bond types.
    
    private var items: Array<Item> = Array<Item>()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        prepareView()
        
        prepareItems()
        
        prepareTableView()
        
        prepareCardView()
        
    }
    
    
    
    /// Prepares view.
    
    private func prepareView() {
        
        view.backgroundColor = MaterialColor.white
        
    }
    
    
    
    /// Prepares the items Array.
    
    private func prepareItems() {
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        
        
        
        
        
        
        //
        
        
        
        
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
        items.append(Item(text: "Person1", detail: "Wish I could come, but I am out of town this weekend.", image: UIImage(named: "Profile1")))
        
        items.append(Item(text: "Person2", detail: "Have any ideas about what we should get Heidi for her birthday?", image: UIImage(named: "Profile2")))
        
        items.append(Item(text: "Brunch this weekend?", detail: "I'll be in your neighborhood doing errands this weekend.", image: UIImage(named: "Profile3")))
        
        items.append(Item(text: "Person3", detail: "Are we on this weekend for the game?", image: UIImage(named: "Profile4")))
        
        items.append(Item(text: "Person4", detail: "We should eat this: Squash, Corn and tomatillo Tacos.", image: UIImage(named: "Profile5")))
        
        items.append(Item(text: "Person5", detail: "The candidate will be arriving at 11:30, are you free?", image: UIImage(named: "Profile6")))
        
        items.append(Item(text: "Person6", detail: "I found the book title, Surely You’re Joking, Mr. Feynman!", image: UIImage(named: "Profile7")))
        
        items.append(Item(text: "Oui oui", detail: "Do you have Paris recommendations? Have you ever been?", image: UIImage(named: "Profile8")))
        
    }
    
    
    
    /// Prepares the tableView.
    
    private func prepareTableView() {
        
        tableView.registerClass(MaterialTableViewCell.self, forCellReuseIdentifier: "Cell")
        
        tableView.dataSource = self
        
        tableView.delegate = self
        
    }
    
    
    
    /// Prepares the CardView.
    
    func prepareCardView() {
        
        let cardView: CardView = CardView()
        
        cardView.backgroundColor = MaterialColor.grey.lighten5
        
        cardView.cornerRadiusPreset = .Radius1
        
        cardView.divider = false
        
        cardView.contentInsetPreset = .None
        
        cardView.leftButtonsInsetPreset = .Square2
        
        cardView.rightButtonsInsetPreset = .Square2
        
        cardView.contentViewInsetPreset = .None
        
        
        
        let titleLabel: UILabel = UILabel()
        
        titleLabel.font = RobotoFont.mediumWithSize(20)
        
        titleLabel.text = "Messages"
        
        titleLabel.textAlignment = .Center
        
        titleLabel.textColor = MaterialColor.blueGrey.darken4
        
        
        
        let v: UIView = UIView()
        
        v.backgroundColor = MaterialColor.blue.accent1
        
        
        
        let closeButton: FlatButton = FlatButton()
        
        closeButton.setTitle("Close", forState: .Normal)
        
        closeButton.setTitleColor(MaterialColor.blue.accent3, forState: .Normal)
        
        
        
        let image: UIImage? = MaterialIcon.cm.settings
        
        let settingButton: IconButton = IconButton()
        
        settingButton.tintColor = MaterialColor.blue.accent3
        
        settingButton.setImage(image, forState: .Normal)
        
        settingButton.setImage(image, forState: .Highlighted)
        
        
        
        // Use Layout to easily align the tableView.
        
        cardView.titleLabel = titleLabel
        
        cardView.contentView = tableView
        
        cardView.leftButtons = [closeButton]
        
        cardView.rightButtons = [settingButton]
        
        
        
        print("width \(UIScreen.mainScreen().bounds.width) heigth \(UIScreen.mainScreen().bounds.height)")
        
        
        
        view.layout.size(width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height * 1.5)
        
        
        
        
        
        //view.layout.size(width: 1000, height: 3000)
        
        
        
        
        
        view.layout(prepareLargeCardViewExample()).edges(left: 10, right: 10, top: 10, bottom: 270)
        
        view.layout(cardView).edges(left: 10, right: 10, top: 400, bottom: 10)
        
        
        
        
        
        /* let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width, height: 2000))
         
         let children : Array<UIView> = [prepareLargeCardViewExample(),cardView]
         
         scrollView.layout.horizontally(children, left: 30, right: 30, spacing: 30).vertically(children, top: 100, bottom: 100)
         
         view.addSubview(scrollView)*/
        
        
        
        
        
        
        
    }
    
    
    
    /// Prepares the medium card example.
    
    private func prepareLargeCardViewExample() -> MaterialPulseView {
        
        var image: UIImage? = UIImage(named: "citi")
        
        
        
        let cardView: MaterialPulseView = MaterialPulseView(frame: CGRectMake(16, 100, view.bounds.width - 32, 400))
        
        cardView.pulseColor = MaterialColor.blueGrey.base
        
        cardView.depth = .Depth1
        
        view.addSubview(cardView)
        
        
        
        let leftImageView: MaterialView = MaterialView()
        
        leftImageView.image = image
        
        leftImageView.contentsGravityPreset = .ResizeAspectFill
        
        cardView.addSubview(leftImageView)
        
        
        
        let topImageView: MaterialView = MaterialView()
        
        topImageView.image = image
        
        topImageView.contentsGravityPreset = .ResizeAspectFill
        
        cardView.addSubview(topImageView)
        
        
        
        let bottomImageView: MaterialView = MaterialView()
        
        bottomImageView.image = image
        
        bottomImageView.contentsGravityPreset = .ResizeAspectFill
        
        cardView.addSubview(bottomImageView)
        
        
        
        let contentView: MaterialView = MaterialView()
        
        contentView.backgroundColor = MaterialColor.clear
        
        cardView.addSubview(contentView)
        
        
        
        let titleLabel: UILabel = UILabel()
        
        titleLabel.text = "Citi"
        
        titleLabel.textColor = MaterialColor.blueGrey.darken4
        
        titleLabel.backgroundColor = MaterialColor.clear
        
        contentView.addSubview(titleLabel)
        
        
        
        image = MaterialIcon.cm.moreHorizontal
        
        let moreButton: IconButton = IconButton()
        
        moreButton.contentEdgeInsetsPreset = .None
        
        moreButton.pulseColor = MaterialColor.blueGrey.darken4
        
        moreButton.tintColor = MaterialColor.blueGrey.darken4
        
        moreButton.setImage(image, forState: .Normal)
        
        moreButton.setImage(image, forState: .Highlighted)
        
        contentView.addSubview(moreButton)
        
        
        
        let detailLabel: UILabel = UILabel()
        
        detailLabel.numberOfLines = 0
        
        detailLabel.lineBreakMode = .ByTruncatingTail
        
        detailLabel.font = RobotoFont.regularWithSize(12)
        
        detailLabel.text = "W 54th St, Branch 245a .. Hours 9a - 7p M-F  10a - 3pm Sat. ATM, Tellers..."
        
        detailLabel.textColor = MaterialColor.blueGrey.darken4
        
        detailLabel.backgroundColor = MaterialColor.clear
        
        contentView.addSubview(detailLabel)
        
        
        
        let alarmLabel: UILabel = UILabel()
        
        alarmLabel.font = RobotoFont.regularWithSize(12)
        
        alarmLabel.text = "34 min"
        
        alarmLabel.textColor = MaterialColor.blueGrey.darken4
        
        alarmLabel.backgroundColor = MaterialColor.clear
        
        contentView.addSubview(alarmLabel)
        
        
        
        
        
        
        
        image = UIImage(named: "ic_alarm_white")?.imageWithRenderingMode(.AlwaysTemplate)
        
        let alarmButton: IconButton = IconButton()
        
        alarmButton.contentEdgeInsetsPreset = .None
        
        alarmButton.pulseColor = MaterialColor.blueGrey.darken4
        
        alarmButton.tintColor = MaterialColor.red.base
        
        alarmButton.setImage(image, forState: .Normal)
        
        alarmButton.setImage(image, forState: .Highlighted)
        
        contentView.addSubview(alarmButton)
        
        
        
        image = UIImage(named: "ic_alarm_white")?.imageWithRenderingMode(.AlwaysTemplate)
        
        let alarmButton1: IconButton = IconButton()
        
        alarmButton1.contentEdgeInsetsPreset = .None
        
        alarmButton1.pulseColor = MaterialColor.blueGrey.darken4
        
        alarmButton1.tintColor = MaterialColor.red.base
        
        alarmButton1.setImage(image, forState: .Normal)
        
        alarmButton1.setImage(image, forState: .Highlighted)
        
        contentView.addSubview(alarmButton1)
        
        
        
        image = MaterialIcon.cm.add
        
        let addButton: IconButton = IconButton()
        
        addButton.contentEdgeInsetsPreset = .None
        
        addButton.pulseColor = MaterialColor.blueGrey.darken4
        
        addButton.tintColor = MaterialColor.blueGrey.darken4
        
        addButton.setImage(image, forState: .Normal)
        
        addButton.setImage(image, forState: .Highlighted)
        
        contentView.addSubview(addButton)
        
        
        
        leftImageView.grid.rows = 7
        
        leftImageView.grid.columns = 6
        
        
        
        topImageView.grid.rows = 4
        
        topImageView.grid.columns = 6
        
        topImageView.grid.offset.columns = 6
        
        
        
        bottomImageView.grid.rows = 3
        
        bottomImageView.grid.offset.rows = 4
        
        bottomImageView.grid.columns = 6
        
        bottomImageView.grid.offset.columns = 6
        
        
        
        contentView.grid.rows = 5
        
        contentView.grid.offset.rows = 7
        
        
        
        cardView.grid.axis.direction = .None
        
        cardView.grid.spacing = 4
        
        cardView.grid.views = [
            
            leftImageView,
            
            topImageView,
            
            bottomImageView,
            
            contentView
            
        ]
        
        
        
        titleLabel.grid.rows = 3
        
        titleLabel.grid.columns = 8
        
        
        
        moreButton.grid.rows = 3
        
        moreButton.grid.columns = 2
        
        moreButton.grid.offset.columns = 10
        
        
        
        moreButton.tag = 5
        
        moreButton.addTarget(self, action: "queueselected:", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
        
        
        detailLabel.grid.rows = 6
        
        detailLabel.grid.offset.rows = 3
        
        
        
        alarmLabel.grid.rows = 3
        
        alarmLabel.grid.columns = 8
        
        alarmLabel.grid.offset.rows = 9
        
        
        
        alarmButton.grid.rows = 3
        
        alarmButton.grid.offset.rows = 9
        
        alarmButton.grid.columns = 2
        
        alarmButton.grid.offset.columns = 10
        
        
        
        alarmButton1.grid.rows = 3
        
        alarmButton1.grid.offset.rows = 9
        
        alarmButton1.grid.columns = 2
        
        alarmButton1.grid.offset.columns = 9
        
        
        
        addButton.grid.rows = 3
        
        addButton.grid.offset.rows = 9
        
        addButton.grid.columns = 2
        
        addButton.grid.offset.columns = 8
        
        
        
        contentView.grid.spacing = 8
        
        contentView.grid.axis.direction = .None
        
        contentView.grid.contentInsetPreset = .Square3
        
        contentView.grid.views = [
            
            titleLabel,
            
            moreButton,
            
            detailLabel,
            
            alarmLabel,
            
            alarmButton,
            
            alarmButton1,
            
            addButton
            
        ]
        
        
        
        
        
        return cardView
        
    }
    
    
    
    
    
    
    
}


/// TableViewDataSource methods.

extension ServerViewController: UITableViewDataSource {
    
    /// Determines the number of rows in the tableView.
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count;
        
    }
    
    
    
    /// Returns the number of sections.
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    
    
    /// Prepares the cells within the tableView.
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: MaterialTableViewCell = MaterialTableViewCell(style: .Subtitle, reuseIdentifier: "Cell")
        
        
        
        let item: Item = items[indexPath.row]
        
        cell.selectionStyle = .None
        
        cell.textLabel!.text = item.text
        
        cell.textLabel!.font = RobotoFont.regular
        
        cell.detailTextLabel!.text = item.detail
        
        cell.detailTextLabel!.font = RobotoFont.regular
        
        cell.detailTextLabel!.textColor = MaterialColor.grey.darken1
        
        cell.imageView!.image = item.image?.resize(toWidth: 40)
        
        cell.imageView!.layer.cornerRadius = 20
        
        
        
        return cell
        
    }
    
}


/// UITableViewDelegate methods.

extension ServerViewController: UITableViewDelegate {
    
    /// Sets the tableView cell height.
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 80
        
    }
    
}