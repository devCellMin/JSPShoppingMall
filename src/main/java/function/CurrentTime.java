package function;

import java.text.SimpleDateFormat;
import java.util.Calendar;


public class CurrentTime {
	String currentTime = "";
	public CurrentTime() {
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("HH : mm : ss");
		int hour = calendar.get(Calendar.HOUR);
		
		if(hour < 12) { // AM
			currentTime = String.format("%s  %s", formatter.format(calendar.getTime()), "AM");
		}else {
			currentTime = String.format("%s  %s", formatter.format(calendar.getTime()), "PM");
		}
		
	}
	public String getCurrentTime() {
		return currentTime;
	}
}
