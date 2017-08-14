<script type="text/javascript">
  this_page="#temporadas";
</script>

<div class="navbar-header navbar-fixed-top" role="navigation">
	<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><img src="<?php echo base_url('css/images/logo.png'); ?>"></a>
	</div>

<ul class="nav navbar-right top-nav">
		<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
				<ul class="dropdown-menu message-dropdown">
						<li class="message-preview">
								<a href="#">
										<div class="media">
												<span class="pull-left">
														<img class="media-object" src="http://placehold.it/50x50" alt="">
												</span>
												<div class="media-body">
														<h5 class="media-heading"><strong>Reclutador 002 </strong>
														</h5>
														<p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
														<p>Lorem ipsum dolor sit amet, consectetur...</p>
												</div>
										</div>
								</a>
						</li>
						<li class="message-preview">
								<a href="#">
										<div class="media">
												<span class="pull-left">
														<img class="media-object" src="http://placehold.it/50x50" alt="">
												</span>
												<div class="media-body">
														<h5 class="media-heading"><strong>Reclutador 002 Smith</strong>
														</h5>
														<p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
														<p>Lorem ipsum dolor sit amet, consectetur...</p>
												</div>
										</div>
								</a>
						</li>
						<li class="message-preview">
								<a href="#">
										<div class="media">
												<span class="pull-left">
														<img class="media-object" src="http://placehold.it/50x50" alt="">
												</span>
												<div class="media-body">
														<h5 class="media-heading"><strong>Reclutador 002 </strong>
														</h5>
														<p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
														<p>Lorem ipsum dolor sit amet, consectetur...</p>
												</div>
										</div>
								</a>
						</li>
						<li class="message-footer">
								<a href="#">Read All New Messages</a>
						</li>
				</ul>
		</li>
		<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
				<ul class="dropdown-menu alert-dropdown">
						<li>
								<a href="#">¡Alerta! <span class="label label-default">¡UNA ALERTA!</span></a>
						</li>

				</ul>
		</li>
		<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Usuario <b class="caret"></b></a>
				<ul class="dropdown-menu">
						<li>
								<a href="#"><i class="fa fa-fw fa-user"></i> Perfil</a>
						</li>
						<li class="divider"></li>
						<li>
								<a href="#"><i class="fa fa-fw fa-power-off"></i> Salir</a>
						</li>
				</ul>
		</li>
</ul>
</div>


<div id="page-wrapper">

		<div class="container-fluid">
			<div class="row">

					<div class="col-lg-6  col-md-6">
							<div class="panel panel-yellow">
									<div class="panel-heading">
											<div class="row">
													<div class="col-xs-3">
															<i class="fa fa-calendar fa-5x"></i>
													</div>
													<div class="col-xs-9 text-right">
															<div class="huge">14</div>
															<div>Nuevas Entrevistas</div>
													</div>
											</div>
									</div>
									<a href="#">
											<div class="panel-footer">
													<span class="pull-left">Ver Detalles</span>
													<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
													<div class="clearfix"></div>
											</div>
									</a>
							</div>
					</div>
					<div class="col-lg-6  col-md-6">
							<div class="panel panel-red">
									<div class="panel-heading">
											<div class="row">
													<div class="col-xs-3">
															<i class="fa fa-thumb-tack fa-5x"></i>
													</div>
													<div class="col-xs-9 text-right">
															<div class="huge">8</div>
															<div>Colocaciones Exitosas</div>
													</div>
											</div>
									</div>
									<a href="#">
											<div class="panel-footer">
													<span class="pull-left">Ver Detalles</span>
													<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
													<div class="clearfix"></div>
											</div>
									</a>
							</div>
					</div>
			</div>

<h1>Empresa</h1>

 <div class="col-sm-3">

		<?= form_open('admin_home/valid_user/empresa', 'class="form_admin"');?>
		<fieldset>
			<legend>Agregar empresa</legend>
			<label>Nombre empresa
				<?= form_error('empresa_tit', '<br><span class="label label-danger">', '</span>'); ?>
			</label>
			<?= form_input('empresa_tit', $this->input->post('empresa_tit'));?>

			<label>Nombre contacto
			<?= form_error('empresa_contacto', '<br><span class="label label-danger">', '</span>'); ?>
			</label>
			<?= form_input('empresa_contacto', $this->input->post('empresa_contacto'));?>

			<label>Correo
			<?= form_error('empresa_mail', '<br><span class="label label-danger">', '</span>'); ?>
			</label>
			<?= form_input('empresa_mail', $this->input->post('empresa_mail'));?>

			<label>Contraseña
			<?= form_error('empresa_pass', '<br><span class="label label-danger">', '</span>'); ?>
			</label>
			<?= form_input('empresa_pass', $this->input->post('empresa_pass'));?>

			<label>Direccion
			<?= form_error('empresa_dir', '<br><span class="label label-danger">', '</span>'); ?>
			</label>
			<?= form_textarea('empresa_dir', $this->input->post('empresa_dir'));?>


			<?= form_submit('empresa_add', 'Agregar', 'class="btn btn-info btn-block"');?>
			</fieldset>
		<?= form_close();?>

  </div>

  	<div class="col-sm-9">
      <h3>Empresas</h3>
        <div class="table-responsive">
          <table class="table table-hover panel">
            <thead>
              <tr>
                <th>Empresa</th>
                <th>Contacto</th>
                <th>Correo</th>
                <th></th>
              </tr>
            </thead>
            <tbody>

                <? foreach ($empresa->result() as $e) { ?>
                 <tr>

                  <td><?= $e->empresa_tit ?></td>
                  <td><?= $e->empresa_contacto; ?></td>
                  <td><?= $e->empresa_mail; ?></td>
                  <td>
                    <div class="btn-group" role="group" aria-label="">
                    <a href="<?= site_Url(); ?>/admin_home/valid_user/empresa_users/<?= $e->empresa_id ?>" class="btn btn-default btn-xs borrar" alt="Asignar usarios">
                      <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                      <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                      <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
                    </a>
                    </div>
                  </td>

                </tr>
              <? }?>

            </tbody>
          </table>
        	<div class="txt_c"> <?= $this->pagination->create_links();?></div>
        </div>
 	 </div>

 </div></div>

   <script type="text/javascript">


   </script>
