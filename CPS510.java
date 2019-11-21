import java.awt.EventQueue;
import java.awt.TextArea;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Properties;
import java.util.Random;

import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.management.Query;
import javax.swing.JButton;
import javax.swing.JLabel;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.awt.event.ActionEvent;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;

public class CPS510 {

private JFrame frame;
public JTextField textField;
public JTextField txtEmail;
public String y;
public static Query q = new Query();
public JTextArea textArea = new JTextArea();

Connection conn1 = null;

/**
* Launch the application.
*/
public static void main(String[] args) {
EventQueue.invokeLater(new Runnable() {
public void run() {
try {
CPS510 window = new CPS510();
window.frame.setVisible(true);
} catch (Exception e) {
e.printStackTrace();
}
}
});
}




/**
* Create the application.
*/
public CPS510() {
initialize();
}

/**
* Initialize the contents of the frame.
*/
private void initialize() {
frame = new JFrame();
frame.setBounds(100, 100, 603, 645);
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
frame.getContentPane().setLayout(null);

JButton btnClear = new JButton("Clear");
btnClear.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
textArea.selectAll();
textArea.replaceSelection("");
}
});
btnClear.setBounds(238, 574, 89, 23);
frame.getContentPane().add(btnClear);

JButton btnLocation =  new JButton("Locations ");
btnLocation.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
try {
showLocation();
} catch (ClassNotFoundException | SQLException e1) {
// TODO Auto-generated catch block
e1.printStackTrace();
}
}
});
btnLocation.setBounds(208, 108, 96, 23);
frame.getContentPane().add(btnLocation);

textField = new JTextField();
textField.setBounds(38, 257, 126, 20);
frame.getContentPane().add(textField);
textField.setColumns(10);

JLabel lblName = new JLabel("Enter Name");
lblName.setBounds(51, 232, 106, 14);
frame.getContentPane().add(lblName);

JButton btnAdd = new JButton("Add Customer ");
btnAdd.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
String name = textField.getText();
String email = txtEmail.getText();

try {
insert(name,email);
} catch (ClassNotFoundException | SQLException e1) {
// TODO Auto-generated catch block
e1.printStackTrace();
}
System.out.println(name + " " + email);
}

});
btnAdd.setBounds(38, 297, 143, 23);
frame.getContentPane().add(btnAdd);

JButton btnShow = new JButton("Show");
btnShow.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
try {
showCust();
} catch (ClassNotFoundException | SQLException e1) {
// TODO Auto-generated catch block
e1.printStackTrace();
}














}
});
btnShow.setBounds(425, 297, 89, 23);
frame.getContentPane().add(btnShow);

JButton btnPrices = new JButton("Prices");
btnPrices.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
try {
showPrice();
} catch (ClassNotFoundException | SQLException e1) {
// TODO Auto-generated catch block
e1.printStackTrace();
}
}
});
btnPrices.setBounds(375, 108, 89, 23);
frame.getContentPane().add(btnPrices);

JScrollPane scrollPane = new JScrollPane();
scrollPane.setBounds(64, 378, 433, 178);
frame.getContentPane().add(scrollPane);
scrollPane.setViewportView(textArea);

txtEmail = new JTextField();
txtEmail.setBounds(208, 257, 96, 20);
frame.getContentPane().add(txtEmail);
txtEmail.setColumns(10);

JLabel lblNewLabel = new JLabel("Email");
lblNewLabel.setBounds(223, 232, 49, 14);
frame.getContentPane().add(lblNewLabel);

JButton btnItems = new JButton("Items ");
btnItems.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
try {
showItems();
} catch (ClassNotFoundException | SQLException e1) {
// TODO Auto-generated catch block
e1.printStackTrace();
}
}
});
btnItems.setBounds(37, 108, 89, 23);
frame.getContentPane().add(btnItems);



}



////////////////////////////////////////////////////////////////////////////










/////////////////

