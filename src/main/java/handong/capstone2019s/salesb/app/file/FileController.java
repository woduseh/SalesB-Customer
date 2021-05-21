package handong.capstone2019s.salesb.app.file;


import java.awt.AlphaComposite;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.github.sardine.DavResource;
import com.github.sardine.Sardine;
import com.github.sardine.SardineFactory;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/file")
public class FileController {

    /**
     * forward initial menu view.
     * @return menu view
     */
    @RequestMapping(value = "/file", method = RequestMethod.GET)
    public String init() {
        return "file/form";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String upload() {
        final String path = "http://133.130.99.248/webdav/";

        Sardine sardine = SardineFactory.begin("capstone2019s","pw.capstone2019s");
    	JFileChooser choice=new JFileChooser();
    	FileNameExtensionFilter filter = new FileNameExtensionFilter(
                "JPG & GIF Images", // 파일 이름에 창에 출력될 문자열
                "jpg", "gif"); // 파일 필터로 사용되는 확장자. *.jpg. *.gif만 나열됨
    	choice.setFileFilter(filter); // 파일 다이얼로그에 파일 필터 설정




    	int select=choice.showOpenDialog(null);
//    	if(select!=JFileChooser.APPROVE_OPTION) {
//
//    	}
    	String filePath=choice.getSelectedFile().getPath();
    	String name=choice.getSelectedFile().getName();
    	System.out.println(filePath);
        List<DavResource> resources;
//		try {
//			resources = sardine.list(path);
//	    	for (DavResource res : resources)
//	    	{
//	    	     System.out.println(res);
//
//	    	}
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return "file/form";
//		}



		try{
//          sardine.createDirectory(path+"/test/");
//          sardine.createDirectory(path+"/test2/");
//          sardine.put(path+"a.txt","a".getBytes());
//          sardine.put(path+"b.txt","b".getBytes());
			byte[] data = FileUtils.readFileToByteArray(new File(filePath));
			sardine.put(path+"auth.jpg",data);



          List<DavResource> res = sardine.list(path);
          for(DavResource dr : res){
              System.out.println(dr);
          }
          System.out.println();

//          sardine.delete(path+"b.txt");
          res = sardine.list(path);
          for(DavResource dr : res){
              System.out.println(dr);
          }

      } catch (IOException e) {
          e.printStackTrace();
          return "file/form";
      }
        return "customer/form";
    }

    @RequestMapping(value = "/download", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String download() {
        final String path = "http://133.130.99.248/webdav/";

        Sardine sardine = SardineFactory.begin("capstone2019s","pw.capstone2019s");

        List<DavResource> resources;

        try {
			InputStream initialStream = sardine.get(path+"auth.jpg");

			Image image = ImageIO.read(initialStream);

	        BufferedImage bi = this.createResizedCopy(image, 180, 180, true);
	        ImageIO.write(bi, "jpg", new File("C:/Users/Sungmin Lee/Desktop/auth.jpg"));

//			byte[] buffer = new byte[initialStream.available()];
//		    initialStream.read(buffer);
//
//		    File targetFile = new File("C:/Users/Sungmin Lee/Desktop/auth.jpg");
//		    FileOutputStream outStream = new FileOutputStream(targetFile);
//		    int read;
//		    byte[] bytes = new byte[4048];
//		    while((read = initialStream.read(bytes)) != -1) {
//		    	outStream.write(bytes,0,read);
//		    }
//
//		    //outStream.write(buffer);

		} catch (IOException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}



		try{
          List<DavResource> res = sardine.list(path);
          for(DavResource dr : res){
              System.out.println(dr);
          }
          System.out.println();

          res = sardine.list(path);
          for(DavResource dr : res){
              System.out.println(dr);
          }

      } catch (IOException e) {
          e.printStackTrace();
          return "file/form";
      }
        return "customer/form";
    }

    BufferedImage createResizedCopy(Image originalImage, int scaledWidth, int scaledHeight, boolean preserveAlpha) {
        int imageType = preserveAlpha ? BufferedImage.TYPE_INT_RGB : BufferedImage.TYPE_INT_ARGB;
        BufferedImage scaledBI = new BufferedImage(scaledWidth, scaledHeight, imageType);
        Graphics2D g = scaledBI.createGraphics();
        if (preserveAlpha) {
            g.setComposite(AlphaComposite.Src);
        }
        g.drawImage(originalImage, 0, 0, scaledWidth, scaledHeight, null);
        g.dispose();
        return scaledBI;
    }

}
