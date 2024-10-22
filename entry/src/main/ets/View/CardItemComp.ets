import { CardItemBean } from "../ViewModule/CardBean"


@Component
export default struct CardItemComp{
  private content:CardItemBean| null = null;
  @State isSelected:boolean=false;

  @Builder labelIcon(icon: Resource){
    Image(icon)
      .objectFit(ImageFit.Contain)
      .width(80)
      .height(100)
      .margin(2)
  }
  build() {
    Column(){
      if (this.content) {  // 检查 content 是否为 null
        this.labelIcon(this.content.picture);  // 使用安全的方式访问 content
      }
    }
    .borderRadius(24)
    .margin({left:3,right:3})
  }
}