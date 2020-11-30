using System;
using System.Collections.Generic;

namespace Application.Mobile
{
    public class TemplateTrainer
    {
        //when and what
        public Guid id;

        public List<SThemes> themes = new List<SThemes>();

        public TemplateTrainer(Guid id)
        {
            this.id = id;
        }
    }

    public class SThemes{

                public Guid id;
                public string title;
                public List<SCriterion> criteria = new List<SCriterion>();

        public SThemes(Guid id, string title)
        {
            this.id = id;
            this.title = title;
        }
    }

    public class SCriterion{
        public Guid id;
        public string title;

        public SCriterion(Guid id, string title)
        {
            this.id = id;
            this.title = title;
        }
    }
}