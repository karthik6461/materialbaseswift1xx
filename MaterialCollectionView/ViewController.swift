
import UIKit

import Material


class ViewController: UIViewController {
    
    /// A list of all the data source items.
    
    private var dataSourceItems: Array<MaterialDataSourceItem>!
    
    /// A collectionView used to display entries.
    
    private var collectionView: MaterialCollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        prepareView()
        
        prepareItems()
        
        prepareCollectionView()
        
    }
    
    /// Prepares the items Array.
    
    private func prepareItems() {
        
        dataSourceItems = [
            
            MaterialDataSourceItem(
                
                data: [
                    
                    "placeholder": "Field Placeholder",
                    
                    "detailLabelHidden": false
                    
                ],
                
                height: 400
                
            ),
            
            MaterialDataSourceItem(
                
                data: [
                    
                    "placeholder": "Field Placeholder",
                    
                    "detailLabelHidden": false
                    
                ],
                
                height: 400
                
            ),
            
            MaterialDataSourceItem(
                
                data: [
                    
                    "placeholder": "Field Placeholder",
                    
                    "detailLabelHidden": false
                    
                ],
                
                height: 400
                
            )
            
        ]
        
    }
    
    /// Prepares view.
    
    private func prepareView() {
        
        view.backgroundColor = MaterialColor.grey.lighten3
        
    }
    
    /// Prepares the collectionView.
    
    private func prepareCollectionView() {
        
        collectionView = MaterialCollectionView(frame: view.bounds)
        
        collectionView.registerClass(MaterialCollectionViewCell.self, forCellWithReuseIdentifier: "MaterialCollectionViewCell")
        
        collectionView.dataSource = self
        
        collectionView.contentInset.top = 10
        
        collectionView.spacing = 16
        
        view.layout(collectionView).edges()
        
    }
    
    
    
    
    
    /// Prepares the medium card example.
    
    private func prepareMediumCardViewExample() -> MaterialPulseView {
        
        let cardView: MaterialPulseView = MaterialPulseView(frame: CGRectMake(16, 100, view.bounds.width - 32, 240))
        
        cardView.pulseColor = MaterialColor.blueGrey.base
        
        cardView.depth = .Depth1
        
        view.addSubview(cardView)
        
        
        
        var image: UIImage? = UIImage(named: "citi")
        
        let imageView: MaterialView = MaterialView()
        
        imageView.image = image
        
        imageView.contentsGravityPreset = .ResizeAspectFill
        
        cardView.addSubview(imageView)
        
        
        
        let contentView: MaterialView = MaterialView()
        
        contentView.backgroundColor = MaterialColor.clear
        
        cardView.addSubview(contentView)
        
        
        
        let titleLabel: UILabel = UILabel()
        
        titleLabel.text = "Citi Bank Branch 181"
        
        titleLabel.textColor = MaterialColor.blueGrey.darken4
        
        titleLabel.backgroundColor = MaterialColor.clear
        
        contentView.addSubview(titleLabel)
        
        
        
        image = MaterialIcon.cm.moreVertical
        
        let moreButton: IconButton = IconButton()
        
        moreButton.contentEdgeInsetsPreset = .None
        
        moreButton.pulseColor = MaterialColor.blueGrey.darken4
        
        moreButton.tintColor = MaterialColor.blueGrey.darken4
        
        moreButton.setImage(image, forState: .Normal)
        
        moreButton.setImage(image, forState: .Highlighted)
        
        contentView.addSubview(moreButton)
        
        
        
        let photoimg = MaterialIcon.cm.photoCamera
        
        let photoButton: IconButton = IconButton()
        
        photoButton.contentEdgeInsetsPreset = .None
        
        photoButton.pulseColor = MaterialColor.blueGrey.darken4
        
        photoButton.tintColor = MaterialColor.blueGrey.darken4
        
        photoButton.setImage(photoimg, forState: .Normal)
        
        photoButton.setImage(photoimg, forState: .Highlighted)
        
        contentView.addSubview(photoButton)
        
        
        
        
        let detailLabel: UILabel = UILabel()
        
        detailLabel.numberOfLines = 0
        
        detailLabel.lineBreakMode = .ByTruncatingTail
        
        detailLabel.font = RobotoFont.regularWithSize(12)
        
        detailLabel.text = "Express your creativity with Material, an animation and graphics framework for Google's Material Design and Apple's Flat UI in Swift."
        
        detailLabel.textColor = MaterialColor.blueGrey.darken4
        
        detailLabel.backgroundColor = MaterialColor.clear
        
        contentView.addSubview(detailLabel)
        
        
        
        let alarmLabel: UILabel = UILabel()
        
        alarmLabel.font = RobotoFont.regularWithSize(12)
        
        alarmLabel.text = "34 min"
        
        alarmLabel.textColor = MaterialColor.blueGrey.darken4
        
        alarmLabel.backgroundColor = MaterialColor.clear
        
        contentView.addSubview(alarmLabel)
        
        
        
        
        
        
        
        imageView.grid.columns = 6
        
        
        
        contentView.grid.columns = 6
        
        
        
        cardView.grid.views = [
            
            imageView,
            
            contentView
            
        ]
        
        
        
        titleLabel.grid.rows = 2
        
        titleLabel.grid.columns = 9
        
        
        
        moreButton.grid.rows = 2
        
        moreButton.grid.columns = 3
        
        moreButton.grid.offset.columns = 9
        
        
        
        detailLabel.grid.rows = 8
        
        detailLabel.grid.offset.rows = 2
        
        
        
        alarmLabel.grid.rows = 2
        
        alarmLabel.grid.offset.rows = 10
        
        alarmLabel.grid.columns = 9
        
        
        
        
        
        
        
        
        
        photoButton.grid.rows = 2
        
        photoButton.grid.offset.rows = 10
        
        photoButton.grid.columns = 3
        
        photoButton.grid.offset.columns = 9
        
        
        
        contentView.grid.spacing = 8
        
        contentView.grid.axis.direction = .None
        
        contentView.grid.contentInsetPreset = .Square3
        
        contentView.grid.views = [
            
            titleLabel,
            
            moreButton,
            
            detailLabel,
            
            alarmLabel,
            
            photoButton
            
        ]
        
        return cardView
        
    }
    
    
    
    
    
}


