Este perfil restringe o recurso [Imagingstudy](https://hl7.org/fhir/R4/imagingstudy.html) que representa o conteúdo produzido em um estudo de imagem DICOM. Um estudo compreende um conjunto de séries, cada uma das quais inclui um conjunto de Exemplos de Pares Serviço-Objeto - Service-Object Pair Instances (SOP Instances - imagens ou outros dados) adquiridos ou produzidos em um contexto comum. Uma série é de apenas uma modalidade (por exemplo, raio-X, TC, RM, ultrassom), mas um estudo pode ter várias séries de modalidades diferentes.

### Escopo e uso

O [br-core-imagingstudy](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-imagingStudy.html) fornece informações sobre um estudo de imagem DICOM e as séries e objetos de imagem nesse estudo. Ele também fornece informações sobre como recuperar essas informações (em um formato DICOM nativo ou em um formato renderizado, como JPEG). O [br-core-imagingstudy](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-imagingStudy.html) é usado para disponibilizar informações sobre todas as partes de um único estudo DICOM.

Este recurso fornece mapeamentos de seus elementos para atributos DICOM. Os atributos DICOM são identificados por uma tag de 32 bits, apresentada em formato canônico como dois valores hexadecimais de quatro dígitos entre parênteses e separados por uma vírgula, por exemplo (0008,103E). O nome e a representação do valor (tipo de dados) de cada atributo podem ser encontrados no [DICOM Parte 6 Data Dictionary](https://dicom.nema.org/medical/dicom/current/output/html/part06.html). O uso dos atributos no contexto de objetos de informação, incluindo descrição detalhada do uso, pode ser encontrado em [DICOM Parte 3 Information Object Definitions](https://dicom.nema.org/medical/dicom/current/output/html/part03.html). Os atributos usados nos modelos de informação de consulta DICOM, como "Número de Instâncias em Estudo", podem ser encontrados no [DICOM Parte 4 Anexo C](https://dicom.nema.org/medical/dicom/current/output/html/part04.html#chapter_C).

O [br-core-imagingstudy](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-imagingStudy.html) fornece acesso a informações DICOM significativas, mas só eliminará a necessidade de consulta DICOM (por exemplo, QIDO-RS) nos casos mais simples. As instâncias DICOM não são armazenadas no recurso imagingstudy; é necessário o uso de um servidor DICOM WADO-RS ou outro mecanismo de armazenamento.

Um [imagingstudy](https://hl7.org/fhir/R4/imagingstudy.html) DEVERÁ referenciar um Estudo DICOM e PODE referenciar um subconjunto desse Estudo. Mais de um [imagingstudy](https://hl7.org/fhir/R4/imagingstudy.html) PODE referenciar o mesmo Estudo DICOM ou diferentes subconjuntos do mesmo Estudo DICOM.

### Caso de uso da RNDS

Este perfil ainda não está implementado na RNDS.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada Perfil [br-core-imagingstudy](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-imagingStudy.html) deve ter:**
1.	Status – situação (registrado | disponível | cancelado | inserido-por-erro | desconhecido)
2.	Subject - Quem ou o que é o sujeito do estudo
3.	Series.uid – instância da série DICOM
4.	Series.modality – modalidade da instância das séries
5.	Performer.actor – quem realizou a série
6.	Instance.uid – UID exemplo 
7.	Instance.sopClass – tipo da classe DICOM

Cada Perfil [br-core-imagingstudy](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-imagingStudy.html) deve oferecer suporte a:
Não há elementos.

### Limites e relacionamentos

O recurso [br-core-imagingstudy](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-imagingStudy.html) é usado para armazenar imagens DICOM e informações associadas. Use o perfil [Media](https://hl7.org/fhir/R4/media.html) do FHIR R4 para rastrear imagens, vídeo ou áudio não DICOM. O perfil [Binary](https://hl7.org/fhir/R4/binary.html) pode ser usado para armazenar conteúdo arbitrário. [DocumentReference](https://hl7.org/fhir/R4/documentreference.html) permite indexação e recuperação de “documentos” clínicos com metadados relevantes.

Este recurso é referenciado por [ChargeItem](https://hl7.org/fhir/R4/chargeitem.html#ChargeItem), [ClinicalImpression](https://hl7.org/fhir/R4/clinicalimpression.html#ClinicalImpression), [br-core-diagnosticreport](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) e [br-core-observation](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation.html).