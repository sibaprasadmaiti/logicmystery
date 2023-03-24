<div class="inner-content"><b>pre-installation check</b> &raquo; license &raquo; configuration &raquo; completed</div>
<h2 id="install"><img src="img/pre-install.png" alt="" />Pre-installation check</h2>
<div class="item-desc">
  <h3>1. Server configuration</h3>
  If any of these items are highlighted in red then please take actions to correct them. Failure to do so could lead to your installation not functioning correctly. </div>
<table class="myTable">
  <thead>
    <tr>
      <th class="header"><b>PHP Settings</b></th>
      <th class="header"><b>Current Settings</b></th>
      <th class="header"><b>Required Settings</b></th>
      <th class="header"><b>Status</b></th>
    </tr>
  </thead>
  <tr>
    <td>PHP Version:</td>
    <td><?php echo phpversion(); ?></td>
    <td>5.2+</td>
    <td><?php echo (phpversion() >= '5.2') ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>Register Globals:</td>
    <td><?php echo (ini_get('register_globals')) ? 'On' : 'Off'; ?></td>
    <td>Off</td>
    <td><?php echo (!ini_get('register_globals')) ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>Magic Quotes GPC:</td>
    <td><?php echo (ini_get('magic_quotes_gpc')) ? 'On' : 'Off'; ?></td>
    <td>Off</td>
    <td><?php echo (!ini_get('magic_quotes_gpc')) ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>File Uploads:</td>
    <td><?php echo (ini_get('file_uploads')) ? 'On' : 'Off'; ?></td>
    <td>On</td>
    <td><?php echo (ini_get('file_uploads')) ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>Session Auto Start:</td>
    <td><?php echo (ini_get('session_auto_start')) ? 'On' : 'Off'; ?></td>
    <td>Off</td>
    <td><?php echo (!ini_get('session_auto_start')) ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
</table>
<div class="item-desc">
  <h3>2. Server Extensions</h3>
  These settings are recommended for PHP in order to ensure full compatibility with Exam Board.
  However, Exam Board will still operate if your settings do not quite match the recommended.</div>
<table class="myTable">
  <thead>
    <tr>
      <th><b>Extension</b></th>
      <th><b>Current Settings</b></th>
      <th><b>Required Settings</b></th>
      <th><b>Status</b></th>
    </tr>
  </thead>
  <tr>
    <td>MySQL:</td>
    <td><?php echo extension_loaded('mysql') ? 'On' : 'Off'; ?></td>
    <td>On</td>
    <td><?php echo extension_loaded('mysql') ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>GD:</td>
    <td><?php echo extension_loaded('gd') ? 'On' : 'Off'; ?></td>
    <td>On</td>
    <td><?php echo extension_loaded('gd') ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>ZIP:</td>
    <td><?php echo extension_loaded('zlib') ? 'On' : 'Off'; ?></td>
    <td>On</td>
    <td><?php echo extension_loaded('zlib') ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>DOMDocument:</td>
    <td><?php echo class_exists('DOMDocument') ? 'On' : 'Off'; ?></td>
    <td>On</td>
    <td><?php echo class_exists('DOMDocument') ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>Zlib:</td>
    <td><?php echo function_exists('gzcompress') ? 'On' : 'Off'; ?></td>
    <td>On</td>
    <td><?php echo function_exists('gzcompress') ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
  <tr>
    <td>cURL:</td>
    <td><?php echo extension_loaded('curl') ? 'On' : 'Off'; ?></td>
    <td>On</td>
    <td><?php echo extension_loaded('curl') ? '<img src="img/yes.png" alt="Good" />' : '<img src="img/no.png" alt="Bad" />'; ?></td>
  </tr>
</table>
<div class="item-desc">
  <h3>3. Directory &amp; File Permissions</h3>
  In order for Exam Board to function correctly it needs to be able to access or write to certain files or directories. If you see "Unwriteable" you need to change the permissions on the file or directory to allow Exam Board to write to it. </div>
<table class="myTable">
  <?php
			getWritableCell('lib');
		?>
  <?php
			getWritableCell('uploads');
		?>
  <?php
			getWritableCell('uploads'.CMS_DS.'data');
		?>
  <?php
			getWritableCell('uploads'.CMS_DS.'formdata');
		?>
  <?php
			getWritableCell('uploads'.CMS_DS.'tempfiles');
		?>
</table>
<div class="btn lgn">
  <button type="button" onclick="document.location.href='install.php';" name="check">Check</button>
  &nbsp;&nbsp;
  <button type="button" onclick="document.location.href='install.php?step=1';" name="next" tabindex="3" >Next</button>
</div>