/// CollectionViewDataSource methods.

extension ViewController: MaterialCollectionViewDataSource {
    
    func items() -> Array<MaterialDataSourceItem> {
        
        return dataSourceItems
        
    }
    
    /// Determines the number of items in the collectionView.
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataSourceItems.count;
        
    }
    
    /// Returns the number of sections.
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    
    /// Prepares the cells within the collectionView.
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell: MaterialCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MaterialCollectionViewCell", forIndexPath: indexPath) as! MaterialCollectionViewCell
        
        //cell.layout(prepareMediumCardViewExample())
        
        //cell.contentView.addSubview(prepareMediumCardViewExample())
        
        let item: MaterialDataSourceItem = dataSourceItems[indexPath.item]
        
        if let _: Dictionary<String, AnyObject> =  item.data as? Dictionary<String, AnyObject> {
            
            cell.contentView.addSubview(prepareLargeCardViewExample())
            
        }
        
        return cell
        
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
    
    
    
    func queueselected(sender:UIButton!) {
        
        print("Button Clicked \(sender.tag)")
        
        
        
        
        
        //let serverVC = ServerViewController()
        
        //let serverVC = LayoutViewController()
        
        //let serverVC = CollectionViewController()
        
        let serverVC = TutorialPageViewController()
        
        let window = UIApplication.sharedApplication().windows[0] as UIWindow
        
        UIView.transitionFromView(
            
            window.rootViewController!.view,
            
            toView: serverVC.view,
            
            duration: 0.65,
            
            options: .TransitionCrossDissolve,
            
            completion: {
                
                finished in window.rootViewController = serverVC
                
        })
        
        
        
        
        
    }
    
    
    
    
    
}

