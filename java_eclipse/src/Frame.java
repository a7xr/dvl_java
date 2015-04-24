/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.sql.SQLException;
import javax.swing.*;

/**
 *
 * here is where I will put some of project which I will maintain
 * 
 * to insert in notes_tech (tiitle, cmd_exp)
 * @author root
 */
public class Frame extends JFrame implements WindowListener{
    
    MysqlManage mysql;
    Panel1 panel1;
    
    public Frame() throws SQLException, ClassNotFoundException{
        mysql = new MysqlManage();
        
        setTitle("title");
        setBounds(0, 0, 500, 200);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        
        JTabbedPane tabbedpane = new JTabbedPane();
        
        panel1 = new Panel1();
        addWindowListener(this);
        
        /****************************************************
         *
         * 
         ****************************************************/
        tabbedpane.add("insert_notes_tech", panel1);
        
        /****************************************************
         *
         * 
         ****************************************************/
        
        getContentPane().add(tabbedpane);
        pack();
        setVisible(true);
    }
    
    class ActionListening implements ActionListener{

        @Override
        public void actionPerformed(ActionEvent e) {
//            throw new UnsupportedOperationException("Not supported yet.");
            if(e.getSource() == panel1.button){
                try {
//                    String query = "insert into draft(draft) "
//                            + "values ('"+panel1.textField.getText()+"')";
//                    String query = "insert into draft(draft) values ('"
//                            + "from java: textfield: "+panel1.textField.getText()
//                            + "from java: textarea: "+panel1.textArea.getText()
//                            + "')";
                    String query = "" +
                    		"insert into notes_tech (tiitle, cmd_exp) values ('" +
                    		panel1.textField.getText() +
                    		"' ,'" +
                    		panel1.textArea.getText() +
                    		"')";
                    mysql.ins_upd_del_QueryToStatement(query);
                }catch(SQLException sqlexception){
                    
                }
            }
        }
        
    }
    
    class Panel1 extends JPanel {
        JTextField textField;
        JButton button;
        JTextArea textArea;
        
        public Panel1() {
            textField = new JTextField(20);

            setLayout(new FlowLayout());
            
            button = new JButton("insert");
            textArea = new JTextArea("tic tac doo", 5, 100);
//            textArea.setPreferredSize(new Dimension(100, 100));
            button.addActionListener(new ActionListening());
            JScrollPane scrollpane = new JScrollPane(textArea
//            		, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS
//            		,JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS
            		);
            textArea.setLineWrap(true);
            
            
            add(textField);
            add(scrollpane);
            add(button);
//            
//            pack();
        }

        
    }

    class Panel2 extends JPanel{
    	
    	JTable table;
    	JButton button;
    	JTextField textfield;
		
    	public Panel2() {
			super();
			
		}
    	
    	
    	
    }
    
    
    
    
    
    
    
    
    
    
    
	@Override
	public void windowActivated(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowClosed(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowClosing(WindowEvent arg0) {
		// TODO Auto-generated method stub
		mysql.cleanEnv();
	}

	@Override
	public void windowDeactivated(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowDeiconified(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowIconified(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowOpened(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}
