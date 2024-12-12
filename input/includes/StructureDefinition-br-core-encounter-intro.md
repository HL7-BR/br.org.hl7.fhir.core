### Escopo/Uso

O encontro com o paciente é caracterizado pelo ambiente onde ele ocorre: ambulatórios, emergência, saúde domiciliar, internação e encontros virtuais. Abrange desde a pré-admissão até a alta. O paciente pode ser atendido por diferentes profissionais de saúde e mudar de local durante o encontro.

Devido ao amplo escopo do Encontro, nem todos os elementos serão relevantes em todos os ambientes. Por esse motivo, as informações relacionadas à admissão/alta são mantidas em um componente separado de Hospitalização dentro do Encontro. O elemento class é usado para distinguir entre essas configurações, o que orientará a validação adicional e aplicação de regras de negócio.

Existem variações significativas entre organizações e países sobre quais eventos de negócios iniciam um novo Encontro e o nível de agregação usado. Cada visita de um médico durante uma hospitalização pode gerar uma nova instância de Encontro. No entanto, essa instância pode ser agregada a uma única para toda a hospitalização, dependendo da prática local e dos sistemas usados. Em algumas jurisdições, grupos de Encontros podem ser criados por razões financeiras ou outras. Os Encontros podem ser agrupados em outros usando o elemento partOf. Veja os exemplos abaixo.

Instâncias de encontro podem existir antes do encontro real para transmitir informações de pré-admissão, incluindo o uso de elementos de encontros para refletir a data de início prevista ou os locais de encontro planejados. Nesse caso, o elemento Status é definido como 'Planejado'.

O componente de Hospitalização é projetado para armazenar informações detalhadas sobre eventos de hospitalização. Deve sempre corresponder ao período do encontro em questão. Caso o período divirja, deve-se utilizar outro encontro para registrar essas informações como parte da instância atual do encontro.

O procedimento e o encontro possuem referências mútuas, devendo cada um deles referir-se a procedimentos distintos: uma referência para o procedimento realizado durante o encontro (armazenada em Procedure.encounter) e outra para os casos em que um encontro é decorrente de um procedimento anterior (armazenada em Encounter.indication), como nos encontros de acompanhamento para resolver complicações de um procedimento prévio.

### Gerenciamento de status 

Um encontro passa por vários status no seu ciclo de vida: planejado, em andamento, concluído ou cancelado. Esses status são usados para diversos fins e a análise do histórico pode ser necessária. Isso envolve revisar todas as versões do encontro e analisar o período de cada uma. Para simplificar esse processo, um componente de histórico de status está incluído.

O campo de status não define por si só se um encontro é "admitido". O contexto e as políticas da organização determinam isso. Em unidades de cuidados intensivos ou clínicas comunitárias, status como "chegou", "triado" ou "em andamento" podem indicar internação.

O status "de licença" pode ou não fazer parte da admissão, dependendo se o paciente foi autorizado a ir para casa temporariamente. No caso de uma consulta ambulatorial, o paciente também pode ser considerado admitido. A definição de admitido varia, mas geralmente acreditamos que um paciente é admitido quando o status está em andamento.

### Extensões

A extensão padrão para o encontro é o Associated Encounter. Esta extensão deve ser utilizada para fazer referência a um encontro em que não há nenhuma propriedade que já defina essa associação no recurso.

### Limites e relacionamentos

O recurso Encontro não deve armazenar informações de agendamento; use o recurso Appointment para isso. Em muitos sistemas, encontros ambulatoriais (Encontro) e Appointment são usados juntos. No FHIR, Appointment serve para marcar uma data, enquanto Encontro contém informações sobre o encontro real, como a chegada do paciente.

Como tal, um encontro no status "planejado" não é idêntico ao compromisso que o agendou, mas é o encontro anterior à sua ocorrência real, com a expectativa de que o encontro seja atualizado à medida que avança para a conclusão. A chegada do paciente a um local não significa necessariamente o início do encontro (por exemplo, um paciente chega uma hora antes do que é realmente atendido por um médico).

Um agendamento é normalmente utilizado durante a fase de planejamento para pesquisar, localizar um horário disponível e então marcar a consulta. Uma vez que este processo esteja concluído e o agendamento esteja prestes a começar, ele será marcado como cumprido e vinculado ao encontro recém-criado. Este novo encontro pode iniciar com o status de "chegou" quando a pessoa for admitida em um estabelecimento, e depois continuar para a ala onde outra parte do encontro pode começar.

Os recursos de comunicação são usados para uma interação simultânea entre um profissional e um paciente onde não há contato direto. Os exemplos incluem uma mensagem telefônica ou a transmissão de alguma documentação de correspondência.

Não há duração registrada para um recurso de comunicação, mas ele pode conter horários de envio e recebimento.