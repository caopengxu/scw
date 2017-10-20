//
//  PCH.swift
//  scw
//
//  Created by cpx on 2017/7/27.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit
import QorumLogs

let __PhoneNumberLength = 11  // 允许输入手机号码的长度
let __PasswordLength = 15  // 允许输入密码的最大长度

let __KeyWindow = UIApplication.shared.keyWindow
let __ScreenBounds = UIScreen.main.bounds
let __ScreenWidth = UIScreen.main.bounds.width
let __ScreenHeight = UIScreen.main.bounds.height

// 根据屏幕变大字体变大（内联函数）
func fontAdd(_ font : CGFloat) -> CGFloat {
    
    var font = font
    if __ScreenWidth == 375
    {
        font += 1
    }
    else if __ScreenWidth == 414
    {
        font += 2
    }
    return font
}

// 颜色
let __ColorPlaceholder = #colorLiteral(red: 0.6274509804, green: 0.6274509804, blue: 0.6274509804, alpha: 1)
let __ColorRed = #colorLiteral(red: 0.9490196078, green: 0.1882352941, blue: 0.1882352941, alpha: 1)
let __ColorBackground = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)





// 网络
let C_BASE_URL = "http://47.93.55.119:8626/"

// 注册
let SC_Rester = C_BASE_URL + "garfield/member/api/v1/memberRegister"
// 登录
//let SC_Login = C_BASE_URL + "garfield/member/oauth/token"
let SC_Login = C_BASE_URL + "garfield/member/api/v1/memberLogin"
// 忘记密码
let SC_Forget = C_BASE_URL + "garfield/member/api/v1/memberUpdate"
// 验证码
let SC_Verification = C_BASE_URL + "garfield/member/api/v1/getVerCode"
// 浏览记录
let SC_BrowseLog = C_BASE_URL + "garfield/member/api/v1/findMemberGoodsBrowseList"
// 保存浏览记录
let SC_SaveBrowseLog = C_BASE_URL + "garfield/member/api/v1/saveGoodsBrown"
// 删除浏览记录
let SC_DeleteBrowseLog = C_BASE_URL + "garfield/member/api/v1/delete"
// 更新会员数据
let SC_UpdateMember = C_BASE_URL + "garfield/member/api/v1/memberUpdate"
// 会员数据
let SC_Member = C_BASE_URL + "garfield/member/api/v1/findMemberById"
// 订单评价
let SC_OrderComment = C_BASE_URL + "garfield/member/api/v1/saveEvaluate"


// banner
let SC_Banner = C_BASE_URL + "garfield/goods/api/v1/findAdvPositionVoList"
// 分类
let SC_ClassAll = C_BASE_URL + "garfield/goods/api/v1/findGoodClassByParentId"
// 为你推荐
let SC_Recommend = C_BASE_URL + "garfield/goods/api/v1/findRecommendList"
// 查找商品
let SC_FindGoodsList = C_BASE_URL + "garfield/goods/api/v1/findGoodsListByPage"
// 店铺详情商品列表
let SC_StoreDetailGoodsList = C_BASE_URL + "garfield/goods/api/v1/findGoodsList"
// 商品详情
let SC_GoodsDetail = C_BASE_URL + "garfield/goods/api/v1/findGoodsById/"
// 商品banner
let SC_GoodsBanner = C_BASE_URL + "garfield/goods/api/v1/goodsImageList"
// 商品规格
let SC_GoodsSpecification = C_BASE_URL + "garfield/goods/api/v1/getGoodsSpec"
// 获取商品属性
let SC_GoodsAttributes = C_BASE_URL + "garfield/goods/api/v1/getGoodsAttr"
// 商品评论
let SC_GoodsComment = C_BASE_URL + "garfield/goods/api/v1/findGoodsEvaluate"


// 店铺列表
let SC_StoreList = C_BASE_URL + "garfield/store/api/v1/findStoreListByPage"
// 店铺详情
//let SC_StoreDetail = C_BASE_URL + "garfield/store/api/v1/findStoreById"
let SC_StoreDetail = C_BASE_URL + "garfield/store/api/v1/findStoreVoById"
// 店铺分类
let SC_StoreClass = C_BASE_URL + "garfield/store/api/v1/findStoreClassListByParentId"
// 收藏店铺或商品
let SC_StoreOrGoodsCollection = C_BASE_URL + "garfield/store/api/v1/saveFavoriteOfStoreOrGoods"
// 取消收藏店铺或商品
let SC_StoreOrGoodsCancel = C_BASE_URL + "garfield/store/api/v1/deleteAllFav"
// 收藏列表
let SC_CollectionList = C_BASE_URL + "garfield/store/api/v1/findMyFavoriteList"


// 立即购买
let SC_CartNowBuy = C_BASE_URL + "garfield/cart/api/v1/buyNow"
// 加入购物车
let SC_CartAddGoods = C_BASE_URL + "garfield/cart/api/v1/saveCart"
// 根据会员ID查询购物车
let SC_CartList = C_BASE_URL + "garfield/cart/api/v1/queryCartByMemberID"
// 修改购物车商品数量
let SC_CartGoodsCount = C_BASE_URL + "garfield/cart/api/v1/updateCartCount"
// 删除购物车商品
let SC_CartDelete = C_BASE_URL + "garfield/cart/api/v1/deleteCart"
// 获取运费id
let SC_CartFreight = C_BASE_URL + "garfield/cart/api/v1/queryFreightByCartIds"
// 计算实付款价格
let SC_CartTotalPrice = C_BASE_URL + "garfield/cart/api/v1/getOrdersPrice"


// 提交订单
let SC_OrderSubmit = C_BASE_URL + "garfield/order/api/v1/submitOrder"
// 订单数量
let SC_OrderStateNum = C_BASE_URL + "garfield/order/api/v1/countOrderState"
// 订单列表
let SC_OrderList = C_BASE_URL + "garfield/order/api/v1/findOrderList"
// 取消订单
let SC_OrderCancel = C_BASE_URL + "garfield/order/api/v1/cancelOrder"
// 确定订单
let SC_OrderConfirm = C_BASE_URL + "garfield/order/api/v1/confirmOrder"
// 地区列表
let SC_AreaList = C_BASE_URL + "garfield/order/api/v1/queryAreaByAreaId"
// 保存地址
let SC_AddressSave = C_BASE_URL + "garfield/order/api/v1/saveAddress"
// 地址更新
let SC_AddressUpdate = C_BASE_URL + "garfield/order/api/v1/updateAddress"
// 地址列表
let SC_AddressList = C_BASE_URL + "garfield/order/api/v1/queryAddreassByMemberId"


// 微信生成预支付id
let SC_WechatPrePay = C_BASE_URL + "garfield/payment/api/v1/wechatPrePayId"
// 支付宝生成预支付id
let SC_AlipayPrePay = C_BASE_URL + "garfield/payment/api/v1/getAlipayPrepayId"
// 微信支付回调
let SC_WeChatCallBack = C_BASE_URL + "garfield/payment/api/v1/wechatCallBack"





