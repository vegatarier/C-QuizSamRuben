//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EindopdrachtProg5RubenSam
{
    using System;
    using System.Collections.Generic;
    
    public partial class Vraag
    {
        public Vraag()
        {
            this.Antwoords = new HashSet<Antwoord>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Category { get; set; }
        public int QuizId { get; set; }
    
        public virtual ICollection<Antwoord> Antwoords { get; set; }
        public virtual Quiz Quiz { get; set; }
    }
}