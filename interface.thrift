include "struct.thrift"

namespace cpp brkservice

//节点服务接口
service BRKService
{
    /**
	 * 登录
	 */
	struct.ApiResult brk_get_mobile_code(1:string mobile)
    
	/**
	 * 登录
	 */
	struct.ApiResult brk_login(1:string mobile, 2:string code)
	
	/**
	 *充值
	 */
	struct.ApiResult brk_recharge(1:string mobile, 2:i32 amount)
    
    /**
	 *查询账户余额
	 */
    struct.BalanceResult brk_get_account_balance(1:string mobile)
	
    /**
	 *查询所有消费记录
	 */
    struct.RecordsResult brk_list_account_records(1:string mobile)
    
    /**
	 * 解锁
	 */
    struct.ApiResult brk_unlock(1:string mobile, 2:string bike_code)
    
    /**
	 *查询用户里程
	 */
    struct.TravelResult brk_list_travel(1:string mobile)
    
    /**
	 * 结束行程
	 */
    struct.TravelResult brk_lock(1:string mobile, 2:string bike_code)
}


