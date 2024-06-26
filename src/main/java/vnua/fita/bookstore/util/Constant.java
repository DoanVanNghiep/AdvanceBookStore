package vnua.fita.bookstore.util;

public class Constant {
	public static final byte WAITING_CONFIRM_ORDER_STATUS = 1; // trạng thái chờ xác nhận
	public static final byte DELIVERING_ORDER_STATUS = 2; //trạng thái đang giao
	public static final byte DELIVERED_ORDER_STATUS =3; //trạng thái đã giao
	public static final byte CANCEL_ORDER_STATUS =4; //trạng thái hủy đơn
	public static final byte REJECT_ORDER_STATUS =5; //trạng thái trả hàng
	public static final byte NOT_AVAIABLE_ORDER_STATUS = 6; //trạng thái hàng không đủ
	
	
	public static final String PAYMENTED_STATUS = "Đã thanh toán";
	public static final String UNPAYMENT_STATUS = "Chưa thanh toán";
	public static final String TRANSFER_PAYMENT_MODE = "transfer";
	public static final String WAITING_APPROVE_ACTION = "waiting";
	public static final String USERNAME_STORE_IN_COOKIE_OF_BOOKSTORE = "usernameStoreInCookieOfBookstore";
	public static final String TOKEN_STORE_IN_COOKIE_OF_BOOKSTORE = "tokenStoreInCookieOfBookstore";
	public static final String SECRET_STRING = "secret";
	
	public static final String DELEVERING_ACTION="delivering";
	public static final String DELEVERED_ACTION="delivered";
	public static final String WARTING_CONFIRM_ORDER_STATUS = "Cảnh báo xác nhận tình trạng đơn hàng";
	public static final String WAIT_FOR_CONFIRMATION = "CHỜ XÁC NHẬN";
	public static final String WAITING_FOR_DELIVERY = "ĐANG CHỜ GIAO";
 	public static final String DELIVERED = "ĐÃ GIAO";
	public static final String CUSTOMER_RETURN = "KHÁCH TRẢ LẠI";
	public static final String ORDER_LIST_OF_SHIPPER="orderListOfShipper";
	public static final String REJECT_ACTION="reject";
}
