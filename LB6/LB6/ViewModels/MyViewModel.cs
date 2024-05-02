using LB6;
using System.ComponentModel;
using System.Windows.Input;
using LB6.Model; 

namespace LB6.ViewModels
{
    public class MyViewModel : INotifyPropertyChanged
    {
        private int inputNumber;
        private string resultMessage;
        private NumberChecker numberChecker = new NumberChecker(); 

        public int InputNumber
        {
            get { return inputNumber; }
            set
            {
                if (inputNumber != value)
                {
                    inputNumber = value;
                    RaisePropertyChanged("InputNumber");
                }
            }
        }

        public string ResultMessage
        {
            get { return resultMessage; }
            set
            {
                if (resultMessage != value)
                {
                    resultMessage = value;
                    RaisePropertyChanged("ResultMessage");
                }
            }
        }

        public ICommand CheckEvenCommand { get; }

        public MyViewModel()
        {
            CheckEvenCommand = new RelayCommand(ExecuteCheckEven);
        }

        private void ExecuteCheckEven(object parameter)
        {
            if (InputNumber < 0 || InputNumber > 100)
            {
                ResultMessage = "Введите число от 0 до 100.";
            }
            else
            {
                bool isEven = numberChecker.IsEven(InputNumber);
                ResultMessage = isEven ? "Число четное." : "Число нечетное.";
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
