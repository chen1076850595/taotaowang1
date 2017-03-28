package mybean.data;

public class buy_bean {
        String userName;
        String userPassword;
        String addr;
        String phone;
        float money=0;         //用户余额
        StringBuffer product;  //购买的商品信息    
        float price=0;  //商品总价格
        public void setUserName(String n){
        	userName = n;
        }
        public String getUserName(){
        	return userName;
        }
        public void setUserPassword(String p){
        	userPassword = p;
        }
        public String getUserPassword(){
        	return userPassword;
        }
        public void setAddr(String a){
        	addr = a;
        }
        public String getAddr(){
        	return addr;
        }
        public void setPhone(String p){
        	phone = p;
        }
        public String getPhone(){
        	return phone;
        }
        public void setMoney(float m){
        	money = m;
        }
        public float getMoney(){
        	return money;
        }
        public void setProduct(StringBuffer i){
        	product = i;
        }
        public StringBuffer getProduct(){
        	return product;
        }
        
        public void setPrice(float p){
        	price = p;
        }
        public float getPrice(){
        	return price;
        }
       
}
