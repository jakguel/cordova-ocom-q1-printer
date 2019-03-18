/**
* Ipos 打印服务回调
* IPosPrinterCallback.aidl
* AIDL Version：1.0.0
*/
package com.iposprinter.iposprinterservice.aidl;

/**
 * 打印服务执行结果的回调
 */

interface IPosPrinterCallback {

	/**
	* 返回执行结果
	* @param isSuccess:	  true执行成功，false 执行失败
	*/
	oneway void onRunResult(boolean isSuccess);

	/**
	* 返回结果(字符串数据)
	* @param result:	结果，打印机上电以来打印长度(单位mm)
	*/
	oneway void onReturnString(String result);

	/**
	* 返回接口执行失败时发生异常情况的具体原因
	* code：	异常代码
	* msg:	异常描述
	*/
	oneway void  onRaiseException(int code, String msg);
}
