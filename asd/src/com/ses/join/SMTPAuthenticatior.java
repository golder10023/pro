package com.ses.join;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class SMTPAuthenticatior extends Authenticator
{
	// Authenticator 이거 객체는 메일 보내기전에  네이버 로그인하면. 메일 보낼때. 그것 처럼. 먼저 로그인을 해야된다.
	//  (즉, 보내는 사람)네이버///
	
	//일단 SMTP를 알아야됨.
	// SMTP는 메일을 보내기 위한 프로토콜.
	// 그래서 알고 잇는 HTTP 프로토콜 말고 메일전용 SMTP 프로토콜이이라고 잇음.
	// 그래서 이걸 프로토콜을 써야대는데. 이미 만들어놈..
	// 월래  하나하나 소켓프로그래밍으로 그 프로토콜 규약에 따른 걸 다 만들어야됨.
	// 근데 이미 만들어놧어. 그래서 이것만 쓰면되. 밑에 잇는 부분은 Authenticator 객체 안에 잇는 메소드야.
	// 이 메소드는 반드시 오버라이딩 해야됨. 왜냐면 왜부에다가  password 나 이런거 노출하면 안되니깐. 그래서 이렇게 만든듯.
	@Override
	protected PasswordAuthentication getPasswordAuthentication()
	{
		return new PasswordAuthentication("hot1023@nate.com","qweasd11!!");
	}
}


