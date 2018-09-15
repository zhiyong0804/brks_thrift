
namespace cpp brkservice

//返回结果(公用)
struct ApiResult{
  1: required i32    resultCode;//返回编码
  2: required string resultMsg; //返回信息
  3: optional string data ; //其他数据
}

//返回结果(公用)
struct BalanceResult{
  1: required i32    resultCode;//返回编码
  2: required string resultMsg; //返回信息
  3: required i32    balance; //其他数据
}

//账户明细
struct AccountRecords{
  1: required i16    type;       // 账户明细类型
  2: required double limit;      // 账户明细额度
  3: required i64    timestamp;  // 费用发生时间戳
}

//记录结果
struct RecordsResult{
  1: required i32    resultCode;      //返回编码
  2: required string resultMsg;       //返回信息
  3: required        list<AccountRecords> records;
}

struct TravelRecord{
  1: required i64 startTimeStamp;  //起始时间
  2: required i32 duration;        //骑行时长
  3: required i32 amount;          //所耗金额
}

//用户里程
struct TravelResult{
  1: required i32                 resultCode;//返回编码
  2: required string              resultMsg; //返回信息
  3: optional string              data ;     //其他数据
  4: required double              mileage;   //里程
  5: required double              discharge; //排放
  6: required double              calorie;   //卡路里
  7: required list<TravelRecord>  records;
}

