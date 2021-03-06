/*
 * Copyright 2013 NINGPAI, Inc.All rights reserved.
 * NINGPAI PROPRIETARY / CONFIDENTIAL.USE is subject to licence terms.
 */
package com.ningpai.m.customer.vo;

import com.ningpai.customer.bean.CustomerAddress;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 订单信息
 *
 * @author NINGPAI-zhangqiang
 * @version 0.0.1
 * @since 2014年1月15日17:51:03
 */
public class OrderInfoBean {
    /**
     * 订单ID
     */

    private Long orderId;
    /**
     * 订单编号
     */

    private String orderNo;
    /**
     * 会员编号
     */

    private Long customerId;
    /**
     * 商品总金额
     */

    private BigDecimal moneyPaid;

    /**
     * 订单出库状态
     */

    private String orderCargoStatus;
    /**
     * 购买时间
     *
     * @see #getPayTime()
     * @see #setPayTime(Date)
     */
    private Date payTime;
    /**
     * 是否使用优惠劵
     */

    private String couponsDelfag;
    /**
     * 商品名称
     */

    private String goodsName;
    /**
     * 商品图片
     */

    private String goodsImg;
    /**
     * 商品编号
     *
     * @see #getGoodsId()
     * @see #setGoodsId(Long)
     */
    private Long goodsId;
    /**
     * 订单使用积分
     */
    private Long orderIntegral;
    /**
     * 商品列表
     */

    private List<GoodsBean> goods = new ArrayList<GoodsBean>(0);
    /**
     * 配送费用
     */

    private BigDecimal shippingFee;
    /**
     * 订单总额
     */

    private BigDecimal orderAmount;
    /**
     * 发货时间
     *
     * @see #getShippingTime()
     * @see #setShippingTime(Date)
     */
    private Date shippingTime;
    /**
     * 订单状态
     */

    private String orderStatus;
    /**
     * 配送状态
     */

    private String shippingStatus;
    /**
     * 订单生成时间
     */
    private Date addTime;
    /**
     * 配送方式编号
     *
     * @see #getDmId()
     * @see #setDmId(Long)
     */
    private Long dmId;
    /**
     * 支付编号
     *
     * @see #getPayId()
     * @see #setPayId(Long)
     */
    private Long payId;
    /**
     * 配送方式
     *
     * @see #getExpress()
     * @see #setExpress(ExpressBean)
     */
    private ExpressBean express;
    /**
     * 支付方式
     *
     * @see #getPay()
     * @see #setPay(PayBean)
     */
    private PayBean pay;
    /**
     * 订单赠送积分
     *
     * @see #getAcquireIntegral()
     * @see #setAcquireIntegral(Long)
     */
    private Long acquireIntegral;
    /**
     * 订单完成时间
     *
     * @see #getSuccessTime()
     * @see #setSuccessTime(Date)
     */
    private Date successTime;

    /**
     * 收货地址编号
     *
     * @see #getAddressId()
     * @see #setAddressId(Long)
     */
    private Long addressId;
    /**
     * 收货地址
     *
     * @see #getAddress()
     * @see #setAddress(CustomerAddress)
     */
    private CustomerAddress address;

    /**
     * 收货省
     */

    private String shippingProvince;

    /**
     * 收货市
     */

    private String shippingCity;

    /**
     * 收货区县
     */

    private String shippingCounty;

    /**
     * 收货详细地址
     */

    private String shippingAddress;

    /**
     * 收货人
     */

    private String shippingPerson;

    /**
     * 收货电话
     */

    private String shippingPhone;

    /**
     * 收货手机
     */

    private String shippingMobile;

    /**
     * 发票类型
     */

    private String invoiceType;
    /**
     * 发票抬头
     */

    private String invoiceTitle;
    /**
     * 发票内容
     */

    private String invoiceContent;
    /**
     * 取消时间
     */

    private Date cancelTime;
    /**
     * 取消理由
     */

    private String cancelRemark;
    /**
     * 晒单状态 0代表没完成订单商品的晒单 1代表已完成订单商品的晒单
     */

    private Long shareFlag;
    /**
     * 原始金额
     */

