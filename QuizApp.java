//package pra_12;
import java.sql.*;
import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.*;
import javax.swing.*;
   
public class QuizApp extends JFrame implements ActionListener
{
//    GUI
    JPanel mainp, sub_mainp1,  sub_mainp2, sub_mainp3, sub_mainp4;
    JPanel p[]=new JPanel[10];
    CardLayout card;
    JLabel icon, w1, w2, w3, detail, enter_name, enter_enr, enter_sem, choose_sem, choose_subject, question[]=new JLabel[10], colon1, colon2, last;
    JTextField name, enr;
    JButton enter, submit, start, next[]=new JButton[10];
    JRadioButton subj[]= new JRadioButton[3];
    JRadioButton option[] = new JRadioButton[50];
    ButtonGroup sub, opt;
    JComboBox sem, cr_sem;
    Container c;
    ImageIcon i = new ImageIcon("D:/QuizApplication/src/jc.png");
    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
    
//    Database
    public static final String URL ="jdbc:mysql://localhost/quiz?autoReconnect=true&serverTimezone=UTC&useSSL=False&allowPublicKeyRetrieval=true";
    public static Connection cn;
    
//    Global Variables
    public static int counter=0, sc=0, id=1;
    int option_var=0, question_var=0;
    String right="", subject="";
    int width = (int)screenSize.getWidth(), height = (int)screenSize.getHeight()-50;
        
