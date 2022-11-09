class CompanyInfo {
  String logoUrl, comany, title, location, fullTime;
  List<String> req;

  CompanyInfo(this.logoUrl, this.comany, this.title, this.location,
      this.fullTime, this.req);

  static List<CompanyInfo> generationCompanyList() {
    return [
      CompanyInfo("images/b.png", "Airbnb inc,", "VP Business Intelegence",
          "50 Herminla Stravenue,Canada", "Fulltime", [
        "A classic, five-point gold star",
        "Commonly used for",
            " various metaphorical",
        " Also used for emphasis or flair",
        "Star was approved as part of",
        " Unicode 5.1 in 2008 under the name ",
        "Samsung and Facebook’s ",
            "stars were once silver",
      ]),
      CompanyInfo("images/google.png", "Google", "Product Design",
          "417,Marian Plaza", "Fulltime", [
        "A classic, five-point gold star",
        "Commonly used for ",
        " Also used for emphasis or flair",
        "Star was approved as part of Unicode",
        " 5.1 in 2008 under the name ",
        "Samsung and Facebook’s "
            "stars were once silver",
      ]),
    ];
  }
}
