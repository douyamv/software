package njust.User;

public class character {
	public static String getString(String str){   //���Ĵ�����,����������ݿ�������������
        if(str==null) str="";
        else {
           try{
              byte[] b=str.getBytes("ISO-8859-1");
              str=new String(b);
            }catch(Exception e){
                 e.printStackTrace();
           }
        }
        return str;
    }
}
