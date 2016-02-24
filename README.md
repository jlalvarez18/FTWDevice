# FTWDevice

FTWDevice is UIDevice for OS X. Provides all the things that UIDevice has as well as some things from UIDevice+Hardware. Written by Soroush Khanlou.

## About

FTWDevice is a near-perfect drop-in copy of UIDevice, but built for the Mac. It supports the following properties:

	@property (strong, nonatomic) NSString *name;
	@property (strong, nonatomic) NSString *localizedName;
	@property (strong, nonatomic) NSString *systemName;
	@property (strong, nonatomic) NSString *systemVersion;
	@property (strong, nonatomic) NSString *model;
	@property (strong, nonatomic) NSString *uniqueIdentifier;

	@property (strong, nonatomic) NSString *MACAddress;
	@property (assign, nonatomic) NSString *platform;
	@property (strong, nonatomic) NSString *hardwareModel;

	@property (assign, nonatomic) NSUInteger CPUFrequency;
	@property (assign, nonatomic) NSUInteger busFrequency;
	@property (assign, nonatomic) NSUInteger CPUCount;
	@property (assign, nonatomic) NSUInteger totalMemory;
	@property (assign, nonatomic) NSUInteger userMemory;

	@property (strong, nonatomic) NSNumber *totalDiskSpace;
	@property (strong, nonatomic) NSNumber *freeDiskSpace;
	@property (assign, nonatomic) BOOL isRetina;
	@property (assign, nonatomic) FTWDeviceFamily deviceFamily;
	@property (strong, nonatomic) NSString *serialNumber;

There are some weird behaviors, especially with integer overflows in the disk space and memory properties.

The other weirdity is that `name` represents the name of the computer on the network, and `localizedName` is the presentable name. This is slightly different from UIDevice’s implementation, but it’s closer to NSHost’s.

Big thanks for to Erica Sadun for making UIDevice+Extensions, which has saved my butt on so many occasions. There are more acknowledgements in that repo.

 
