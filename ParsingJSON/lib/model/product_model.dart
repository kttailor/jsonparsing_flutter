class Product {
  final String msg;
  final String message;
  final List<ProductData> productData;
  final String apiImgUrl;

  Product({this.msg, this.message, this.productData, this.apiImgUrl});

  factory Product.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['ProdList']['Products']['Product'] as List;
    print(list);
    List<ProductData> imagesList = list.map((i) => ProductData.fromJson(i)).toList();


    return Product(
      msg: parsedJson['Msg'],
      message: parsedJson['Message'],
      productData: imagesList,
      apiImgUrl: parsedJson['ApiImgUrl']

    );
  }
}

class ProductData {
  final String productId;
  final String productName;
  final String pName;
  final String pcCode;
  final String imageURL;
  final String shortImgUrl;
  final String catId;
  final String categoryName;
  final String catImgUrl;
  final String subCatId;
  final String subCategoryName;
  final String subCatImgUrl;
  final String mrp;
  final String dp;
  final String pv;
  final String pdesc;

  ProductData({this.productId, this.productName, this.pName, this.pcCode, this.imageURL, this.shortImgUrl
  , this.catId, this.categoryName, this.catImgUrl, this.subCatId, this.subCategoryName, this.subCatImgUrl,
  this.mrp, this.dp, this.pv, this.pdesc});

  factory ProductData.fromJson(Map<String, dynamic> parsedJson){
   return ProductData(
     productId:parsedJson['ProdID'],
     productName:parsedJson['ProductName'],
     pName:parsedJson['Pname'],
     pcCode:parsedJson['PCCode'],
     imageURL:parsedJson['ImageURL'],
     shortImgUrl:parsedJson['ShortImgUrl'],
     catId:parsedJson['CatId'],
     categoryName:parsedJson['CategoryName'],
     catImgUrl:parsedJson['CatImgUrl'],
     subCatId:parsedJson['SubCatId'],
     subCategoryName:parsedJson['SubCategoryName'],
     subCatImgUrl:parsedJson['SubCatImgUrl'],
     mrp:parsedJson['MRP'],
     dp:parsedJson['DP'],
     pv:parsedJson['PV'],
     pdesc:parsedJson['Pdesc'],
   );
  }
}