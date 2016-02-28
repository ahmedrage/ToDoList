using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        List<ToDoItem> items = new List<ToDoItem>();
        public MainWindow()
        {
            InitializeComponent();


            taskClick.Click += TaskClick_Click;
            removeItem.Click += RemoveItem_Click;
            SortAbc.Click += SortAbc_Click;

            taskBox.ItemsSource = items;

        }


        private void SortAbc_Click(object sender, RoutedEventArgs e)
        {
            items.Sort((p1, p2) => p1.Name.CompareTo(p2.Name));
            refresh();
        }

        private void RemoveItem_Click(object sender, RoutedEventArgs e)
        {
            int index = taskBox.SelectedIndex;

            if (index >= 0)
            {
                if (items[index].Completed == false) { 
                items[index].Completed = true; 
                refresh();
                }else
                {
                    items[index].Completed = false;
                    refresh();
                }

                errorLabel.Content = "";
            } else {
                errorLabel.Content = "Please select an item to Complete";
            }
        }

        private void TaskClick_Click(object sender, RoutedEventArgs e)
        {
            if (taskEnter.Text != null && taskEnter.Text != "")
            {
                items.Add(new ToDoItem() { Name = taskEnter.Text, Date = DateEnter.Text , Completed = false });
                refresh();

                errorLabel.Content = "";
            } else {
                errorLabel.Content = "Please enter a task";
            }

        }

        public void refresh()
        {
            taskBox.ItemsSource = null;
            taskBox.ItemsSource = items;
        }

        }

        public class ToDoItem {
        public string Name { get; set; }


        public bool Completed { get; set; }

        public string Date { get; set; }

        public override string ToString()
        {

            if (Completed == false)
            {
                return this.Name + " -- " + Date + " -- To do";
            } else
            {
                return this.Name + " -- " + Date + " -- Completed";
            }
        }
    }


}