    QuizApp()
    {
//        Frame Layout
    	setSize(1000,800);
        setLayout(null);
        setVisible(true);
        setTitle("My Frame");
        System.out.println("Width:"+getWidth());
        System.out.println("Height:"+getHeight());

//        Initaialize Card Layout
        card = new CardLayout();
        
        GridBagConstraints gc = new GridBagConstraints();
                        
//        set container
        c = getContentPane();
        c.setLayout(card);
        
//        Set font size of all the components
        Font label = new Font("serif", Font.BOLD, 32);
        Font title = new Font("serif", Font.BOLD, 40);
        Font textfield = new Font("serif", Font.PLAIN, 20);
        Font combobox = new Font("serif", Font.PLAIN, 20);
        Font options = new Font("serif", Font.ITALIC, 30);
        
//        Initialize all Panels        
        mainp = new JPanel(); 
        mainp.setLayout(new GridBagLayout());
        icon = new JLabel("",JLabel.CENTER);
        icon.setIcon(i);
        
        sub_mainp1 = new JPanel();
        sub_mainp1.setLayout(new GridBagLayout());
//        sub_mainp1.setBackground(new Color(0, 51, 102, 153));

        sub_mainp2 = new JPanel();
       // sub_mainp2.setPreferredSize(screenSize);
        sub_mainp2.setLayout(new GridBagLayout());
//        sub_mainp2.setBackground(new Color(0, 51, 102, 153));
        
        sub_mainp3 = new JPanel();
        sub_mainp3.setLayout(card);
//        sub_mainp3.setBackground(new Color(0, 51, 102, 153));
        
        sub_mainp4 = new JPanel();
        sub_mainp4.setLayout(new BorderLayout());
//        sub_mainp4.setBackground(new Color(0, 51, 102, 153));        
      
        for(int i=0; i<10;i++)
        {
        	p[i] = new JPanel();
        	p[i].setLayout(new GridBagLayout());
//        	p[i].setBackground(new Color(0, 51, 102, 153));
        }
        
//        Initialize all Labels
        w1 = new JLabel("C.D.Q",JLabel.CENTER);       
        w2 = new JLabel("Computer Department Quiz",JLabel.CENTER);
        w3 = new JLabel("To start the quiz,  click start!",JLabel.CENTER);
        detail = new JLabel("- Enter Details -",JLabel.CENTER);
        enter_name = new JLabel("Enter your full name ::",JLabel.LEFT);
        enter_enr = new JLabel("Enter your enrollment number ::",JLabel.LEFT);
        enter_sem = new JLabel("Choose your current semester ::",JLabel.LEFT);
        choose_sem = new JLabel("Choose semester to play the quiz ::",JLabel.LEFT);
        choose_subject = new JLabel("- Choose any one subject from below -",JLabel.LEFT);
        last = new JLabel("", JLabel.CENTER);
        for(int i=0; i<10; i++)
        {
        	question[i] = new JLabel("Which package is imported for JDBC?");
        	question[i].setFont(label);
        }
       
        //Initialize TextField        
        name = new JTextField(20);
        enr = new JTextField(20);
        
        //Initialize Buttons
        enter = new JButton("ENTER");        
        submit = new JButton("SUBMIT");
        for(int i=0; i<10; i++)
        {
        	next[i] = new JButton("NEXT");
        	next[i].addActionListener(this);
        }
        start = new JButton("START");
        
        
        //Initialize JRadioButtons for subjects
        for(int i=0;i<3;i++)
           	subj[i] = new JRadioButton();
       
        //Initialize JRadioButtons for options
        for(int i=0; i<40; i++)
           	option[i] = new JRadioButton("hello");
                
        //Initialize ButtonGroup
        sub = new ButtonGroup();
        opt = new ButtonGroup();
        
         //Initialize JComboBox and add items
        sem = new JComboBox();
        sem.addItem("sem1");
        sem.addItem("sem2");
        sem.addItem("sem3");
        sem.addItem("sem4");
        sem.addItem("sem5");
        sem.addItem("sem6");
        
        cr_sem = new JComboBox();
        cr_sem.addItem("Sem1");
        cr_sem.addItem("Sem2");
        cr_sem.addItem("Sem3");
        cr_sem.addItem("Sem4");
        cr_sem.addItem("Sem5");
        cr_sem.addItem("Sem6");
        
        
//      customize the components
   //   mainp1
//        icon.setLocation(830,  120);
        icon.setSize(200,  200);
        
//        w1.setLocation(900,  310);
        w1.setFont(title);
        w1.setSize(1000, 50);
        
        w2.setFont(label);
        w2.setSize(1000, 50);
//        w2.setLocation(760, 385);
        
        w3.setFont(label);
        w3.setSize(1000, 50);
//        w3.setLocation(757,  450);
        
//        start.setLocation(850,  550);
        start.setSize(150,  30);
        
   //   sub_mainp1
        detail.setFont(title);
        detail.setSize(1000, 50);
//        detail.setLocation(800, 50);
        
        enter_name.setFont(label);
        enter_name.setSize(700, 35);
//        enter_name.setLocation(500, 300);
        
        name.setFont(textfield);
        name.setSize(300, 35);
//        name.setLocation(1100, 300);
        
        enter_enr.setFont(label);
        enter_enr.setSize(700, 35);
//        enter_enr.setLocation(500, 375);
        
        enr.setFont(textfield);
        enr.setSize(300, 35);
//        enr.setLocation(1100, 370);
        
        enter_sem.setFont(label);
        enter_sem.setSize(700, 35);
//        enter_sem.setLocation(500, 440);
        
        cr_sem.setFont(combobox);
        cr_sem.setSize(300, 35);
//        cr_sem.setLocation(1100, 440);
        
        choose_sem.setFont(label);
        choose_sem.setSize(700, 35);
//        choose_sem.setLocation(500, 510);
        
        sem.setFont(combobox);
        sem.setSize(300, 35);
//        sem.setLocation(1100, 510);
        
        submit.setSize(150, 30);
//        submit.setLocation(880, 800);
        
   //   sub_mainp2        
        choose_subject.setFont(title);
        choose_subject.setSize(900, 100);
//        choose_subject.setLocation(600, 50);
        
        int x=900, y=300;
        for(int i=0;i<3;i++)
        {
        	subj[i].setFont(options);
        	subj[i].setSize(220, 30);
//        	subj[i].setLocation(x, y);
        	y=y+120;
        }
        
        enter.setSize(150, 30);
//        enter.setLocation(880,  800);
   //   p
        int qx=100, qy=30, ox=100, oy=200, bx=100, by=800;
        for(int i=0;i<10;i++)
        {
        	question[i].setSize(2000, 50);
        	question[i].setFont(label);
//        	question[i].setLocation(qx,  qy);
        	next[i].setSize(150, 30);
//        	next[i].setLocation(bx, by);
        }
        for(int i=0;i<40;i++)
        {
        	if(i==4||i==8||i==12||i==16||i==20||i==24||i==28||i==32||i==36||i==40)
        		oy=200;
     
        	option[i].setFont(options);
        	option[i].setSize(2000, 40);
//        	option[i].setLocation(ox,  oy);
        	oy=oy+150;
        	
        }
        
   //   sub_mainp4   
        last.setFont(label);
        
        
                   
        //Add radiobuttons to buttongroup
        for(int i=0;i<3;i++)
           	sub.add(subj[i]);
        
                
        for(int i =0;i<40;i++)
           	opt.add(option[i]);
        
        gc.fill = GridBagConstraints.NONE;
        gc.insets =  new Insets(10,0,20,10);
        //Add components to mainp
        gc.gridx = 0;
        gc.gridy = 0;
        mainp.add(icon,gc);
        gc.gridx = 0;
        gc.gridy = 1;
        //gc.RELATIVE
        mainp.add(w1,gc);
        gc.gridx = 0;
        gc.gridy = 2;
        mainp.add(w2,gc);
        gc.gridx = 0;
        gc.gridy = 3;
        mainp.add(w3,gc);
        gc.gridx = 0;
        gc.gridy = 4;
        gc.anchor = GridBagConstraints.PAGE_END;
        mainp.add(start,gc);
        
        //Add components to sub_mainp1
        
        gc.fill = GridBagConstraints.HORIZONTAL;        
        gc.gridx = 0;
        gc.gridy = 0;
        gc.gridwidth = 2;
        sub_mainp1.add(detail,gc);
        gc.gridx = 0;
        gc.gridy = 1;
        gc.gridwidth=1;
        sub_mainp1.add(enter_name,gc);
        gc.gridx = 1;
        gc.gridy = 1;
        sub_mainp1.add(name,gc);
        gc.gridx = 0;
        gc.gridy = 2;
        sub_mainp1.add(enter_enr,gc);
        gc.gridx = 1;
        gc.gridy = 2;
        sub_mainp1.add(enr,gc);
        gc.gridx = 0;
        gc.gridy = 3;
        sub_mainp1.add(enter_sem,gc);
        gc.gridx = 1;
        gc.gridy = 3;
        sub_mainp1.add(cr_sem,gc);
      
        gc.gridx = 0;
        gc.gridy = 4;
        sub_mainp1.add(choose_sem,gc);
        
       
        gc.gridx = 1;
        gc.gridy = 4;
        sub_mainp1.add(sem,gc);
        gc.gridx = 0;
        gc.gridy = 5;
        gc.gridwidth = 2;
        gc.fill = GridBagConstraints.NONE;
        gc.anchor = GridBagConstraints.PAGE_END;
        sub_mainp1.add(submit,gc);
        
        //Add components to sub_mainp2
        gc.fill = GridBagConstraints.NONE;        
        gc.gridwidth=1;
        gc.gridx = 0;
        gc.gridy = 1;
        sub_mainp2.add(choose_subject,gc);
        gc.gridx = 0;
        gc.gridy = 2;
        sub_mainp2.add(subj[0],gc);
        gc.gridx = 0;
        gc.gridy = 3;
        sub_mainp2.add(subj[1],gc);
        gc.gridx = 0;
        gc.gridy = 4;
        sub_mainp2.add(subj[2],gc);
        gc.gridx = 0;
        gc.gridy = 5;
        gc.gridwidth=2;
        gc.anchor = GridBagConstraints.PAGE_END;
        sub_mainp2.add(enter,gc);
        
        //Add components to sub_mainp3
        int i=0, j=0, k=4,pos=1;
        while(i<10)
        {
            gc.gridwidth=1;
        	gc.gridx=0;
        	gc.gridy=0;
            gc.insets =  new Insets(10,10,10,10);
            p[i].add(question[i],gc);
            if(k>40)
            {
                break;
            }
            else 
            {
                while(j<k)
                {
            		gc.gridx=0;
            		gc.gridy=pos;
                    p[i].add(option[j],gc);
                    j++;  pos++;
                    if(pos>4)
                    	pos=1;
                }
            }
            gc.gridx=0;
            gc.gridy=6;
            gc.anchor = GridBagConstraints.PAGE_END;
            p[i].add(next[i],gc);
            i++;
            k=k+4;
        }
      
        //Add Components to sub_mainp4
        sub_mainp4.add(last, BorderLayout.CENTER);
        
        //Add panles to container
        c.add(mainp, "a");
        c.add(sub_mainp1, "b");
        c.add(sub_mainp2, "c");
        for (int m=0;m<10;m++)
        {
        	c.add(p[m], "d");
        }

        c.add(sub_mainp4, "e");
       
        //Add ActionListeneres
        enter.addActionListener(this);
        submit.addActionListener(this);
        start.addActionListener(this);
        
        //Database
        try
        {           
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn = DriverManager.getConnection(URL,  "root",  "");
        }
        catch(Exception e){System.out.print(e);}        
    }
    @Override
    public void actionPerformed(ActionEvent ae)
    {
        String semester = sem.getSelectedItem().toString();
        if(ae.getActionCommand().equals("SUBMIT"))
        {
        	displaySubject(semester);
        }
        if(ae.getActionCommand().equals("ENTER"))
        {
        	if(subj[0].isSelected())
            {
        		subject=subj[0].getText();
            }
        	if(subj[1].isSelected())
            {
        		subject=subj[1].getText();
            }
        	if(subj[2].isSelected())
            {
        		subject=subj[2].getText();
            }
        	QNA(subject, id);
        }
        if(ae.getActionCommand().equals("NEXT"))
        {
        	score(right);
        	question_var++;
            option_var=option_var+4;
            id++;
            QNA(subject, id);
        }
        card.next(c);
        last.setText("Congratulations "+name.getText()+" your score is ::"+counter+" !");
        if(question_var==10)
        {
        	try {
        		
            	String sql="insert into participants (name, enrollment, current_sem, quiz_sem, subject,  score)"+"values(?, ?, ?, ?, ?, ?)";
            	PreparedStatement pstmt = cn.prepareStatement(sql);
            	pstmt.setString(1, name.getText());
            	pstmt.setString(2,  enr.getText());
            	pstmt.setString(3, cr_sem.getSelectedItem().toString());
            	pstmt.setString(4,  sem.getSelectedItem().toString());
            	pstmt.setString(5, subject);
            	pstmt.setInt(6, counter);
            	pstmt.execute();
            }catch(Exception e) {System.out.print(e);}
        }
    }
    public void displaySubject(String s)
    {
    	try
        {
            int i=0;
        	for(int a=1;a<=3;a++)
        	{	
	        	String sql = "select "+s+" from semester where ID = ?";
	            PreparedStatement pstmt = cn.prepareStatement(sql);
	            pstmt.setInt(1,  a);
	            ResultSet rs= pstmt.executeQuery();

	            while(rs.next())
	            {
	            	subj[i].setText(rs.getString(s));
	            	i++;
	            }  
        	}
        }
        catch(Exception e){System.out.println(e+"display subject"+s);}
    }
    public void QNA(String s, int id)
    {
        try{
            String s1="", subject=s;
            String sql="select * from "+s+" where ID = ?";
            PreparedStatement pstmt = cn.prepareStatement(sql);
            pstmt.setInt(1,  id);
            ResultSet rs= pstmt.executeQuery();
            while(rs.next())
            {
                question[question_var].setText(rs.getString("question"));
                option[option_var].setText(rs.getString("opt1"));
                option[option_var+1].setText(rs.getString("opt2"));
                option[option_var+2].setText(rs.getString("opt3"));
                option[option_var+3].setText(rs.getString("opt4"));
                right = rs.getString("right");
            }
        }catch(Exception e){System.out.println(e+"QNA");}
    }
    
    public void score(String s)
    {
    	if(option[option_var].isSelected())
        {
            if(option[option_var].getText().equals(s))
                counter++;
        }
        if(option[option_var+1].isSelected())
        {
            if(option[option_var+1].getText().equals(s))
                counter++;
        }
        if(option[option_var+2].isSelected())
        {
            if(option[option_var+2].getText().equals(s))
                counter++;
        }
        if(option[option_var+3].isSelected())
        {
            if(option[option_var+3].getText().equals(s))
                counter++;
        } 
        
    }
    public static void main(String args[])
    {
            QuizApp qa = new QuizApp();   
    }

}