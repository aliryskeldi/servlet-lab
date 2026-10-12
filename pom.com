<project xmlns="http://maven.apache.org/POM/4.0.0">
 <modelVersion>4.0.0</modelVersion>
 <groupId>kz.lab</groupId>
 <artifactId>servlet-lab</artifactId>
 <version>1.0</version>
 <packaging>war</packaging>
 <properties>
   <maven.compiler.source>17</maven.compiler.source>
   <maven.compiler.target>17</maven.compiler.target>
   <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
   <failOnMissingWebXml>false</failOnMissingWebXml>
 </properties>
 <dependencies>
   <dependency>
     <groupId>javax.servlet</groupId>
     <artifactId>javax.servlet-api</artifactId>
     <version>4.0.1</version>
     <scope>provided</scope>
   </dependency>
 </dependencies>
 <build>
   <finalName>lab</finalName>
   <plugins>
     <plugin>
       <groupId>org.eclipse.jetty</groupId>
       <artifactId>jetty-maven-plugin</artifactId>
       <version>9.4.54.v20240208</version>
       <configuration>
         <httpConnector><port>8080</port></httpConnector>
         <webApp><contextPath>/lab</contextPath></webApp>
       </configuration>
     </plugin>
   </plugins>
 </build>
</project>
package kz.lab;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp)
           throws IOException {
       resp.setContentType("text/html;charset=UTF-8");
       PrintWriter out = resp.getWriter();
       out.println("<h2>Сәлем, Servlet!</h2>");
       out.println("<p>Студент: Аты-жөні</p>");
       out.println("<p>Уақыт: " + LocalDateTime.now() + "</p>");
   }
}
package kz.lab;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp)
           throws IOException {
       resp.setContentType("text/html;charset=UTF-8");
       PrintWriter out = resp.getWriter();
       out.println("<h2>Сәлем, Servlet!</h2>");
       out.println("<p>Студент: Аты-жөні</p>");
       out.println("<p>Уақыт: " + LocalDateTime.now() + "</p>");
   }
}
