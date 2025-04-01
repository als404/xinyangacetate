{'!FetchIt' | snippet : [
  'snippet' => 'FormIt',
  'form' => 'tpl.form.feedback',
  'hooks' => 'spam,email,FormItSaveForm',
  'formFields' => 'name,email,subject,message',
  'fieldNames' => 'name==Имя,email==Email,subject==Тема сообщения, message==Сообщение',
  'validate' => '
      name:required:maxLength=^50^,
      email:email:required,
      subject:required,
      message:required:minLength=^10^,
      first-name:blank,
      workemail:blank',
  'emailTpl' => 'mailtpl.feedback',
  'emailTo' => $_modx->config.emailsender,
  'emailFrom' => $_modx->config.emailsender,
  'emailSubject' => 'Сообщение со страницы контакты на сайте ' ~ $_modx->config.site_name,
  'successMessage' => '<div class="sent-message">Ваше сообщение было отправлено. Спасибо!</div>',
  'validationErrorMessage' => '<div class="error-message">Произошла ошибка при отправке вашего сообщения.</div>'
]}