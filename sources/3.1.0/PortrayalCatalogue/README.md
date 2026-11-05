# S-102 Portrayal Catalogue
<img src=./Images/figure-s102-pc-logo-white.svg alt="signal flags spelling S102" width=496 height=240>

S-102 GitHub repository for developing and maintaining the S-102 Portrayal Catalogue

[i1]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/1
[i3]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/3
[i4]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/4
[i7]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/7
[i8]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/8
[i9]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/9
[i10]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/10
[i11]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/11
[i13]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/13
[i12]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/12
[i15]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/15
[i16]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/16
[i19]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/19
[i20]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/20
[i21]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/21
[i22]: https://github.com/iho-ohi/S-102-Portrayal-Catalogue/issues/22

## Recent changes
Older changes are here: [Changelog.md](Changelog.md)

### 3.1.0 - use with FC 3.1.0 (DRAFT)
* Misc changes
* Rule File / Symbol Updates
    * [#22][i22] Type case mismatch in ConvertEncodedValue and PortrayalAPI functions

### 3.0.0 - use with FC 3.0.0
* Misc changes
	* [#1][i1] Initial version 3.0.0 baseline to S-100 5.2 schemas, can be used with older FC data 2.1.X for testing
  	* [#10][i10] Ensure catalogs use expected xmlID values
  	* [#11][i11] Remove Default.lua
 	* [#13][i13] Correct validation errors
 	* [#12][i12] Remove -Lua and -XSLT from version string
	* [#15][i15] Description OBE with XSLT removal
 	* [#16][i16] Remove XSLT from catalog
	* [#19][i19] Fix description of LITGN token in colorProfile.xml

* Rule File / Symbol Updates
	* [#4][i4] Updated PC to match FC v3.0.0
	* [#7][i7] Tested FC with updated PC along with matching data from BSH (v3.0.0 data)
	* [#8][i8] Added NullInstruction rule placeholder for QualityOfBathymetryCoverage
	* [#8][i8] Rule QualityOfBathymetryCoverage XSLT element tag "NullInstruction" changed to "nullInstruction"
	* [#9][i9] Remove NauticalInformation processing, S-101 specific
 	* [#3][i3] Ensure mapping of depths to color values matches ENC
	* [#21][i21] `BathymetryCoverage` `CoverageFill` must follow `LookupEntry` instructions

