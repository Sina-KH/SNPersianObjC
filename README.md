# SNPersian

[![CI Status](http://img.shields.io/travis/Sina-KH/SNPersianObjC.svg?style=flat)](https://travis-ci.org/Sina-KH/SNPersianObjC)
[![Version](https://img.shields.io/cocoapods/v/SNPersian.svg?style=flat)](http://cocoapods.org/pods/SNPersian)
[![License](https://img.shields.io/cocoapods/l/SNPersian.svg?style=flat)](http://cocoapods.org/pods/SNPersian)
[![Platform](https://img.shields.io/cocoapods/p/SNPersian.svg?style=flat)](http://cocoapods.org/pods/SNPersian)

## Examples

First of all, don't forget to import SNPersian.h in your .m file

```sh
import "SNPersian.h"
```

### NSDate Extensions

**Input date:  April 4, 1996 15:00**

**Show Relative String**

```sh
[date relativeStringWithFormat:NSDateRelativeStringFormatEnglish]
```

Available string formats:

* `NSDateRelativeStringFormatEnglish`   21 years ago
* `NSDateRelativeStringFormatPersian`   خروجی: ۲۱ سال قبل

**Show Jalaali Date**
```sh
[[date jalaali] dateWithFormat:SNJalaaliDateFormatEnglish]
```

Available date formats:

* `SNJalaaliDateFormatEnglish`          1375/01/16
* `SNJalaaliDateFormatPersian`          ۱۳۷۵/۰۱/۱۶
* `SNJalaaliDateFormatPersianText`      خروجی: ۱۶ فروردین ۱۳۷۵

**Show Jalaali Time**
```sh
[[date jalaali] timeWithFormat:SNJalaaliTimeFormatEnglish]
```

Available time formats:

* `SNJalaaliTimeFormatEnglish`          15:00
* `SNJalaaliTimeFormatEnglishText`      3:00 PM
* `SNJalaaliTimeFormatPersian`          ۱۵:۰۰
* `SNJalaaliTimeFormatPersianText`      خروجی: ۳:۰۰ ب.ظ
* `SNJalaaliTimeFormatPersianLongText`  خروجی: ۳:۰۰ بعدازظهر

**Show Jalaali DateTime**

```sh
[[date jalaali] dateTimeWithFormat:SNJalaaliDateFormatEnglish timeFormat:SNJalaaliTimeFormatEnglishText seperator:@"."]
```

- 1375/01/16 . 3:00 PM

```sh
[[date jalaali] dateTimeWithFormat:SNJalaaliDateFormatPersianText timeFormat:SNJalaaliTimeFormatPersianLongText seperator:nil]
```
- خروجی: ۱۶ فروردین ۱۳۷۵ ۳:۰۰ بعدازظهر

**Other APIs**
```sh
[date jalaali].year
[date jalaali].month
[date jalaali].day
[date jalaali].hour
[date jalaali].minute
[date jalaali].second
```

### NSString Extension

```sh
[myString persianDigits]
```

- Input: میخواهیم عدد 24 را فارسی کنیم
- Output: میخواهیم عدد ۲۴ را فارسی کنیم

```sh
[myString englishDigits]
```

- Input: میخواهیم عدد ۲۴ را انگلیسی کنیم
- Output: میخواهیم عدد 24 را انگلیسی کنیم

```sh
[myString persianChars]
```

- Input: ميخواهيم كاراكتر ها را فارسي کنیم
- Output: میخواهیم کاراکتر ها را فارسی کنیم

### NSNumber Extension

```sh
[@12345 persianDigits]
```

- Input: 12345
- Output: ۱۲،۳۴۵

```sh
[myString englishDigits]
```

## Installation

SNPersian is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SNPersian"
```

## Author

SinaKH, sina_od@yahoo.com

## License

SNPersian is available under the MIT license. See the LICENSE file for more info.
