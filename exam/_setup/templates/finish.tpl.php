<div class="inner-content">pre-installation check &raquo; license &raquo; configuration &raquo; <b>completed</b></div>
<h2 id="install"><img src="img/finish.png" alt="" />Installation completed</h2>
<div class="item-desc">
  <h3>Installation log:</h3>
  A copy of the configuration file will be downloaded to your computer when you click the button 'Download config.ini.php'. You should upload this file to the same directory where you have Exam Board. Once this is done you should log in using the admin credentials you provided on the previous form and configure the software according to your needs.
  <p style="font-weight: bold;">Thank you for choosing Exam Board.</p>
</div>
<table class="myTable">
  <tr>
    <td width="150" class="elem">Database Installation</td>
    <td align="left"><?php if ($msg):?>
      <?php echo '<span class="no">Error during MySQL queries execution:</span><br />'; ?> <?php echo $msg; ?>
      <?php else : ?>
      <?php echo '<span class="yes">OK</span>'; ?>
      <?php endif; ?></td>
  </tr>
  <tr>
    <td class="elem">Configuration File</td>
    <td align="left">Available for download<br />
      If there was a problem creating config file, you MUST save config.inc.php file to your local PC and then upload to Exam Board <strong>lib</strong> directory. <a href="javascript:void(0);" onclick="if (document.getElementById('file_content').style.display=='block') { document.getElementById('file_content').style.display='none';} else {document.getElementById('file_content').style.display='block'}">Click here</a> to view the content of config.ini.php file.<br />
      <div style="margin: 10px 0; text-align: center;">
        <input type="button" onclick="document.location.href='safe_config.php?h=<?php echo $_POST['dbhost'].'&u='.$_POST['dbuser'].'&p='.$_POST['dbpwd'].'&n='.$_POST['dbname'];?>';" value="Download config.ini.php" />
      </div></td>
  </tr>
  <tr>
    <td colspan="2"><div style="display:none;border: 1px solid #777; width: 423px; height: 400px; background-color: #ededed; padding:10px;overflow:auto;" id="file_content">
        <?php if (is_callable("highlight_string")):?>
        <?php highlight_string(safeConfig($_POST['dbhost'] , $_POST['dbuser'], $_POST['dbpwd'], $_POST['dbname']));?>
        <?php endif;?>
      </div></td>
  </tr>
</table>
<div class="remove_install">Now you MUST completely remove 'setup' directory from your server.<br />
  Please for security reasons chmod your /lib/ directory to 0755.</div>
<div class="btn lgn">
  <button type="button" onclick="history.go(-1);" name="check">Back</button>
  &nbsp;&nbsp;
  <button type="button" onclick="document.location.href='../admin/';" name="next" tabindex="3">Admin</button>
</div>