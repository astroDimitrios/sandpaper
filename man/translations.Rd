% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-translate.R
\docType{data}
\name{these}
\alias{these}
\alias{translations}
\alias{establish_translation_vars}
\alias{set_language}
\alias{tr_src}
\alias{tr_get}
\alias{tr_varnish}
\alias{tr_computed}
\title{Establish and Manage Translation Strings}
\format{
An object of class \code{environment} of length 1.
}
\usage{
these

establish_translation_vars()

set_language(lang = NULL)

tr_src(from = "varnish", key = NULL)

tr_get(from = "varnish", key = NULL)

tr_varnish(key = NULL)

tr_computed(key = NULL)
}
\arguments{
\item{lang}{a two-letter language code (optionally with a country code).
Defaults to \code{NULL}, which falls back to English (the language of the
source code).}

\item{from}{a single character specifying the translation list to fetch.
This defaults to "varnish" but can be one of the following:
\itemize{
\item src
\item varnish
\item computed
}}

\item{key}{a single character specifying a specific key to fetch from the
translation list. This defaults to \code{NULL}, returning the whole list.}
}
\value{
if \code{key = NULL}, a list if \code{key} is a single character, the result
will be an unnamed character vector of length 1 representing the value from
that list.
}
\description{
This is documentation for internal functions for translation. If you want a
guide to providing translations, please read \code{vignette("translations", package = "sandpaper")}
}
\details{
A page generated from \code{{sandpaper}} is made up of user-provided
content wrapped into templated HTML provided by \code{{varnish}}. Since users can
provide content in any human language that can be processed by computer,
\code{{sandpaper}} must have a method to match the template content to the
language of the content. These translations are added to the source of
\code{{sandpaper}} by volunteers using the \code{{potools}} package.

Template content strings are stored in the \verb{$translations} element of the
\code{these} global environment variable, which is generated by the
\code{establish_translation_vars()} function, which is run every time
\code{{sandpaper}} is loaded. The \verb{$translations} element consists of three
lists:
\itemize{
\item \code{varnish}: a list of translated strings that are passed directly
to \code{{varnish}}
\item \code{computed}: a list of translated strings that are incorporated into
the HTML content before it is passed to \code{{varnish}}.
\item \code{src}: a source list of the above two lists that serves as the source
of the translations.
}

Whenever a lesson is built, the function \code{set_language()} will read the
\code{lang} item from the \code{config.yaml} and apply translations to
\code{these$translations$varnish} and \code{these$translations$computed} before the
lesson is generated or updated.
\subsection{List of Translation Variables}{

There are 62 translations generated by
\code{set_language()} that correspond to the following variables in \code{{varnish}}:\tabular{ll}{
   variable \tab string \cr
   \code{translate.SkipToMain} \tab \code{'Skip to main content'} \cr
   \code{translate.iPreAlpha} \tab \code{'Pre-Alpha'} \cr
   \code{translate.PreAlphaNote} \tab \code{'This lesson is in the pre-alpha phase, which means that it is in early development, but has not yet been taught.'} \cr
   \code{translate.AlphaNote} \tab \code{'This lesson is in the alpha phase, which means that it has been taught once and lesson authors are iterating on feedback.'} \cr
   \code{translate.iAlpha} \tab \code{'Alpha'} \cr
   \code{translate.BetaNote} \tab \code{'This lesson is in the beta phase, which means that it is ready for teaching by instructors outside of the original author team.'} \cr
   \code{translate.iBeta} \tab \code{'Beta'} \cr
   \code{translate.PeerReview} \tab \code{'This lesson has passed peer review.'} \cr
   \code{translate.InstructorView} \tab \code{'Instructor View'} \cr
   \code{translate.LearnerView} \tab \code{'Learner View'} \cr
   \code{translate.MainNavigation} \tab \code{'Main Navigation'} \cr
   \code{translate.ToggleNavigation} \tab \code{'Toggle Navigation'} \cr
   \code{translate.ToggleDarkMode} \tab \code{'Toggle theme (auto)'} \cr
   \code{translate.Menu} \tab \code{'Menu'} \cr
   \code{translate.SearchButton} \tab \code{'Search the All In One page'} \cr
   \code{translate.Setup} \tab \code{'Setup'} \cr
   \code{translate.KeyPoints} \tab \code{'Key Points'} \cr
   \code{translate.InstructorNotes} \tab \code{'Instructor Notes'} \cr
   \code{translate.Glossary} \tab \code{'Glossary'} \cr
   \code{translate.LearnerProfiles} \tab \code{'Learner Profiles'} \cr
   \code{translate.More} \tab \code{'More'} \cr
   \code{translate.LessonProgress} \tab \code{'Lesson Progress'} \cr
   \code{translate.CloseMenu} \tab \code{'close menu'} \cr
   \code{translate.EPISODES} \tab \code{'EPISODES'} \cr
   \code{translate.Home} \tab \code{'Home'} \cr
   \code{translate.HomePageNav} \tab \code{'Home Page Navigation'} \cr
   \code{translate.RESOURCES} \tab \code{'RESOURCES'} \cr
   \code{translate.ExtractAllImages} \tab \code{'Extract All Images'} \cr
   \code{translate.AIO} \tab \code{'See all in one page'} \cr
   \code{translate.DownloadHandout} \tab \code{'Download Lesson Handout'} \cr
   \code{translate.ExportSlides} \tab \code{'Export Chapter Slides'} \cr
   \code{translate.PreviousAndNext} \tab \code{'Previous and Next Chapter'} \cr
   \code{translate.Previous} \tab \code{'Previous'} \cr
   \code{translate.EstimatedTime} \tab \code{'Estimated time: {icons$clock} {minutes} minutes'} \cr
   \code{translate.Next} \tab \code{'Next'} \cr
   \code{translate.NextChapter} \tab \code{'Next Chapter'} \cr
   \code{translate.LastUpdate} \tab \code{'Last updated on {updated}'} \cr
   \code{translate.EditThisPage} \tab \code{'Edit this page'} \cr
   \code{translate.ExpandAllSolutions} \tab \code{'Expand All Solutions'} \cr
   \code{translate.SetupInstructions} \tab \code{'Setup Instructions'} \cr
   \code{translate.DownloadFiles} \tab \code{'Download files required for the lesson'} \cr
   \code{translate.ActualScheduleNote} \tab \code{'The actual schedule may vary slightly depending on the topics and exercises chosen by the instructor.'} \cr
   \code{translate.BackToTop} \tab \code{'Back To Top'} \cr
   \code{translate.SpanToTop} \tab \code{'<(Back)> To Top'} \cr
   \code{translate.ThisLessonCoC} \tab \code{'This lesson is subject to the <(Code of Conduct)>'} \cr
   \code{translate.CoC} \tab \code{'Code of Conduct'} \cr
   \code{translate.EditOnGH} \tab \code{'Edit on GitHub'} \cr
   \code{translate.Contributing} \tab \code{'Contributing'} \cr
   \code{translate.Source} \tab \code{'Source'} \cr
   \code{translate.Cite} \tab \code{'Cite'} \cr
   \code{translate.Contact} \tab \code{'Contact'} \cr
   \code{translate.About} \tab \code{'About'} \cr
   \code{translate.MaterialsLicensedUnder} \tab \code{'Materials licensed under <({license})> by the authors'} \cr
   \code{translate.TemplateLicense} \tab \code{'Template licensed under <(CC-BY 4.0)> by {template_authors}'} \cr
   \code{translate.Carpentries} \tab \code{'The Carpentries'} \cr
   \code{translate.BuiltWith} \tab \code{'Built with {sandpaper_link}, {pegboard_link}, and {varnish_link}'} \cr
   \code{translate.ExpandAllSolutions} \tab \code{'Expand All Solutions'} \cr
   \code{translate.CollapseAllSolutions} \tab \code{'Collapse All Solutions'} \cr
   \code{translate.Collapse} \tab \code{'Collapse'} \cr
   \code{translate.Episodes} \tab \code{'Episodes'} \cr
   \code{translate.GiveFeedback} \tab \code{'Give Feedback'} \cr
   \code{translate.LearnMore} \tab \code{'Learn More'} \cr
}


In addition, there are 27 translations
that are inserted \emph{before} they get to \code{{varnish}}:\tabular{ll}{
   variable \tab string \cr
   \code{OUTPUT} \tab \code{'OUTPUT'} \cr
   \code{WARNING} \tab \code{'WARNING'} \cr
   \code{ERROR} \tab \code{'ERROR'} \cr
   \code{Overview} \tab \code{'Overview'} \cr
   \code{Questions} \tab \code{'Questions'} \cr
   \code{Objectives} \tab \code{'Objectives'} \cr
   \code{Callout} \tab \code{'Callout'} \cr
   \code{Challenge} \tab \code{'Challenge'} \cr
   \code{Prereq} \tab \code{'Prerequisite'} \cr
   \code{Checklist} \tab \code{'Checklist'} \cr
   \code{Discussion} \tab \code{'Discussion'} \cr
   \code{Testimonial} \tab \code{'Testimonial'} \cr
   \code{Caution} \tab \code{'Caution'} \cr
   \code{Keypoints} \tab \code{'Key Points'} \cr
   \verb{Show me the solution} \tab \code{'Show me the solution'} \cr
   \verb{Give me a hint} \tab \code{'Give me a hint'} \cr
   \verb{Show details} \tab \code{'Show details'} \cr
   \verb{Instructor Note} \tab \code{'Instructor Note'} \cr
   \code{SummaryAndSetup} \tab \code{'Summary and Setup'} \cr
   \code{SummaryAndSchedule} \tab \code{'Summary and Schedule'} \cr
   \code{AllInOneView} \tab \code{'All in One View'} \cr
   \code{PageNotFound} \tab \code{'Page not found'} \cr
   \code{AllImages} \tab \code{'All Images'} \cr
   \code{Anchor} \tab \code{'anchor'} \cr
   \code{Figure} \tab \code{'Figure {element}'} \cr
   \code{ImageOf} \tab \code{'Image {i} of {n}: {sQuote(txt)}'} \cr
   \code{Finish} \tab \code{'Finish'} \cr
}

}
}
\examples{
# When sandpaper is loaded, these functions return English
snd <- asNamespace("sandpaper")
head(snd$tr_varnish())
head(snd$tr_computed())

# Setting language to Spanish will translate the computed and varnish
snd$set_language("es")
head(snd$tr_varnish())
head(snd$tr_computed())

# The source will remain the same
head(snd$tr_src("varnish"))
head(snd$tr_src("computed"))

# Running set_language with no arguments defaults to English
snd$set_language()
head(snd$tr_varnish())
head(snd$tr_computed())
}
\seealso{
\code{\link[=known_languages]{known_languages()}} for a list of known language codes.
}
\keyword{internal}
