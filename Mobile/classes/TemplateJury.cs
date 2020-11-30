using System;
using System.Collections.Generic;

namespace Application.Mobile
{
    public class TemplateJury
    {
        //when and what
        public Guid id;

        public List<JThemes> themes = new List<JThemes>();

        public TemplateJury(Guid id)
        {
            this.id = id;
        }
    }

    public class JThemes{

                public Guid id;
                public string title;
                public List<JCriterion> criteria = new List<JCriterion>();

        public JThemes(Guid id, string title)
        {
            this.id = id;
            this.title = title;
        }
    }

    public class JCriterion{
        public Guid id;
        public string title;

        public JCriterion(Guid id, string title)
        {
            this.id = id;
            this.title = title;
        }
    }
}