public void showCust() throws SQLException, ClassNotFoundException {
conn1 = null;
         Class.forName("oracle.jdbc.OracleDriver");
         String dbURL1 = "jdbc:oracle:thin:swgilani/06154969@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs
conn1 = DriverManager.getConnection(dbURL1);
         if (conn1 != null) {
             System.out.println("Connected with connection #1");
         }
  String query = "select * from customers";
  Statement stmt = conn1.createStatement();
 ResultSet rsMaster = stmt.executeQuery(query);
ResultSetMetaData rsmd = rsMaster.getMetaData();



int columnsNumber = rsmd.getColumnCount();
while (rsMaster.next()) {
   for (int i = 1; i <= columnsNumber; i++) {
       if (i > 1) System.out.print(",  ");
       String columnValue = rsMaster.getString(i);
       System.out.println((columnValue + " " + rsmd.getColumnName(i)));
       textArea.append((columnValue + " " + rsmd.getColumnName(i)));
       textArea.append("\n");
   }
 
}

}


public void insert(String name, String email) throws ClassNotFoundException, SQLException {
Random rand = new Random() ;
int n = rand.nextInt(100);

conn1 = null;
        Class.forName("oracle.jdbc.OracleDriver");
        String dbURL1 = "jdbc:oracle:thin:swgilani/06154969@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs
conn1 = DriverManager.getConnection(dbURL1);
        if (conn1 != null) {
            System.out.println("Connected with connection #1");
        }
String query = "INSERT INTO Customers (customer_ID,customer_Name,customer_EmailAddress) VALUES('"+n+"'"+",'"+name+"','"+email+"')";
Statement stmt = conn1.createStatement();
ResultSet rsMaster = stmt.executeQuery(query);
ResultSetMetaData rsmd = rsMaster.getMetaData();
}

public void showPrice()throws ClassNotFoundException, SQLException {
conn1 = null;
         Class.forName("oracle.jdbc.OracleDriver");
         String dbURL1 = "jdbc:oracle:thin:swgilani/06154969@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs
conn1 = DriverManager.getConnection(dbURL1);
         if (conn1 != null) {
             System.out.println("Connected with connection #1");
         }
String query = "select product_Name,product_Price FROM  product";
Statement stmt = conn1.createStatement();
ResultSet rsMaster = stmt.executeQuery(query);
ResultSetMetaData rsmd = rsMaster.getMetaData();


int columnsNumber = rsmd.getColumnCount();
while (rsMaster.next()) {
 
       
       String columnValue = rsMaster.getString(1);
       System.out.println((columnValue));
       textArea.append((columnValue));
       textArea.append("\n");
       String columnValue1 = rsMaster.getString(2);
       System.out.println((columnValue1));
       textArea.append("$"+(columnValue1));
       textArea.append("\n");
   


}
 }
public void showItems()throws ClassNotFoundException, SQLException {
conn1 = null;
         Class.forName("oracle.jdbc.OracleDriver");
         String dbURL1 = "jdbc:oracle:thin:swgilani/06154969@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs
conn1 = DriverManager.getConnection(dbURL1);
         if (conn1 != null) {
             System.out.println("Connected with connection #1");
         }
String query = "select product_Name,product_Price FROM  product";
Statement stmt = conn1.createStatement();
ResultSet rsMaster = stmt.executeQuery(query);
ResultSetMetaData rsmd = rsMaster.getMetaData();


int columnsNumber = rsmd.getColumnCount();
while (rsMaster.next()) {
 
       
       String columnValue = rsMaster.getString(1);
       System.out.println((columnValue));
       textArea.append((columnValue));
       textArea.append("\n");
     


}
 }

public void showLocation()throws ClassNotFoundException, SQLException {
conn1 = null;
         Class.forName("oracle.jdbc.OracleDriver");
         String dbURL1 = "jdbc:oracle:thin:swgilani/06154969@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs
conn1 = DriverManager.getConnection(dbURL1);
         if (conn1 != null) {
             System.out.println("Connected with connection #1");
         }
String query = "select supplier_Location from supplier ";
Statement stmt = conn1.createStatement();
ResultSet rsMaster = stmt.executeQuery(query);
ResultSetMetaData rsmd = rsMaster.getMetaData();


int columnsNumber = rsmd.getColumnCount();
while (rsMaster.next()) {
 
       
       String columnValue = rsMaster.getString(1);
       System.out.println((columnValue));
       textArea.append((columnValue));
       textArea.append("\n");
     
   


}
 }

















}