    private BigDecimal oldPrice;
    /**
     * 优惠金额
     */

    private BigDecimal prePrice;
    /**
     * 配送方式0快递配送1上面自提
     */

    private Long orderExpressType;
    /**
     * 订单方式0 pc 订单 1：手机订单 2：微信订单
     */

    private Long orderMType;

    /**
     * 物流订单
     */

    private List<ExpressNoVo> expressno;

    public List<ExpressNoVo> getExpressno() {
        return expressno;
    }

    public void setExpressno(List<ExpressNoVo> expressno) {
        this.expressno = expressno;
    }

    public String getOrderCargoStatus() {
        return orderCargoStatus;
    }

    public void setOrderCargoStatus(String orderCargoStatus) {
        this.orderCargoStatus = orderCargoStatus;
    }

    public BigDecimal getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(BigDecimal oldPrice) {
        this.oldPrice = oldPrice;
    }

    public BigDecimal getPrePrice() {
        return prePrice;
    }

    public void setPrePrice(BigDecimal prePrice) {
        this.prePrice = prePrice;
    }

    public Long getShareFlag() {
        return shareFlag;
    }

    public void setShareFlag(Long shareFlag) {
        this.shareFlag = shareFlag;
    }

    public Long getOrderIntegral() {
        return orderIntegral;
    }

    public void setOrderIntegral(Long orderIntegral) {
        this.orderIntegral = orderIntegral;
    }

    public String getCancelRemark() {
        return cancelRemark;
    }

    public void setCancelRemark(String cancelRemark) {
        this.cancelRemark = cancelRemark;
    }

    /**
     * 获取取消时间
     */
    public Date getCancelTime() {
        if (this.cancelTime != null) {
            return new Date(this.cancelTime.getTime());
        } else {
            return null;
        }
    }

    /**
     * 设置取消时间
     */
    public void setCancelTime(Date cancelTime) {
        if (cancelTime != null) {
            Date tEmp = (Date) cancelTime.clone();
            if (tEmp != null) {
                this.cancelTime = tEmp;
            }
        }
    }

    public String getInvoiceType() {
        return invoiceType;
    }

    public void setInvoiceType(String invoiceType) {
        this.invoiceType = invoiceType;
    }

    public String getInvoiceTitle() {
        return invoiceTitle;
    }

    public void setInvoiceTitle(String invoiceTitle) {
        this.invoiceTitle = invoiceTitle;
    }

    public String getInvoiceContent() {
        return invoiceContent;
    }

    public void setInvoiceContent(String invoiceContent) {
        this.invoiceContent = invoiceContent;
    }

    public CustomerAddress getAddress() {
        return address;
    }

    public void setAddress(CustomerAddress address) {
        this.address = address;
    }

    public Long getAddressId() {
        return addressId;
    }

    public void setAddressId(Long addressId) {
        this.addressId = addressId;
    }

