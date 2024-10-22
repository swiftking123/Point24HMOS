export class CardItemBean{
  public id:number
  public picture:Resource

  constructor(id:number,picture:Resource) {
    this.id=id
    this.picture=picture
  }
}