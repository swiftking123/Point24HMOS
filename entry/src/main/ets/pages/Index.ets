import CardItemComp from '../View/CardItemComp'
import { CardItemBean } from '../ViewModule/CardBean'
import  CardDataModule  from '../ViewModule/CardDataModule'
import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State showStack: boolean=true
  @State hitCards: Array<CardItemBean>=[]
  private HXCards:Array<CardItemBean>=[]
  private FKCards:Array<CardItemBean>=[]
  private MHCards:Array<CardItemBean>=[]
  private HTCards:Array<CardItemBean>=[]

  aboutToAppear(): void {
    this.HXCards=CardDataModule.getHXData()
    this.FKCards=CardDataModule.getFKData()
    this.MHCards=CardDataModule.getMHData()
    this.HTCards=CardDataModule.getHTData()

  }

  @Builder buildOneStack(cards:Array<CardItemBean>){
    Stack({alignContent:Alignment.BottomStart}){
      ForEach(cards,(item:CardItemBean,index)=>{
        CardItemComp({content:item}).onClick(()=>{
          this.pushCard(item)
        }).margin({left:index*28})
      })
    }
  }

  pushCard(item: CardItemBean) {
    if(this.hitCards.length<4){
      this.hitCards.push(item)
    }
  }

  @Builder buildStackStyle(){
    Column(){
      this.buildOneStack(this.HXCards)
      this.buildOneStack(this.FKCards)
      this.buildOneStack(this.MHCards)
      this.buildOneStack(this.HTCards)
    }
  }

  build() {
    Scroll() {
      Column() {
        Row() {
          Text("计算24点 请选择4张扑克牌").fontSize(25)
        }

        Row() {
          ForEach(
            this.hitCards, (item:CardItemBean)=>{
            CardItemComp({content:item })}
          )
        }
        .height(150)
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)
        .margin({ bottom: 5 })
        .borderWidth(2)
        .borderRadius(10)
        .borderColor(Color.Brown)

        Divider().strokeWidth(5)

        Row() {
          Button("清除").fontSize(30)
            .onClick((Event) => {
              console.log("清空")
              this.hitCards.pop()
            })

          Button("计算").fontSize(30)
            .onClick((Event) => {
              this.beginCal24()
            })

          // Button("切换布局").fontSize(30)
          //   .onClick((Event) => {
          //     this.showStack = !this.showStack
          //   })
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceAround)

        Divider().strokeWidth(5)

        this.buildStackStyle()

      }
    }
    .scrollable(ScrollDirection.Vertical)
    .scrollBarColor(Color.Gray)
    .scrollBarWidth(5)
    .edgeEffect(EdgeEffect.None)
  }

  beginCal24() {
    // 确保已经选择了4张牌
    if (this.hitCards.length !== 4) {
      // 弹窗提示
      promptAction.showToast({
        message: "请先选择4张牌", // 提示内容
      });
      return;
    }

    // 将选中的4张牌保存并传递到新的页面
    const selectedCards = this.hitCards.map(card => card.id) // 假设 CardItemBean 有个 value 属性表示牌的点数

    // 使用 Router 进行页面跳转，并将选中的牌作为参数传递
    router.pushUrl({
      url: 'pages/Result',
      params: {
        cards: selectedCards
      }
    })
  }

}