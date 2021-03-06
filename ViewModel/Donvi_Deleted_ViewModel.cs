﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QLK_Dn.ViewModel
{
    public class Donvi_Deleted_ViewModel : BaseViewModel
    {
        private ObservableCollection<Model.DONVITINH> _List;

        public ObservableCollection<Model.DONVITINH> List
        {
            get { return _List; }
            set { _List = value; OnPropertyChanged(); }
        }

        private ObservableCollection<Model.DONVITINH> _RDList;

        public ObservableCollection<Model.DONVITINH> RDList
        {
            get { return _RDList; }
            set { _RDList = value; OnPropertyChanged(); }
        }

        private Model.DONVITINH _SelectedItem;

        public Model.DONVITINH SelectedItem
        {
            get { return _SelectedItem; }
            set { _SelectedItem = value; OnPropertyChanged(); }
        }

        #region Commands
        public ICommand Delete_Command { get; set; }
        public ICommand Restore_Command { get; set; }
        public ICommand Del_Command { get; set; }
        public ICommand Res_Command { get; set; }
        public ICommand AddRDList_Command { get; set; }
        public ICommand RemoveRDList_Command { get; set; }
        public ICommand DeleteShow_Command { get; set; }
        public ICommand RestoreShow_Command { get; set; }
        public ICommand DelShow_Command { get; set; }
        public ICommand ResShow_Command { get; set; }
        public ICommand Sort_Command { get; set; }
        #endregion

        #region Dialog
        private bool _Openres;

        public bool Openres
        {
            get { return _Openres; }
            set { _Openres = value; OnPropertyChanged(); }
        }

        private bool _Opendel;

        public bool Opendel
        {
            get { return _Opendel; }
            set { _Opendel = value; OnPropertyChanged(); }
        }

        private bool _Openrestore;

        public bool Openrestore
        {
            get { return _Openrestore; }
            set { _Openrestore = value; OnPropertyChanged(); }
        }

        private bool _Opendelete;

        public bool Opendelete
        {
            get { return _Opendelete; }
            set { _Opendelete = value; OnPropertyChanged(); }
        }

        private string _Content;

        public string Content
        {
            get { return _Content; }
            set { _Content = value; OnPropertyChanged(); }
        }


        public ICommand CloseDialog_Command { get; set; }
        #endregion

        public Donvi_Deleted_ViewModel()
        {
            List = new ObservableCollection<Model.DONVITINH>(Model.DataProvider.Ins.DB.DONVITINHs.Where(x => x.IsDeleted == true));
            RDList = new ObservableCollection<Model.DONVITINH>();

            Opendel = false;
            Openres = false;
            Opendelete = false;
            Openrestore = false;

            Content = string.Empty;
            SelectedItem = null;

            CloseDialog_Command = new RelayCommand<MaterialDesignThemes.Wpf.DialogHost>(p =>
            {
                return true;
            }, p =>
            {
                p.IsOpen = false;
            });

            #region Khoi phuc/ Xoa 1 dong
            DeleteShow_Command = new RelayCommand<Button>(p =>
            {
                if (Openrestore == true || Opendelete == true||Openres==true||Opendel==true)
                    return false;

                return true;
            }, p =>
            {
                Opendelete = true;
                Content = " Xóa vĩnh viễn bản ghi này";

                string id = p.Uid.ToString();
                SelectedItem = Model.DataProvider.Ins.DB.DONVITINHs.Where(x => x.ma_donvi == id).SingleOrDefault();
            });

            RestoreShow_Command = new RelayCommand<Button>(p =>
            {
               if (Openrestore == true || Opendelete == true||Openres==true||Opendel==true)
                    return false;

                return true;
            }, p =>
            {
                Openrestore = true;
                Content = " Khôi phục bản ghi này";

                string id = p.Uid.ToString();
                SelectedItem = Model.DataProvider.Ins.DB.DONVITINHs.Where(x => x.ma_donvi == id).SingleOrDefault();
            });

            Delete_Command = new RelayCommand<Button>(p =>
            {
                return true;
            }, p =>
            {
                Model.Donvitinh_Service.Delete(SelectedItem);
                Model.DataProvider.Ins.DB.SaveChanges();

                List.Remove(SelectedItem);
                Opendelete = false;
            });

            Restore_Command = new RelayCommand<Button>(p =>
            {
                return true;
            }, p =>
            {
                SelectedItem.IsDeleted = false;
                Model.DataProvider.Ins.DB.SaveChanges();

                List.Remove(SelectedItem);
                Openrestore = false;
            });
            #endregion

            #region Khoi phuc / Xoa nhieu dong

            AddRDList_Command = new RelayCommand<CheckBox>(p =>
            {
                return true;
            }, p =>
            {
                RDList.Add(List.Where(x => x.ma_donvi == p.Uid.ToString()).SingleOrDefault());
            });

            RemoveRDList_Command = new RelayCommand<CheckBox>(p =>
            {
                return true;
            }, p =>
            {
                RDList.Remove(List.Where(x => x.ma_donvi == p.Uid.ToString()).SingleOrDefault());
            });

            ResShow_Command = new RelayCommand<object>(p => 
            {
                if (RDList.Count() == 0)
                    return false;

                if (Openrestore == true || Opendelete == true || Openres == true || Opendel == true)
                    return false;

                return true;
            }, p => 
            {
                Openres = true;
                Content = " Khôi phục tất cả các bản ghi được chọn";
            });

            Res_Command = new RelayCommand<object>(p =>
            {
                if (RDList.Count() == 0)
                    return false;

                return true;
            }, p =>
            {
                    Restone_IteminDb();
                    RemoveIteminList();

                    RDList = new ObservableCollection<Model.DONVITINH>();
                    Openres = false;
            });

            DelShow_Command = new RelayCommand<object>(p =>
            {
                if (RDList.Count() == 0)
                    return false;

                if (Openrestore == true || Opendelete == true || Openres == true || Opendel == true)
                    return false;

                return true;
            }, p =>
            {
                Opendel = true;
                Content = " Xóa vĩnh viễn tất cả các bản ghi được chọn";
            });

            Del_Command = new RelayCommand<object>(p =>
            {
                if (RDList.Count() == 0)
                    return false;

                return true;
            }, p =>
            {
                    Removeforever_IteminDb();
                    RemoveIteminList();

                    RDList = new ObservableCollection<Model.DONVITINH>();
                    Opendel = false;
            });
            #endregion

            #region Phan sap xep

            Sort_Command = new RelayCommand<object>(p =>
            {
                if (List.Count() == 0)
                    return false;

                return true;
            }, p =>
            {
                ObservableCollection<Model.DONVITINH> chkList = new ObservableCollection<Model.DONVITINH>(List.OrderByDescending(x => x.ten_donvi));

                if (List[0] == chkList[0])
                {
                    List = new ObservableCollection<Model.DONVITINH>(List.OrderBy(x => x.ten_donvi));
                }
                else
                {
                    List = new ObservableCollection<Model.DONVITINH>(chkList);
                }
            });

            #endregion

        }

        #region Methods
        private void RemoveIteminList()
        {
            for (int i = 0; i < List.Count(); i++)
            {
                while (RDList.Where(x => x == List[i]).Count() != 0)
                {
                    if (List[i] == List[List.Count() - 1])
                    {
                        List.Remove(List[i]);
                        break;
                    }
                    else
                    {
                        List.Remove(List[i]);
                    }
                };
            }
        }

        private void Restone_IteminDb()
        {
            for (int i = 0; i < RDList.Count(); i++)
            {
                foreach (var item in Model.DataProvider.Ins.DB.DONVITINHs.ToList())
                {
                    while (item == RDList[i])
                    {
                        item.IsDeleted = false;
                        Model.DataProvider.Ins.DB.SaveChanges();
                        break;
                    }
                }
            }

        }

        private void Removeforever_IteminDb()
        {
            for (int i = 0; i < RDList.Count(); i++)
            {
                foreach (var item in Model.DataProvider.Ins.DB.DONVITINHs)
                {
                    while (item == RDList[i])
                    {
                        Model.Donvitinh_Service.Delete(item);
                        break;
                    }
                }
            }
            Model.DataProvider.Ins.DB.SaveChanges();
        }
        #endregion
    }
}
