package kr.smhrd.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

import kr.smhrd.handler.MainSocketHandler;

@Configuration
@EnableWebSocket
public class MainWebSocketConfig implements WebSocketConfigurer {
	@Autowired 
	MainSocketHandler mainSocketHandler;
	
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		registry.addHandler(mainSocketHandler,"/mainchating");
	}

}
