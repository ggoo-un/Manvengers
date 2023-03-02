package Project;

public class TestMain {
public static void main(String[] args) {
	Test test=new Test();
	for(int i=1;i<16;i++) {
		test.insertMember("fashion", "top", "image/top_"+i+".jpg", "image/top_ctt_1.jpg", "Test9_com"+i, (i+1)*1240, "null", "null");
	}
}
}
