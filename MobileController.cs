using System.Collections.Generic;
using System.Threading.Tasks;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Application.Mobile;
using Domain;
using System;
using System.Net.Http;

namespace API.Controllers
{
    public class MobileController : BaseController
    {
        [AllowAnonymous]
        [HttpGet("trainings/{idFormer}")]
        public async Task<ActionResult<List<TrainingWithGroups>>> TrainingsWithGroupsFormer(string idFormer)
        {
            return await Mediator.Send(new TrainingsWithGroups.Query { idFormer = idFormer });
        }

        [AllowAnonymous]
        [HttpGet("trainingsJury/{idJury}")]
        public async Task<ActionResult<List<TrainingWithGroups>>> TrainingsWithGroupsJury(string idJury)
        {
            return await Mediator.Send(new TrainingsWithGroupsJury.Query { idJury = idJury });
        }

        [AllowAnonymous]
        [HttpGet("templateTrainer")]
        public async Task<ActionResult<TemplateTrainer>> GetTemplate()
        {
            return await Mediator.Send(new GetTemplate.Query { });
        }

        [AllowAnonymous]
        [HttpGet("templateJury")]
        public async Task<ActionResult<TemplateJury>> GetTemplateJury()
        {
            return await Mediator.Send(new GetTemplateJury.Query { });
        }

        [AllowAnonymous]
        [HttpGet("templatePeer")]
        public async Task<ActionResult<TemplateConsultantAssessment>> GetTemplatePeer()
        {
            return await Mediator.Send(new GetTemplatePeer.Query { });
        }

        [AllowAnonymous]
        [HttpGet("templateFeedback")]
        public async Task<ActionResult<List<Section>>> GetTemplateFeedback()
        {
            return await Mediator.Send(new GetTemplateFeedback.Query { });
        }

        [AllowAnonymous]
        [HttpPost("submitAssessmentTrainer")]
        public async Task<ActionResult<Unit>> SubmitAssessmentTrainer(SubmitAssessmentTrainer.Query query)
        {
            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpPost("submitAssessmentJury")]
        public async Task<ActionResult<Unit>> SubmitAssessmentJury(SubmitAssessmentJury.Query query)
        {
            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpPost("submitAssessmentPR")]
        public async Task<SelfandPeerAssessment> SubmitAssessmentPR(SubmitPeerAssessment.Query query)
        {
            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpPost("submitAssessmentF")]
        public async Task<Feedback> SubmitAssessmentF(SubmitFeedback.Query query)
        {
            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpPost("deleteAssessment")]
        public async Task<ActionResult<Unit>> DeleteAssessment(DeleteAssessment.Query query)
        {

            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpPost("deleteAssessmentJury")]
        public async Task<ActionResult<Unit>> DeleteAssessmentJury(DeleteAssessmentJury.Query query)
        {

            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpPost("deletePeerReview")]
        public async Task<ActionResult<Unit>> DeletePeerReview(DeletePeerReview.Query query)
        {

            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpPost("deleteFeedback")]
        public async Task<ActionResult<Unit>> deleteFeedback(DeleteFeedback.Query query)
        {

            return await Mediator.Send(query);
        }

        [AllowAnonymous]
        [HttpGet("getTrainingsCA/{idC}")]
        public async Task<List<TrainingWithGroups>> GetTrainingsPeers(string idC)
        {
            return await Mediator.Send(new GetTrainingsPeers.Query { idC = idC });
        }

        [AllowAnonymous]
        [HttpGet("getTrainingsF/{idC}")]
        public async Task<List<TrainingWithGroups>> GetTrainingsFeedback(string idC)
        {
            return await Mediator.Send(new GetTrainingsFeedback.Query { idC = idC });
        }

        [AllowAnonymous]
        [HttpGet("listPlanningsC/{idC}")]
        public async Task<List<Planning>> ListPlanningsC(string idC)
        {
            return await Mediator.Send(new ListPlanningsC.Query { idC = idC });
        }

        [AllowAnonymous]
        [HttpGet("listPlanningsF/{idF}")]
        public async Task<List<Planning>> ListPlanningsF(string idF)
        {
            return await Mediator.Send(new ListPlanningsF.Query { idFormer = idF });
        }

        [AllowAnonymous]
        [HttpGet("listPlanningsJ/{idJ}")]
        public async Task<List<GroupByTraining>> ListPlanningsJ(string idJ)
        {
            return await Mediator.Send(new ListPlanningsJ.Query { idJury = idJ });
        }

        [AllowAnonymous]
        [HttpGet("getPicture/{id}")]
        public async Task<Image> ProfilePicture(string id)
        {
            return await Mediator.Send(new ProfilePicture.Query { id = id });
        }

        // [AllowAnonymous]
        // [HttpPost("uploadDocument")]
        // public async Task<string> uploadDocuments(UploadDocument.Query query)
        // {
        //     return await Mediator.Send(query);
        // }

        [AllowAnonymous]
        [HttpGet("getDocuments/{idC}")]
        public async Task<List<Training>> GetDocuments(string idC)
        {
            return await Mediator.Send(new GetDocuments.Query { idC = idC });
        }

        [AllowAnonymous]
        [HttpGet("getFileDocument/{idDoc}")]
        public async Task<FileStreamResult> GetFileDocument(Guid idDoc)
        {
            return await Mediator.Send(new GetFileDocument.Query{idDoc = idDoc});
        }


    }
}