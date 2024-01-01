class VechicleModel {
  String? vechicleNo;
  String? vechicleName;
  String? vechicleType;
  String? fuelType;


  VechicleModel(
      {this.vechicleNo,
        this.vechicleName,
        this.vechicleType,
        this.fuelType,
        });

  VechicleModel.fromJson(Map<String, dynamic> json) {
    vechicleNo = json['vechicleNo'];
    vechicleName = json['vechicleName'];
    vechicleType = json['vechicleType'];
    fuelType = json['fuelType'];

  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vechicleNo'] = this.vechicleNo;
    data['vechicleName'] = this.vechicleName;
    data['vechicleType'] = this.vechicleType;
    data['fuelType'] = this.fuelType;

    return data;
  }

}
