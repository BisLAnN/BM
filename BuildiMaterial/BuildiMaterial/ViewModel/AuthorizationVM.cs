using BuildiMaterial.Database;
using BuildiMaterial.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace BuildiMaterial.ViewModel
{
    public class AuthorizationVM : BaseVM
    {

        private string _login;
        public string Login
        {
            get => _login;
            set
            {
                _login = value;
                OnPropertyChanged(nameof(Login));
            }
        }
        private string _password;
        private User _user;

        public string Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }

        private bool Authorizaton(string login, string password)
        {

            using (var db = new BuildMateria1Entities())
            {
                var res = db.User.FirstOrDefault(user => user.UserLogin == login && user.UserPassword == password);
                _user = res;
                if (res != null)
                    return true;
                return false;
            }
        }

        public void AuthInApp()
        {
            bool result = Authorizaton(Login, Password);
            if (result)
            {
                foreach (Window window in Application.Current.Windows)

                    if (window is MainWindow)
                    {
                        var newForm = new CaptchaWindow();
                        newForm.Show(); 
                        window.Close();
                    }
            }
            else
            {  
                MessageBox.Show("Неверный логин или пароль!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                System.Diagnostics.Process.Start(Application.ResourceAssembly.Location);
                Application.Current.Shutdown();
            }
        }
    }
}
