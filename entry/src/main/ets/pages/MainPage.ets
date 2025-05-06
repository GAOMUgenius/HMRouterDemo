import { HMRouter, HMRouterMgr } from "@hadss/hmrouter"


@HMRouter({
  pageUrl: "MainPage"
})
@Component
export struct MainPage {
  build() {
    Column(){
      Text("首页").fontSize(30).fontWeight(FontWeight.Bold)
      //
      Button('PageA')
        .onClick(() => {
          HMRouterMgr.push({
            navigationId: "mainNavigation",
            pageUrl: '/pageA'
          })
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor("#f4f5f9")
    .justifyContent(FlexAlign.Center)
  }
}

