$(document).ready(function(){
    $("#formulario-cursos").validate({
       rules: { 
        curso_id: {required: true, minlength: 3, maxlength: 10},
        curso_nome: { required: true, minlength: 3, maxlength: 50},
        curso_requisito: { required: true, minlength: 3, maxlength: 255},
        curso_ementa: { required: false, minlength: 3, maxlength: 255},
        curso_carga_horaria: { required: false, minlength: 3, maxlength: 5},
        curso_preco: { required: false, minlength: 3, maxlength: 10},          
       },
       messages: {
        curso_id: { 
          required: " Este campo é obrigatório",
          minlength: " O campo id deve possuir no mínimo 3 números",
          maxlength: " O campo id deve possuir no máximo 10 números"},
       curso_nome: { 
          required: " Este campo é obrigatório",
          minlength: " O campo nome deve possuir no mínimo 3 letras",
          maxlength: " O campo nome deve possuir no máximo 50 letras"},
       curso_requisito: {
          required: " Este campo é obrigatório",
          minlength: " O campo requisito deve possuir no mínimo 3 caracteres",
          maxlength: " O campo requisito deve possuir no máximo 255 caracteres"},
       curso_ementa: {
          minlength: " O campo ementa deve possuir no mínimo 3 caracteres",
          maxlength: " O campo ementa deve possuir no máximo 255 caracteres"},
       curso_carga_horaria: {
          minlength: " O campo carga horária deve possuir no mínimo 3 caracteres",
          maxlength: " O campo carga horária possuir no máximo 5 caracteres"},
       curso_preco: {
          minlength: " O campo preço deve possuir no mínimo 3 números",
          maxlength: " O campo preço deve possuir no máximo 10 números"},        
       },
    });

    $("#formulario-instrutores").validate({
      rules: {
        instrutor_id: {required: true, minlength: 3, maxlength: 11},
        instrutor_nome: {required: true, minlength: 3, maxlength: 50},
        instrutor_email: {required: true, minlength: 3, maxlength: 50},
        instrutor_valor: {required: false, minlength: 3, maxlength: 10},
        instrutor_login: {required: true, minlength: 3, maxlength: 20},
        instrutor_senha: {required: true, minlength: 3, maxlength: 255},
      },
      messages: {
        instrutor_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id deve possuir no mínimo 3 caracteres",
          maxlength: " O campo id deve possuir no máximo 11 caracteres"},
        instrutor_nome: {
          required: " Este campo é obrigatório",
          minlength: " O campo nome deve possuir no mínimo 3 caracteres",
          maxlength: " O campo nome deve possuir no máximo 50 caracteres"},
        instrutor_email: {
          required: " Este campo é obrigatório",
          minlength: " O campo email deve possuir no mínimo 3 caracteres",
          maxlength: " O campo email deve possuir no máximo 50 caracteres"},
        instrutor_valor: {
          minlength: " O campo valor-hora deve possuir no mínimo 3 caracteres",
          maxlength: " O campo valor-hora deve possuir no máximo 10 caracteres"},
        instrutor_login: {
          required: " Este campo é obrigatório",
          minlength: " O campo login deve possuir no mínimo 3 caracteres",
          maxlength: " O campo login deve possuir no máximo 20 caracteres"},
        instrutor_senha: {
          required: " Este campo é obrigatório",
          minlength: " O campo senha deve possuir no mínimo 3 caracteres",
          maxlength: " O campo senha deve possuir no máximo 255 caracteres"},           
        },
    })

    $("#formulario-matriculas").validate({
      rules: {
        matricula_id: {required: true, minlength: 3, maxlength: 10},
        matricula_turmas_id: {required: true, minlength: 3, maxlength: 10},
        matricula_alunos_id: {required: true, minlength: 3, maxlength: 11},
        matricula_data: {required: false, dateITA: true},
        matricula_nota: {required: false, minlength: 3, maxlength: 11},
      },
      messages: {
        matricula_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id deve possuir no mínimo 3 caracteres",
          maxlength: " O campo id deve possuir no máximo 10 caracteres"},
        matricula_turmas_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id da turma deve possuir no mínimo 3 caracteres",
          maxlength: " O campo id da turma deve possuir no máximo 10 caracteres"},
        matricula_alunos_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id do aluno deve possuir no mínimo 3 caracteres",
          maxlength: " O campo id do aluno deve possuir no máximo 11 caracteres"},
        matricula_nota: {
          minlength: " O campo nota deve possuir no mínimo 3 caracteres",
          maxlength: " O campo nota deve possuir no máximo 11 caracteres"},
      },
    })

    $("#formulario-turmas").validate({
      rules: {
        turma_id: {required: true, minlength: 3, maxlength: 10},
        turma_instrutores_id: {required: true, minlength: 3, maxlength: 11},
        turma_cursos_id: {required: true, minlength: 3, maxlength: 10},
        turma_data_inicio: {required: false, dateITA: true},
				turma_data_final: {required: false, dateITA: true, greaterThan: "#turma_data_inicio"},
        turma_carga_horaria: {required: false, minlength: 3, maxlength: 5},
      },
      messages: {
        turma_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id deve possuir no mínimo 3 caracteres",
          maxlength: " O campo id deve possuir no máximo 10 caracteres"},
        turma_instrutores_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id do instrutor deve possuir no mínimo 3 caracteres",
          maxlength: " O campo id do instrutor deve possuir no máximo 11 caracteres"},
        turma_cursos_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id do curso deve possuir no mínimo 3 caracteres",
					maxlength: " O campo id do curso deve possuir no máximo 10 caracteres"},
				
        turma_carga_horaria: {
          minlength: " O campo carga horária deve possuir no mínimo 3 caracteres",
          maxlength: " O campo carga horária deve possuir no máximo 5 caracteres"},
      }
    })

    $("#formulario-adm").validate({
    rules: {
        adm_id: {required: true, minlength: 3, maxlength: 11},
        adm_nome: {required: true, minlength: 3, maxlength: 50},
        adm_login: {required: true, minlength: 3, maxlength: 20},
        adm_senha: {required: true, minlength: 3, maxlength: 255},
      },
      messages: {
        adm_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id deve possuir no mínimo 3 caracteres",
          maxlength: " O campo id deve possuir no máximo 11 caracteres"},
        adm_nome: {
          required: " Este campo é obrigatório",
          minlength: " O campo nome deve possuir no mínimo 3 caracteres",
          maxlength: " O campo nome deve possuir no máximo 50 caracteres"},
        adm_login: {
          required: " Este campo é obrigatório",
          minlength: " O campo login deve possuir no mínimo 3 caracteres",
          maxlength: " O campo login deve possuir no máximo 20 caracteres"},
        adm_senha: {
          required: " Este campo é obrigatório",
          minlength: " O campo senha deve possuir no mínimo 3 caracteres",
          maxlength: " O campo senha deve possuir no máximo 255 caracteres"},
      }
  })

    $("#formulario-alunos").validate({
      rules: {
        aluno_id: {required: true, minlength: 3, maxlength: 11},
        aluno_cpf: {required: true, minlength: 3, maxlength: 11},
        aluno_nome: {required: true, minlength: 3, maxlength: 50},
        aluno_email: {required: true, minlength: 3, maxlength: 50},
        aluno_celular: {required: true, minlength: 3, maxlength: 14},
        aluno_login: {required: true, minlength: 3, maxlength: 20},
        aluno_senha: {required: true, minlength: 3, maxlength: 255},
        aluno_endereco: {required: false, minlength: 3, maxlength: 50},
        aluno_cidade: {required: false, minlength: 3, maxlength: 30},
        aluno_bairro: {required: false, minlength: 3, maxlength: 30},
        aluno_cep: {required: false, minlength: 3, maxlength: 9},  
      },
      messages: {
        aluno_id: {
          required: " Este campo é obrigatório",
          minlength: " O campo id deve possuir no mínimo 3 caracteres",
          maxlength: " O campo id deve possuir no máximo 11 caracteres"},
        aluno_cpf: {
          required: " Este campo é obrigatório",
          minlength: " O campo cpf deve possuir no mínimo 3 caracteres",
          maxlength: " O campo cpf deve possuir no máximo 11 caracteres"},
        aluno_nome: {
          required: " Este campo é obrigatório",
          minlength: " O campo nome deve possuir no mínimo 3 caracteres",
          maxlength: " O campo nome deve possuir no máximo 50 caracteres"},
        aluno_email: {
          required: " Este campo é obrigatório",
          minlength: " O campo email deve possuir no mínimo 3 caracteres",
          maxlength: " O campo email deve possuir no máximo 50 caracteres"},
        aluno_celular: {
          required: " Este campo é obrigatório",
          minlength: " O campo celular deve possuir no mínimo 3 caracteres",
          maxlength: " O campo celular deve possuir no máximo 14 caracteres"},
        aluno_login: {
          required: " Este campo é obrigatório",
          minlength: " O campo login deve possuir no mínimo 3 caracteres",
          maxlength: " O campo login deve possuir no máximo 20 caracteres"},
        aluno_senha: {
          required: " Este campo é obrigatório",
          minlength: " O campo senha deve possuir no mínimo 3 caracteres",
          maxlength: " O campo senha deve possuir no máximo 255 caracteres"},
        aluno_endereco: {
          minlength: " O campo endereço deve possuir no mínimo 3 caracteres",
          maxlength: " O campo endereço deve possuir no máximo 50 caracteres"},
        aluno_cidade: {
          minlength: " O campo cidade deve possuir no mínimo 3 caracteres",
          maxlength: " O campo cidade deve possuir no máximo 30 caracteres"},
        aluno_bairro: {
          minlength: " O campo bairro deve possuir no mínimo 3 caracteres",
          maxlength: " O campo bairro deve possuir no máximo 30 caracteres"},
        aluno_cep: {
          minlength: " O campo cep deve possuir no mínimo 3 caracteres",
          maxlength: " O campo cep deve possuir no máximo 9 caracteres"},
      }
    })
	})
	
	jQuery.validator.addMethod("greaterThan", function(value, element, params) {
		if (!/Invalid|NaN/.test(new Date(value))) {
			return new Date(value) > new Date($(params).val());
		}

		return isNaN(value) && isNaN($(params).val()) 
			|| (Number(value) > Number($(params).val())); 
	},'Essa data deve ser maior que a data inicial!');

  jQuery.validator.addMethod("dateITA", function(value, element) {
    var check = false;
    var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
    if( re.test(value)) {
      var adata = value.split('/');
      var gg = parseInt(adata[0],10);
      var mm = parseInt(adata[1],10);
      var aaaa = parseInt(adata[2],10);
      var xdata = new Date(aaaa,mm-1,gg);
      var currentdata = new Date();   

      if (xdata.getFullYear() >= currentdata.getFullYear()-3) {
        check = false;
      }   
      else if ( ( xdata.getFullYear() === aaaa ) && ( xdata.getMonth() === mm - 1 ) && ( xdata.getDate() === gg )){
        check = true;
      } else {
        check = false;
      }
    } else {
        check = false;
    }
    return this.optional(element) || check;
  }, " Por favor, insira uma data válida no formato dd/mm/aaaa");

	$("#btn-cursos").click(() => {
		$("#formulario-cursos").show();
		$("#formulario-matriculas").hide();
		$("#formulario-instrutores").hide();
		$("#formulario-turmas").hide();
		$("#formulario-adm").hide();
		$("#formulario-alunos").hide();
	});

	$("#btn-matriculas").click(() => {
		$("#formulario-cursos").hide();
		$("#formulario-matriculas").show();
		$("#formulario-instrutores").hide();
		$("#formulario-turmas").hide();
		$("#formulario-adm").hide();
		$("#formulario-alunos").hide();
	});

	$("#btn-instrutores").click(() => {
		$("#formulario-cursos").hide();
		$("#formulario-matriculas").hide();
		$("#formulario-instrutores").show();
		$("#formulario-turmas").hide();
		$("#formulario-adm").hide();
		$("#formulario-alunos").hide();
	});

	$("#btn-turmas").click(() => {
		$("#formulario-cursos").hide();
		$("#formulario-matriculas").hide();
		$("#formulario-instrutores").hide();
		$("#formulario-turmas").show();
		$("#formulario-adm").hide();
		$("#formulario-alunos").hide();
	});

	$("#btn-adm").click(() => {
		$("#formulario-cursos").hide();
		$("#formulario-matriculas").hide();
		$("#formulario-instrutores").hide();
		$("#formulario-turmas").hide();
		$("#formulario-adm").show();
		$("#formulario-alunos").hide();
	});

	$("#btn-alunos").click(() => {
		$("#formulario-cursos").hide();
		$("#formulario-matriculas").hide();
		$("#formulario-instrutores").hide();
		$("#formulario-turmas").hide();
		$("#formulario-adm").hide();
		$("#formulario-alunos").show();
	});