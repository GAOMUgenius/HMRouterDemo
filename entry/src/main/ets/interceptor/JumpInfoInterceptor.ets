import { HMInterceptor, HMInterceptorAction, HMInterceptorInfo, IHMInterceptor } from "@hadss/hmrouter";
import Logger from "../utils/Logger";

@HMInterceptor({ interceptorName: 'JumpInfoInterceptor', global: true })
export class JumpInfoInterceptor implements IHMInterceptor {
  handle(info: HMInterceptorInfo): HMInterceptorAction {
    let connectionInfo: string = info.type === 'push' ? 'jump to' : 'back to';
    Logger.info(`${info.srcName} ${connectionInfo} ${info.targetName}`)
    return HMInterceptorAction.DO_NEXT;
  }
}

