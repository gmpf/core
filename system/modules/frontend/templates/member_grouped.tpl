
<!-- indexer::stop -->
<div class="<?php echo $this->class; ?><?php if (!$this->tableless): ?> tableform<?php endif; ?> block"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>

<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>

<form action="<?php echo $this->action; ?>" id="<?php echo $this->formId; ?>" method="post" enctype="<?php echo $this->enctype; ?>">
<div class="formbody">
<input type="hidden" name="FORM_SUBMIT" value="<?php echo $this->formId; ?>" />
<?php if ($this->personal): ?>
<fieldset>
<legend><?php echo $this->personalData; ?></legend>
<?php if (!$this->tableless): ?>
<table>
<?php endif; ?>
<?php foreach ($this->personal as $field) echo $field; ?>
<?php if (!$this->tableless): ?>
</table>
<?php endif; ?>
</fieldset>
<?php endif; ?>
<?php if ($this->address): ?>
<fieldset>
<legend><?php echo $this->addressDetails; ?></legend>
<?php if (!$this->tableless): ?>
<table>
<?php endif; ?>
<?php foreach ($this->address as $field) echo $field; ?>
<?php if (!$this->tableless): ?>
</table>
<?php endif; ?>
</fieldset>
<?php endif; ?>
<?php if ($this->contact): ?>
<fieldset>
<legend><?php echo $this->contactDetails; ?></legend>
<?php if (!$this->tableless): ?>
<table>
<?php endif; ?>
<?php foreach ($this->contact as $field) echo $field; ?>
<?php if (!$this->tableless): ?>
</table>
<?php endif; ?>
</fieldset>
<?php endif; ?>
<?php if ($this->login): ?>
<fieldset>
<legend><?php echo $this->loginDetails; ?></legend>
<?php if (!$this->tableless): ?>
<table>
<?php endif; ?>
<?php foreach ($this->login as $field) echo $field; ?>
<?php if (!$this->tableless): ?>
</table>
<?php endif; ?>
</fieldset>
<?php endif; ?>
<?php if ($this->profile): ?>
<fieldset>
<legend><?php echo $this->profileDetails; ?></legend>
<?php if (!$this->tableless): ?>
<table>
<?php endif; ?>
<?php foreach ($this->profile as $field) echo $field; ?>
<?php if (!$this->tableless): ?>
</table>
<?php endif; ?>
</fieldset>
<?php endif; ?>
<?php if ($this->newsletter): ?>
<fieldset>
<legend><?php echo $this->newsletterDetails; ?></legend>
<?php if (!$this->tableless): ?>
<table>
<?php endif; ?>
<?php foreach ($this->newsletter as $field) echo $field; ?>
<?php if (!$this->tableless): ?>
</table>
<?php endif; ?>
</fieldset>
<?php endif; ?>
<?php if ($this->helpdesk): ?>
<fieldset>
<legend><?php echo $this->helpdeskDetails; ?></legend>
<?php if (!$this->tableless): ?>
<table>
<?php endif; ?>
<?php foreach ($this->helpdesk as $field) echo $field; ?>
<?php if (!$this->tableless): ?>
</table>
<?php endif; ?>
</fieldset>
<?php endif; ?>
<?php if ($this->captcha): ?>
<fieldset>
<legend><?php echo $this->captchaDetails; ?></legend>
<?php if (!$this->tableless): ?>
<table>
<?php endif; ?>
<?php echo $this->captcha; ?>
<?php if (!$this->tableless): ?>
</table>
<?php endif; ?>
</fieldset>
<?php endif; ?>
<div class="submit_container">
  <input type="submit" class="submit" value="<?php echo $this->slabel; ?>" />
</div>
</div>
</form>
<?php if ($this->hasError): ?>

<script>
window.scrollTo(null, ($('<?php echo $this->formId; ?>').getElement('p.error').getPosition().y - 20));
</script>
<?php endif; ?>

</div>
<!-- indexer::continue -->
