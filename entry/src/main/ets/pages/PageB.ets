import { HMPageParam, HMParamType, HMRouter, HMRouterMgr } from "@hadss/hmrouter"

@HMRouter({ pageUrl: '/pageB', lifecycle: 'PageDurationLifecycle', animator: 'pageAnimator' })
@Component
export struct PageB {
  @State param: HMParamType | null = null;

  aboutToAppear(): void {
    this.param = HMRouterMgr.getCurrentParam() as HMParamType;
  }
  build() {
    Column() {
      Text('PageB')
      Text('Param:' + this.param?.toString())
      Button('POP')
        .onClick(() => {
          HMRouterMgr.pop({
            navigationId: "mainNavigation"
          })
        })
    }
  }
}