package com.niit.Weddingproject.Config;

	import java.util.Properties;

import javax.sql.DataSource;
    import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.context.annotation.Bean;
	import org.springframework.context.annotation.ComponentScan;
	import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.Dao.AuthenticationDao;
import com.niit.Dao.BillingDao;
import com.niit.Dao.CartDao;
import com.niit.Dao.CartItemDao;
import com.niit.Dao.CategoryDao;
import com.niit.Dao.OrderDao;
import com.niit.Dao.OrderItemDao;
import com.niit.Dao.PayDao;
import com.niit.Dao.ProductDao;
import com.niit.Dao.ShippingAddressDao;
import com.niit.Dao.SupplierDao;
import com.niit.Dao.UserDao;
import com.niit.DaoImpl.AuthenticationDaoImpl;
import com.niit.DaoImpl.BillingDaoImpl;
import com.niit.DaoImpl.CartDaoImpl;
import com.niit.DaoImpl.CartItemDaoImpl;
import com.niit.DaoImpl.CategoryDaoImpl;
import com.niit.DaoImpl.OrderDaoImpl;
import com.niit.DaoImpl.OrderItemDaoImpl;
import com.niit.DaoImpl.PayDaoImpl;
import com.niit.DaoImpl.ProductDaoImpl;
import com.niit.DaoImpl.ShippingAddressDaoImpl;
import com.niit.DaoImpl.SupplierDaoImpl;
import com.niit.DaoImpl.UserDaoImpl;
import com.niit.model.Authentication;
import com.niit.model.Billing;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.CategoryInfo;
import com.niit.model.Order;
import com.niit.model.OrderItem;
import com.niit.model.Pay;
import com.niit.model.ProductInfo;
import com.niit.model.ShippingAddress;
import com.niit.model.SupplierInfo;
import com.niit.model.UserInfo;

		
	@Configuration
	@ComponentScan("com.niit.*")
	@EnableTransactionManagement
	public class ApplicationContext 
	{
		@Bean("dataSource")
		public DataSource getDataSource() {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/test/wedding1");
			dataSource.setUsername("indu");
			dataSource.setPassword("indu");
			return dataSource;
	}
		private Properties getHibernateProperties() {
			Properties properties = new Properties();
			properties.put("hibernate.connection.pool_size", "10");
			properties.put("hibernate.hbm2ddl.auto", "update");
			properties.put("hibernate.show_sql", "true");
			properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
			return properties;
		}
		
		@Autowired
		@Bean("sessionFactory")
		public SessionFactory getSessionFactory(DataSource dataSource) {
			LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
			sessionBuilder.addProperties(getHibernateProperties());
			sessionBuilder.addAnnotatedClass(CategoryInfo.class);
			sessionBuilder.addAnnotatedClass(ProductInfo.class);
			sessionBuilder.addAnnotatedClass(SupplierInfo.class);
			sessionBuilder.addAnnotatedClass(UserInfo.class);
			sessionBuilder.addAnnotatedClass(Billing.class);
			sessionBuilder.addAnnotatedClass(Cart.class);
			sessionBuilder.addAnnotatedClass(CartItem.class);
			sessionBuilder.addAnnotatedClass(Order.class);
			sessionBuilder.addAnnotatedClass(OrderItem.class);
			sessionBuilder.addAnnotatedClass(Pay.class);
			sessionBuilder.addAnnotatedClass(ShippingAddress.class);
			sessionBuilder.addAnnotatedClass(Authentication.class);	
			return sessionBuilder.buildSessionFactory();
		}
		
		@Autowired
		@Bean("transactionManager")
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
			return transactionManager;
		}

		@Autowired
		@Bean("categoryDao")
		public CategoryDao getCategoryDao(SessionFactory sessionFactory) {
			return new CategoryDaoImpl(sessionFactory);
		}

		@Autowired
		@Bean("productDao")
		public ProductDao getProductDao(SessionFactory sessionFactory) {
			return new ProductDaoImpl(sessionFactory);	

	    }

		@Autowired
		@Bean("supplierDao")
		public SupplierDao getSupplierDao(SessionFactory sessionFactory) {
			return new SupplierDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("userDao")
		public UserDao getUserDao(SessionFactory sessionFactory) {
			return new UserDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("billingDao")
		public BillingDao getBillingDao(SessionFactory sessionFactory) {
			return new BillingDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("cartDao")
		public CartDao getCartDao(SessionFactory sessionFactory) {
			return new CartDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("cartItemDao")
		public CartItemDao getCartItemDao(SessionFactory sessionFactory) {
			return new CartItemDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("orderDao")
		public OrderDao getOrderDao(SessionFactory sessionFactory) {
			return new OrderDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("orderItemDao")
		public OrderItemDao getOrderItemDao(SessionFactory sessionFactory) {
			return new OrderItemDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("payDao")
		public PayDao getPayDao(SessionFactory sessionFactory) {
			return new PayDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("shippingAddressDao")
		public ShippingAddressDao getShippingAddressDao(SessionFactory sessionFactory) {
			return new ShippingAddressDaoImpl(sessionFactory);	
		}
		@Autowired
		@Bean("authenticationDao")
		public AuthenticationDao getAuthenticationDao(SessionFactory sessionFactory) {
			return new AuthenticationDaoImpl(sessionFactory);	
		}
		
	}
	
	