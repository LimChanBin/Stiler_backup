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
using System.Windows.Shapes;

namespace Stilers
{
    /// <summary>
    /// ListWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class ListWindow : Window
    {
        public Account stileAccount;

        public Dictionary<String, TextBlock> tileBlocks = new Dictionary<string, TextBlock>();

        public ListWindow(MainWindow mainWindow_)
        {
            InitializeComponent();
            stileAccount = mainWindow_.stileAccount;


            int ii = 0;
            foreach (var i in stileAccount.tiles)
            {


                TextBlock textBlock = new TextBlock();
               
                tileBlocks.Add(i.Key, textBlock);
                textBlock.Text = i.Key;

                var margin = textBlock.Margin;
                margin.Left = ii * 20;
                textBlock.Margin = margin;
                
                textBlock.MouseDown += clickTile;
                tileWrapper.Children.Add(textBlock);
                ii++;
            }


        } 

        public void clickTile(Object sender, RoutedEventArgs e)
        {
            TextBlock tmpTextblock = sender as TextBlock;
            String id = tmpTextblock.Text;
            MessageBox.Show(stileAccount.tiles[id].id);
        }
    }
}
