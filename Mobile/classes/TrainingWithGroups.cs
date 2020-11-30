using System;
using System.Collections.Generic;
using Domain;

namespace Application.Mobile
{


    public class TrainingWithGroups {
        public String name;
        public Guid id;
        public DateTime date;

        public DateTime endDate;

        public List<GroupWConsultants> groups = new List<GroupWConsultants>();

        public bool evaluated = false; 

        public TrainingWithGroups(string name, Guid id, DateTime date, DateTime endDate, List<GroupWConsultants> groups = null)
        {
            this.name = name;
            this.id = id;
            this.date = date;
            this.groups = groups;
            this.endDate = endDate;
        }
    }

    public class GroupWConsultants {
        public String name;
        public Guid groupId;
        public Guid gbtId;

        public string code;

        public List<SUser> trainers = new List<SUser>();
        public List<SUser> consultants;

        public bool evaluated;

        public GroupWConsultants(string name, Guid groupId, Guid gbtId, string code, List<SUser> consultants = null)
        {
            this.name = name;
            this.groupId = groupId;
            this.gbtId = gbtId;
            this.consultants = consultants;
            this.code = code;
        }
    }

    public class SUser {
        public String id;
        public String displayName;
        public String name = null;
        public String lastName = null;

        public String email;
        public String phoneNumber;

        public bool evaluated = false;

        public SUser(string id, string displayName, string name, string lastName, string email, String phoneNumber)
        {
            this.id = id;
            this.displayName = displayName;
            this.name = name;
            this.lastName = lastName;
            this.email = email;
            this.phoneNumber = phoneNumber;
        }
    }
}