﻿using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.CommandWpf;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Windows.Input;

namespace EindopdrachtProg5RubenSam.ViewModel
{
    public class ViewModelCreateAnswer : ViewModelBase
    {
        private Context DbContext;
        private string _QuestionName;
        private string _AnswerName;
        private int _QuestionId;
        private string _Category;

        private AnswerViewModel _SelectedAnswer;
        public AnswerViewModel SelectedAnswer
        {
            get
            {
                return _SelectedAnswer;
            }
            set
            {
                _SelectedAnswer = value;
                RaisePropertyChanged();

                try
                {
                    IsCorrect = Convert.ToBoolean(SelectedAnswer.IsCorrect);
                    RaisePropertyChanged("IsCorrect");
                }
                catch { }
            }
        }

        public ViewModelCreateAnswer()
        {
            DbContext = new Context();

            UpdateQuestionName = new RelayCommand(UpdateName,CanUpdateQuestionName);
            UpdateCategory = new RelayCommand(UpdateQuestionCategory,CanUpdateQuestionCategory);
            AddAnswer = new RelayCommand(AddNewAnswer,CanAddAnswer);
            DeleteAnswer = new RelayCommand(RemoveAnswer,CanDeleteAnswer);

            var AnswersList = DbContext.Antwoorden.ToList().Select(A => new AnswerViewModel(A));
            Answers = new ObservableCollection<AnswerViewModel>(AnswersList);
        }

        private void UpdateName()
        {
            try
            {
                DbContext.Vragen.Where(V => V.Id == this._QuestionId).First().Name = this._QuestionName;
                DbContext.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                    //throw raise;
                }
            }
        }

        private bool CanUpdateQuestionName()
        {
            return true;
        }

        private void UpdateQuestionCategory()
        {
            try
            {
                DbContext.Vragen.Where(V => V.Id == this._QuestionId).First().Category = this.Category;
                DbContext.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                    //throw raise;
                }
            }
        }

        private bool CanUpdateQuestionCategory()
        {
            return true;
        }

        private void AddNewAnswer()
        {
            Antwoord A = new Antwoord();
            A.Name = this.AnswerName;
            A.Correct = 0;
            A.VraagId = this._QuestionId;
            try
            {
                DbContext.Antwoorden.Add(A);
                DbContext.SaveChanges();

                AnswerViewModel AVM = new AnswerViewModel(A);
                this.Answers.Add(AVM);
                RaisePropertyChanged("Answers");
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                    throw raise;
                }

            }
            this.AnswerName = "";
        }

        private bool CanAddAnswer()
        {
            try
            {
                if (DbContext.Vragen.Where(V => V.Id == this._QuestionId).First().Antwoords.Count() > 3)
                    return false;
                else
                    return true;
            }
            catch { return false; }
        }

        private void RemoveAnswer()
        {
            try
            {
                DbContext.Antwoorden.Remove(_SelectedAnswer.Antwoord);
                DbContext.SaveChanges();
                this.Answers.Remove(_SelectedAnswer);
                RaisePropertyChanged("Answers");
            }
            catch
            { }
        }

        private bool CanDeleteAnswer()
        {
            return true;
        }

        public string AnswerName
        {
            get { return _AnswerName; }
            set { var _OldValue = _AnswerName; _AnswerName = value; /*RaisePropertyChanged(_AnswerName, _OldValue, value, true);*/ }
        }

        public string QuestionName
        {
            get { return _QuestionName; }
            set { var _OldValue = _QuestionName; _QuestionName = value; RaisePropertyChanged(_QuestionName, _OldValue, value, true); }
        }

        public int QuestionId
        {
            get { return _QuestionId; }
            set
            {
                var _OldValue = _QuestionId; _QuestionId = value; RaisePropertyChanged(_QuestionId.ToString(), _OldValue, value, true);

                var AnswersList = DbContext.Antwoorden.ToList().Select(A => new AnswerViewModel(A));
                Answers = new ObservableCollection<AnswerViewModel>(AnswersList);
                for (int i = 0; i < Answers.Count(); i++)
                {
                    if (Answers[i].Antwoord.VraagId != _QuestionId)
                    {
                        Answers.RemoveAt(i);
                        i = -1;
                    }
                }

                this.Category = DbContext.Vragen.Where(V => V.Id == this._QuestionId).First().Category;

                RaisePropertyChanged("Answers");
                RaisePropertyChanged("Category");
            }
        }

        public string Category
        {
            get { return _Category; }
            set { var _OldValue = _Category; _Category = value; /*RaisePropertyChanged(_Category, _OldValue, value, true);*/ }
        }

        public bool IsCorrect
        {
            get { if (SelectedAnswer != null) { RaisePropertyChanged("Answers"); return Convert.ToBoolean(this._SelectedAnswer.Antwoord.Correct); } else return false; }
            set
            {
                if (SelectedAnswer != null)
                {
                    var _Oldvalue = this._SelectedAnswer.Antwoord.Correct;
                    DbContext.Antwoorden.ToList().Select(A => new AnswerViewModel(A)).Where(A => A.Antwoord.Id == _SelectedAnswer.Antwoord.Id).First().IsCorrect = Convert.ToInt32(value);
                    DbContext.SaveChanges();
                    this._SelectedAnswer.Antwoord.Correct = Convert.ToInt32(value);
                    for (int i = 0; i < Answers.Count(); i++)
                    {
                        if (Answers[i].Id == this._SelectedAnswer.Id)
                        {
                            Answers[i].IsCorrect = Convert.ToInt32(value);
                            Answers[i].Antwoord.Correct = Convert.ToInt32(value);
                            break;
                        }
                    }
                    RaisePropertyChanged("Answers");
                    //RaisePropertyChanged(_SelectedAnswer.Antwoord.Correct.ToString(), _Oldvalue.ToString(), value.ToString(), true);
                }
            }
        }

        public ICommand UpdateQuestionName { get; set;}
        public ICommand UpdateCategory { get; set; }
        public ICommand AddAnswer { get; set; }
        public ICommand DeleteAnswer { get; set; }

        public ObservableCollection<AnswerViewModel> Answers { get; set; }
    }
}
