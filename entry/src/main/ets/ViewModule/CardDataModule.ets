import { CardItemBean } from "./CardBean";

export class CardDataModule{


  dataHX:Array<CardItemBean>=[]
  dataFK:Array<CardItemBean>=[]
  dataMH:Array<CardItemBean>=[]
  dataHT:Array<CardItemBean>=[]

  getHTData():Array<CardItemBean>{
    let c1:CardItemBean=new CardItemBean(1,$r("app.media.spade_A"));
    let c2:CardItemBean=new CardItemBean(2,$r("app.media.spade_2"));
    let c3:CardItemBean=new CardItemBean(3,$r("app.media.spade_3"));
    let c4:CardItemBean=new CardItemBean(4,$r("app.media.spade_4"));
    let c5:CardItemBean=new CardItemBean(5,$r("app.media.spade_5"));
    let c6:CardItemBean=new CardItemBean(6,$r("app.media.spade_6"));
    let c7:CardItemBean=new CardItemBean(7,$r("app.media.spade_7"));
    let c8:CardItemBean=new CardItemBean(8,$r("app.media.spade_8"));
    let c9:CardItemBean=new CardItemBean(9,$r("app.media.spade_9"));
    let c10:CardItemBean=new CardItemBean(10,$r("app.media.spade_10"));
    let c11:CardItemBean=new CardItemBean(11,$r("app.media.spade_J"));
    let c12:CardItemBean=new CardItemBean(12,$r("app.media.spade_Q"));
    let c13:CardItemBean=new CardItemBean(13,$r("app.media.spade_K"));
    this.dataHT.push(c1)
    this.dataHT.push(c2)
    this.dataHT.push(c3)
    this.dataHT.push(c4)
    this.dataHT.push(c5)
    this.dataHT.push(c6)
    this.dataHT.push(c7)
    this.dataHT.push(c8)
    this.dataHT.push(c9)
    this.dataHT.push(c10)
    this.dataHT.push(c11)
    this.dataHT.push(c12)
    this.dataHT.push(c13)

    return this.dataHT
  }
  getFKData():Array<CardItemBean>{
    let c1:CardItemBean=new CardItemBean(1,$r("app.media.diamond_A"));
    let c2:CardItemBean=new CardItemBean(2,$r("app.media.diamond_2"));
    let c3:CardItemBean=new CardItemBean(3,$r("app.media.diamond_3"));
    let c4:CardItemBean=new CardItemBean(4,$r("app.media.diamond_4"));
    let c5:CardItemBean=new CardItemBean(5,$r("app.media.diamond_5"));
    let c6:CardItemBean=new CardItemBean(6,$r("app.media.diamond_6"));
    let c7:CardItemBean=new CardItemBean(7,$r("app.media.diamond_7"));
    let c8:CardItemBean=new CardItemBean(8,$r("app.media.diamond_8"));
    let c9:CardItemBean=new CardItemBean(9,$r("app.media.diamond_9"));
    let c10:CardItemBean=new CardItemBean(10,$r("app.media.diamond_10"));
    let c11:CardItemBean=new CardItemBean(11,$r("app.media.diamond_J"));
    let c12:CardItemBean=new CardItemBean(12,$r("app.media.diamond_Q"));
    let c13:CardItemBean=new CardItemBean(13,$r("app.media.diamond_K"));
    this.dataFK.push(c1)
    this.dataFK.push(c2)
    this.dataFK.push(c3)
    this.dataFK.push(c4)
    this.dataFK.push(c5)
    this.dataFK.push(c6)
    this.dataFK.push(c7)
    this.dataFK.push(c8)
    this.dataFK.push(c9)
    this.dataFK.push(c10)
    this.dataFK.push(c11)
    this.dataFK.push(c12)
    this.dataFK.push(c13)
    return this.dataFK
  }
  getMHData():Array<CardItemBean>{
    let c1:CardItemBean=new CardItemBean(1,$r("app.media.club_A"));
    let c2:CardItemBean=new CardItemBean(2,$r("app.media.club_2"));
    let c3:CardItemBean=new CardItemBean(3,$r("app.media.club_3"));
    let c4:CardItemBean=new CardItemBean(4,$r("app.media.club_4"));
    let c5:CardItemBean=new CardItemBean(5,$r("app.media.club_5"));
    let c6:CardItemBean=new CardItemBean(6,$r("app.media.club_6"));
    let c7:CardItemBean=new CardItemBean(7,$r("app.media.club_7"));
    let c8:CardItemBean=new CardItemBean(8,$r("app.media.club_8"));
    let c9:CardItemBean=new CardItemBean(9,$r("app.media.club_9"));
    let c10:CardItemBean=new CardItemBean(10,$r("app.media.club_10"));
    let c11:CardItemBean=new CardItemBean(11,$r("app.media.club_J"));
    let c12:CardItemBean=new CardItemBean(12,$r("app.media.club_Q"));
    let c13:CardItemBean=new CardItemBean(13,$r("app.media.club_K"));
    this.dataMH.push(c1)
    this.dataMH.push(c2)
    this.dataMH.push(c3)
    this.dataMH.push(c4)
    this.dataMH.push(c5)
    this.dataMH.push(c6)
    this.dataMH.push(c7)
    this.dataMH.push(c8)
    this.dataMH.push(c9)
    this.dataMH.push(c10)
    this.dataMH.push(c11)
    this.dataMH.push(c12)
    this.dataMH.push(c13)
    return this.dataMH
  }
  getHXData():Array<CardItemBean>{
    let c1:CardItemBean=new CardItemBean(1,$r("app.media.heart_A"));
    let c2:CardItemBean=new CardItemBean(2,$r("app.media.heart_2"));
    let c3:CardItemBean=new CardItemBean(3,$r("app.media.heart_3"));
    let c4:CardItemBean=new CardItemBean(4,$r("app.media.heart_4"));
    let c5:CardItemBean=new CardItemBean(5,$r("app.media.heart_5"));
    let c6:CardItemBean=new CardItemBean(6,$r("app.media.heart_6"));
    let c7:CardItemBean=new CardItemBean(7,$r("app.media.heart_7"));
    let c8:CardItemBean=new CardItemBean(8,$r("app.media.heart_8"));
    let c9:CardItemBean=new CardItemBean(9,$r("app.media.heart_9"));
    let c10:CardItemBean=new CardItemBean(10,$r("app.media.heart_10"));
    let c11:CardItemBean=new CardItemBean(11,$r("app.media.heart_J"));
    let c12:CardItemBean=new CardItemBean(12,$r("app.media.heart_Q"));
    let c13:CardItemBean=new CardItemBean(13,$r("app.media.heart_K"));
    this.dataHX.push(c1)
    this.dataHX.push(c2)
    this.dataHX.push(c3)
    this.dataHX.push(c4)
    this.dataHX.push(c5)
    this.dataHX.push(c6)
    this.dataHX.push(c7)
    this.dataHX.push(c8)
    this.dataHX.push(c9)
    this.dataHX.push(c10)
    this.dataHX.push(c11)
    this.dataHX.push(c12)
    this.dataHX.push(c13)
    return this.dataHX
  }
}
export default new CardDataModule()