    /**
     * 获取商品id
     */
    public Long getGoodsId() {
        goodsId = getGoods().isEmpty() ? null : getGoods().get(0).getGoodsId();
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    /**
     * 获取成功时间
     */
    public Date getSuccessTime() {
        if (this.successTime != null) {
            return new Date(this.successTime.getTime());
        } else {
            return null;
        }
    }

    /**
     * 设置成功时间
     */
    public void setSuccessTime(Date successTime) {
        if (successTime != null) {
            Date tEmp = (Date) successTime.clone();
            if (tEmp != null) {
                this.successTime = tEmp;
            }
        }
    }

    public Long getDmId() {
        return dmId;
    }

    public void setDmId(Long dmId) {
        this.dmId = dmId;
    }

    public Long getPayId() {
        return payId;
    }

    public void setPayId(Long payId) {
        this.payId = payId;
    }

    public ExpressBean getExpress() {
        return express;
    }

    public void setExpress(ExpressBean express) {
        this.express = express;
    }

    public PayBean getPay() {
        return pay;
    }

    public void setPay(PayBean pay) {
        this.pay = pay;
    }

    public Long getAcquireIntegral() {
        return acquireIntegral;
    }

    public void setAcquireIntegral(Long acquireIntegral) {
        this.acquireIntegral = acquireIntegral;
    }

    public String getShippingStatus() {
        return shippingStatus;
    }

    public void setShippingStatus(String shippingStatus) {
        this.shippingStatus = shippingStatus;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public BigDecimal getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(BigDecimal shippingFee) {
        this.shippingFee = shippingFee;
    }

    public BigDecimal getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(BigDecimal orderAmount) {
        this.orderAmount = orderAmount;
    }

    /**
     * 获取商品名称
     */
    public String getGoodsName() {
        goodsName = getGoods().isEmpty() ? "" : getGoods().get(0).getGoodsName();
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public List<GoodsBean> getGoods() {
        return goods;
    }

    public void setGoods(List<GoodsBean> goods) {
        this.goods = goods;
    }

    /**
     * 获取商品图片
     */
    public String getGoodsImg() {
        goodsImg = getGoods().isEmpty() ? "" : getGoods().get(0).getGoodsImg();
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public BigDecimal getMoneyPaid() {
        return moneyPaid;
    }

    public void setMoneyPaid(BigDecimal moneyPaid) {
        this.moneyPaid = moneyPaid;
    }

    public String getCouponsDelfag() {
        return couponsDelfag;
    }

    public void setCouponsDelfag(String couponsDelfag) {
        this.couponsDelfag = couponsDelfag;
    }

    /**
     * 获取添加时间
     */
    public Date getAddTime() {
        if (this.addTime != null) {
            return new Date(this.addTime.getTime());
        } else {
            return null;
        }
    }

    /**
     * 设置添加时间
     */
    public void setAddTime(Date addTime) {
        if (addTime != null) {
            Date tEmp = (Date) addTime.clone();
            if (tEmp != null) {
                this.addTime = tEmp;
            }
        }
    }

    /**
     * 获取购物时间
     */
    public Date getShippingTime() {
        if (this.shippingTime != null) {
            return new Date(this.shippingTime.getTime());
        } else {
            return null;
        }
    }

    /**
     * 设置购物时间
     */
    public void setShippingTime(Date shippingTime) {
        if (shippingTime != null) {
            Date tEmp = (Date) shippingTime.clone();
            if (tEmp != null) {
                this.shippingTime = tEmp;
            }
        }
    }

    /**
     * 获取付款时间
     */
    public Date getPayTime() {
        if (this.payTime != null) {
            return new Date(this.payTime.getTime());
        } else {
            return null;
        }
    }

    /**
     * 设置付款时间
     */
    public void setPayTime(Date payTime) {
        if (payTime != null) {
            Date tEmp = (Date) payTime.clone();
            if (tEmp != null) {
                this.payTime = tEmp;
            }
        }
    }

    public String getShippingProvince() {
        return shippingProvince;
    }

    public void setShippingProvince(String shippingProvince) {
        this.shippingProvince = shippingProvince;
    }

    public String getShippingCity() {
        return shippingCity;
    }

    public void setShippingCity(String shippingCity) {
        this.shippingCity = shippingCity;
    }

    public String getShippingCounty() {
        return shippingCounty;
    }

    public void setShippingCounty(String shippingCounty) {
        this.shippingCounty = shippingCounty;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getShippingPerson() {
        return shippingPerson;
    }

    public void setShippingPerson(String shippingPerson) {
        this.shippingPerson = shippingPerson;
    }

    public String getShippingPhone() {
        return shippingPhone;
    }

    public void setShippingPhone(String shippingPhone) {
        this.shippingPhone = shippingPhone;
    }

    public String getShippingMobile() {
        return shippingMobile;
    }

    public void setShippingMobile(String shippingMobile) {
        this.shippingMobile = shippingMobile;
    }

    public Long getOrderExpressType() {
        return orderExpressType;
    }

    public void setOrderExpressType(Long orderExpressType) {
        this.orderExpressType = orderExpressType;
    }

    public Long getOrderMType() {
        return orderMType;
    }

    public void setOrderMType(Long orderMType) {
        this.orderMType = orderMType;
    }

}
