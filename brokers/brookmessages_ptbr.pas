(*
  Brook framework, Messages (pt-BR) Unit

  Copyright (C) 2014 Silvio Clecio

  See the file LICENSE.txt, included in this distribution,
  for details about the copyright.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*)

unit BrookMessages_ptBR;

{$i brook.inc}

interface

uses
  BrookMessages;

procedure BrookTranslate;

implementation

procedure BrookTranslate;
begin
  SBrookInvalidRequestMethodError := 'Método de solicitação inválido: %s.';
  SBrookItemNotFoundError := 'Item "%s" não encontrado.';
  SBrookFileNotFoundError := 'Arquivo não encontrado: %s';
  SBrookNoRequestMethodError := 'REQUEST_METHOD não passado do servidor.';
  SBrookNoApplicationRegisteredError := 'Application não registrada.';
  SBrookApplicationAlreadyRegisteredError := 'A aplicação já está registrada.';
  SBrookRegiterTBrookActionError := 'Não é possível registrar o tipo TBrookAction diretamente.';
  SBrookActionAlreadyRegisteredError := 'A ação "%s" já está registrada.';
  SBrookDefaultActionAlreadyRegisteredError := 'Já existe uma ação padrão registrada.';
  SBrookPatternAlreadyRegisteredError := 'Já existe uma ação registrada com o padrão "%s".';
  SBrookRouterServiceAlreadyRegisteredError := 'O serviço de roteador já está registrado.';
  SBrookNoRouterServiceRegisteredError := 'Serviço de roteador não registrado.';
  SBrookNoRouteRegisteredError := 'Rota não registrada.';
  SBrookCfgFileNotFoundError := 'O arquivo de configuração não foi encontrado: "%s"';
  SBrookNotNilError := '"%s" não pode ser nulo.';
  SBrookEmptyLibraryNameError := 'O nome da biblioteca não pode ser vazio.';
  SBrookMethodNotAllowedError := 'Método HTTP não permitido para o recurso solicitado.';
  SBrookConstraintAlreadyRegisteredError := 'A restrição "%s" já está registrada.';
  SBrookConstraintsServiceAlreadyRegisteredError := 'O serviço de restrições já está registrado.';
  SBrookNoConstraintsServiceRegisteredError := 'Serviço de restrições não registrado.';
end;

end.
