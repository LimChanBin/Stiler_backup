using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Stilers
{
    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    /// 

    public class Tile
    {
        public String id;
        public String share;
        public Tile()
        {
        }
        public Tile(String id_)
        {
            id = id_;
            share = null;
        }

    }


    public class Account
    {
        public String email;
        public String name;
        public Dictionary<String,Tile> tiles;
        
        public Account()
        {
            email = "";
            name = "";
            tiles = new Dictionary<string, Tile>();
        }
        
        public Account(String email_, String name_, String[] tile_)
        {
            email = email_;
            name = name_;
                                    // 타일 ID, 타일 객체
            tiles = new Dictionary<string, Tile>();
            for (int i = 0; i < tile_.Length; i++)
            {
                tiles.Add( tile_[i] , new Tile(tile_[i]) );
            }
            
        }
        

    }

    
    public partial class MainWindow : Window
    {

        public Account stileAccount;

        ListWindow listWindow;

        public MainWindow()
        {
            InitializeComponent();
           
        }

        

        private void Grid_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            PostCom signinComm = new PostCom("signin", "email=" + emailInput.Text + "&password=" + pwInput.Password);
            
            String signinOriginVal = signinComm.getValue();
            String[] signinOriginArr = signinOriginVal.Split('|');

            //MessageBox.Show(signinOriginVal);

            switch (signinOriginArr[0])
            {
                case "success":
                    stileAccount = new Account(signinOriginArr[1], signinOriginArr[2], signinOriginArr[3].Split(','));
                    listWindow = new ListWindow(this);
                    listWindow.Show();
                    break;
                default:
                    MessageBox.Show("로그인 실패");
                    break;
            }//switch_signinOriginArr[0]

        }

        private void label_MouseDown(object sender, MouseButtonEventArgs e)
        {
            SystemCommands.MinimizeWindow(this);
        }

        private void label_Copy_MouseDown(object sender, MouseButtonEventArgs e)
        {
            SystemCommands.CloseWindow(this);
        }
    }
}
