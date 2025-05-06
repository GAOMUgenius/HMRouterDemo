import { HMRouter, HMRouterMgr } from "@hadss/hmrouter"

const PAGE_URL: string = '/pageA'

@HMRouter({ pageUrl: PAGE_URL })
@Component
export struct PageA {

  build() {
    Column() {
      Text('PageA')
      Button('Push')
        .onClick(() => {
          HMRouterMgr.push({
            navigationId: 'mainNavigation',
            pageUrl: '/pageB',
            param: 'PageA向您问好'
          })
        })
    }
  }
}