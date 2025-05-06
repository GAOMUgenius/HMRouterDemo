import { HMLifecycle, HMLifecycleContext, IHMLifecycle } from "@hadss/hmrouter";
import Logger from "../utils/Logger";

@HMLifecycle({ lifecycleName: 'PageDurationLifecycle' })
export class PageDurationLifecycle implements IHMLifecycle {
  private time: number = 0;

  onShown(ctx: HMLifecycleContext): void {
    this.time = new Date().getTime();
  }

  onHidden(ctx: HMLifecycleContext): void {
    const duration = new Date().getTime() - this.time;
    Logger.info(`Page ${ctx.navContext?.pathInfo.name} stay ${duration}`);
  }
}