//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLK_Dn.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class TAIKHOAN
    {
        public string ma_taikhoan { get; set; }
        public string ten_taikhoan { get; set; }
        public string matkhau { get; set; }
        public string email { get; set; }
        public string ma_nhanvien { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    
        public virtual NHANVIEN NHANVIEN { get; set; }
    }
}