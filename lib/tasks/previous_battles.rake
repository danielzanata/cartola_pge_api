desc "This task is used to insert previous battles"
task :previous_battles => :environment do
  puts "Inserting battles"
  # [{"t1" => t1, "t2" => t2, "round" => round }],
  battles = [{"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Lucas Batista ( vovo S.C )	", "round" => "	16	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Márcio Ayres ( Down Futball United )	", "round" => "	16	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Victor Gomes ( Victor Gomes CSC )	", "round" => "	16	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Fantasma ( Fantasma )	", "round" => "	16	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Fabio Gurgel ( FaBayern FC )	", "round" => "	16	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	16	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "round" => "	16	"},
  {"t1" => "	Alberto Perdigão ( PerdiCartola F.C )	", "t2" => "	Matheus Batista ( orlof F.C )	", "round" => "	16	"},
  {"t1" => "	Caio Batista ( Batista S.C )	", "t2" => "	Felipe Parteira ( Cearamor Messejana )	", "round" => "	16	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	16	"},
  {"t1" => "	Felipe Batista ( Cachagol FC )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	16	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	16	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	16	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	16	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	16	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Rennan Batista ( Chico e Gunha FC )	", "round" => "	16	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Vanduy Sales ( Vanduka FC )	", "round" => "	15	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Daniel Oliveira ( PIEDADE FCF )	", "round" => "	15	"},
  {"t1" => "	Fantasma ( Fantasma )	", "t2" => "	Danielson Filho ( Raimundões FC )	", "round" => "	15	"},
  {"t1" => "	Alberto Perdigão ( PerdiCartola F.C )	", "t2" => "	Fabio Gurgel ( FaBayern FC )	", "round" => "	15	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	15	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Márcio Ayres ( Down Futball United )	", "round" => "	15	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Matheus Batista ( orlof F.C )	", "round" => "	15	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "round" => "	15	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	15	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	15	"},
  {"t1" => "	Vladimir Gomes ( Emilly Acsa FC )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	15	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	15	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Marciano Araújo ( Cearabarça FC )	", "round" => "	15	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	15	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	15	"},
  {"t1" => "	Felipe Phelype ( IslandOfCatsFootball )	", "t2" => "	Rennan Batista ( Chico e Gunha FC )	", "round" => "	15	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	14	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	14	"},
  {"t1" => "	Alberto Perdigão ( PerdiCartola F.C )	", "t2" => "	Jorge Pereira ( CARAI DEMAIS )	", "round" => "	14	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Fantasma ( Fantasma )	", "round" => "	14	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	Cayo Luiz ( C.Luiz )	", "round" => "	14	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Daniel Oliveira ( PIEDADE FCF )	", "round" => "	14	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Fabio Gurgel ( FaBayern FC )	", "round" => "	14	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	14	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	14	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Renan Benevides ( simple man )	", "round" => "	14	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Danielson Filho ( Raimundões FC )	", "round" => "	14	"},
  {"t1" => "	Felipe Batista ( Cachagol FC )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	14	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	14	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	14	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Rennan Batista ( Chico e Gunha FC )	", "round" => "	14	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	14	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	13	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	José Carlos ( Boa Viagem E. Clube )	", "round" => "	13	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	13	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Jorge Pereira ( CARAI DEMAIS )	", "round" => "	13	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Emival Queiroz ( Emival SCCP )	", "round" => "	13	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Cayo Luiz ( C.Luiz )	", "round" => "	13	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Matheus Batista ( orlof F.C )	", "round" => "	13	"},
  {"t1" => "	Fantasma ( Fantasma )	", "t2" => "	Renan Benevides ( simple man )	", "round" => "	13	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	13	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	13	"},
  {"t1" => "	Vladimir Gomes ( Emilly Acsa FC )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	13	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	13	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	13	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Rennan Batista ( Chico e Gunha FC )	", "round" => "	13	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	13	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	13	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Marcelo Almeida ( Camisa10daGavea )	", "round" => "	12	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Lucas Batista ( vovo S.C )	", "round" => "	12	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Ronilson Costa ( Phode Chorarr FC )	", "round" => "	12	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Renan Benevides ( simple man )	", "round" => "	12	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Felipe Parteira ( Cearamor Messejana )	", "round" => "	12	"},
  {"t1" => "	Vladimir Gomes ( Emilly Acsa FC )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	12	"},
  {"t1" => "	Fantasma ( Fantasma )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	12	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	12	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Jorge Pereira ( CARAI DEMAIS )	", "round" => "	12	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	12	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	Rennan Batista ( Chico e Gunha FC )	", "round" => "	12	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	12	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	12	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	12	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	12	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	12	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Danielson Filho ( Raimundões FC )	", "round" => "	11	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Renan Benevides ( simple man )	", "round" => "	11	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	11	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Marciano Araújo ( Cearabarça FC )	", "round" => "	11	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "round" => "	11	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Emival Queiroz ( Emival SCCP )	", "round" => "	11	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	11	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Jorge Pereira ( CARAI DEMAIS )	", "round" => "	11	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Márcio Ayres ( Down Futball United )	", "round" => "	11	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Fantasma ( Fantasma )	", "round" => "	11	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	11	"},
  {"t1" => "	Victor Santiago ( VBSantiago FC )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	11	"},
  {"t1" => "	Caio Batista ( Batista S.C )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	11	"},
  {"t1" => "	Leonardo Brandão ( Guerreiros do Vila )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	11	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Rennan Batista ( Chico e Gunha FC )	", "round" => "	11	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	11	"},
  {"t1" => "	Felipe Phelype ( IslandOfCatsFootball )	", "t2" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "round" => "	10	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	10	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Vanduy Sales ( Vanduka FC )	", "round" => "	10	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Felipe Parteira ( Cearamor Messejana )	", "round" => "	10	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Marcelo Almeida ( Camisa10daGavea )	", "round" => "	10	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Fabio Gurgel ( FaBayern FC )	", "round" => "	10	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	10	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	10	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Victor Gomes ( Victor Gomes CSC )	", "round" => "	10	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	10	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	10	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	10	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	10	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	10	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	10	"},
  {"t1" => "	Felipe Phelype ( IslandOfCatsFootball )	", "t2" => "	Danielson Filho ( Raimundões FC )	", "round" => "	9	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Bruno Dias ( Valério Central F. C )	", "round" => "	9	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Marcelo Almeida ( Camisa10daGavea )	", "round" => "	9	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Cayo Luiz ( C.Luiz )	", "round" => "	9	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	9	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Matheus Batista ( orlof F.C )	", "round" => "	9	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Jorge Pereira ( CARAI DEMAIS )	", "round" => "	9	"},
  {"t1" => "	Alberto Perdigão ( PerdiCartola F.C )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	9	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	José Carlos ( Boa Viagem E. Clube )	", "round" => "	9	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	9	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	9	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	9	"},
  {"t1" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "t2" => "	Felipe Parteira ( Cearamor Messejana )	", "round" => "	9	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	9	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	9	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Emival Queiroz ( Emival SCCP )	", "round" => "	8	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	José Carlos ( Boa Viagem E. Clube )	", "round" => "	8	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Bruno Dias ( Valério Central F. C )	", "round" => "	8	"},
  {"t1" => "	Alberto Perdigão ( PerdiCartola F.C )	", "t2" => "	Vanduy Sales ( Vanduka FC )	", "round" => "	8	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Marcelo Almeida ( Camisa10daGavea )	", "round" => "	8	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Fabio Gurgel ( FaBayern FC )	", "round" => "	8	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	8	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Matheus Batista ( orlof F.C )	", "round" => "	8	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	8	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	8	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	8	"},
  {"t1" => "	Caio Batista ( Batista S.C )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	8	"},
  {"t1" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "t2" => "	Márcio Ayres ( Down Futball United )	", "round" => "	8	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	8	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	8	"},
  {"t1" => "	Felipe Phelype ( IslandOfCatsFootball )	", "t2" => "	Cayo Luiz ( C.Luiz )	", "round" => "	7	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Jorge Pereira ( CARAI DEMAIS )	", "round" => "	7	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Bruno Dias ( Valério Central F. C )	", "round" => "	7	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Ronilson Costa ( Phode Chorarr FC )	", "round" => "	7	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Rafael Costa ( Ferrim Saint-Germain )	", "round" => "	7	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Márcio Ayres ( Down Futball United )	", "round" => "	7	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	7	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	7	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Marciano Araújo ( Cearabarça FC )	", "round" => "	7	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Vanduy Sales ( Vanduka FC )	", "round" => "	7	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	7	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	7	"},
  {"t1" => "	Vladimir Gomes ( Emilly Acsa FC )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	7	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	7	"},
  {"t1" => "	Caio Batista ( Batista S.C )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	7	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	6	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Marciano Araújo ( Cearabarça FC )	", "round" => "	6	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	Marcelo Almeida ( Camisa10daGavea )	", "round" => "	6	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Márcio Ayres ( Down Futball United )	", "round" => "	6	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Ronilson Costa ( Phode Chorarr FC )	", "round" => "	6	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	6	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Bruno Dias ( Valério Central F. C )	", "round" => "	6	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	6	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Matheus Batista ( orlof F.C )	", "round" => "	6	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	6	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	6	"},
  {"t1" => "	Vladimir Gomes ( Emilly Acsa FC )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	6	"},
  {"t1" => "	Leonardo Brandão ( Guerreiros do Vila )	", "t2" => "	Cayo Luiz ( C.Luiz )	", "round" => "	6	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	6	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	6	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Vanduy Sales ( Vanduka FC )	", "round" => "	5	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	José Carlos ( Boa Viagem E. Clube )	", "round" => "	5	"},
  {"t1" => "	Vladimir Gomes ( Emilly Acsa FC )	", "t2" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "round" => "	5	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Bruno Dias ( Valério Central F. C )	", "round" => "	5	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	5	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Danielson Filho ( Raimundões FC )	", "round" => "	5	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Lucas Batista ( vovo S.C )	", "round" => "	5	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Rafael Costa ( Ferrim Saint-Germain )	", "round" => "	5	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	5	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	5	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	5	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	5	"},
  {"t1" => "	Alberto Perdigão ( PerdiCartola F.C )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	5	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	5	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	5	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Fabio Gurgel ( FaBayern FC )	", "round" => "	4	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Daniel Oliveira ( PIEDADE FCF )	", "round" => "	4	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Vanduy Sales ( Vanduka FC )	", "round" => "	4	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Marcelo Almeida ( Camisa10daGavea )	", "round" => "	4	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Rafael Costa ( Ferrim Saint-Germain )	", "round" => "	4	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	4	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Danielson Filho ( Raimundões FC )	", "round" => "	4	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	Marciano Araújo ( Cearabarça FC )	", "round" => "	4	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	4	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	4	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	4	"},
  {"t1" => "	Caio Batista ( Batista S.C )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	4	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	4	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	4	"},
  {"t1" => "	Leonardo Brandão ( Guerreiros do Vila )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	4	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Marciano Araújo ( Cearabarça FC )	", "round" => "	3	"},
  {"t1" => "	Vladimir Gomes ( Emilly Acsa FC )	", "t2" => "	Ronilson Costa ( Phode Chorarr FC )	", "round" => "	3	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Emival Queiroz ( Emival SCCP )	", "round" => "	3	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Lucas Batista ( vovo S.C )	", "round" => "	3	"},
  {"t1" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "t2" => "	Bruno Dias ( Valério Central F. C )	", "round" => "	3	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Cayo Luiz ( C.Luiz )	", "round" => "	3	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	José Carlos ( Boa Viagem E. Clube )	", "round" => "	3	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	3	"},
  {"t1" => "	Felipe Phelype ( IslandOfCatsFootball )	", "t2" => "	Vanduy Sales ( Vanduka FC )	", "round" => "	3	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	3	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	3	"},
  {"t1" => "	Reginaldo Ramos ( Hr Premoldados )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	3	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	3	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	3	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	3	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Marciano Araújo ( Cearabarça FC )	", "round" => "	2	"},
  {"t1" => "	Felipe Phelype ( IslandOfCatsFootball )	", "t2" => "	Renan Benevides ( simple man )	", "round" => "	2	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	2	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Marcelo Almeida ( Camisa10daGavea )	", "round" => "	2	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Ronilson Costa ( Phode Chorarr FC )	", "round" => "	2	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	José Carlos ( Boa Viagem E. Clube )	", "round" => "	2	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Alberto Perdigão ( PerdiCartola F.C )	", "round" => "	2	"},
  {"t1" => "	Fantasma ( Fantasma )	", "t2" => "	Matheus Batista ( orlof F.C )	", "round" => "	2	"},
  {"t1" => "	Jorge Pereira ( CARAI DEMAIS )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	2	"},
  {"t1" => "	Daniel Oliveira ( PIEDADE FCF )	", "t2" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "round" => "	2	"},
  {"t1" => "	Felipe Parteira ( Cearamor Messejana )	", "t2" => "	Leonardo Brandão ( Guerreiros do Vila )	", "round" => "	2	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	2	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	2	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	2	"},
  {"t1" => "	Danielson Filho ( Raimundões FC )	", "t2" => "	Jorge Pereira ( CARAI DEMAIS )	", "round" => "	1	"},
  {"t1" => "	Renan Benevides ( simple man )	", "t2" => "	Cayo Luiz ( C.Luiz )	", "round" => "	1	"},
  {"t1" => "	Caio Batista ( Batista S.C )	", "t2" => "	Fantasma ( Fantasma )	", "round" => "	1	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Victor Gomes ( Victor Gomes CSC )	", "round" => "	1	"},
  {"t1" => "	Lucas Batista ( vovo S.C )	", "t2" => "	José Carlos ( Boa Viagem E. Clube )	", "round" => "	1	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Bruno Dias ( Valério Central F. C )	", "round" => "	1	"},
  {"t1" => "	Alberto Perdigão ( PerdiCartola F.C )	", "t2" => "	Felipe Parteira ( Cearamor Messejana )	", "round" => "	1	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "round" => "	1	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Vladimir Gomes ( Emilly Acsa FC )	", "round" => "	1	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Marcelo Almeida ( Camisa10daGavea )	", "round" => "	1	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	1	"},
  {"t1" => "	Ronilson Costa ( Phode Chorarr FC )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	1	"},
  {"t1" => "	Leonardo Brandão ( Guerreiros do Vila )	", "t2" => "	Daniel Oliveira ( PIEDADE FCF )	", "round" => "	1	"},
  {"t1" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "t2" => "	Felipe Phelype ( IslandOfCatsFootball )	", "round" => "	1	"},
  {"t1" => "	Fabio Gurgel ( FaBayern FC )	", "t2" => "	Lucas Batista ( vovo S.C )	", "round" => "	17	"},
  {"t1" => "	Cayo Luiz ( C.Luiz )	", "t2" => "	Daniel Oliveira ( PIEDADE FCF )	", "round" => "	17	"},
  {"t1" => "	Marciano Araújo ( Cearabarça FC )	", "t2" => "	Ronilson Costa ( Phode Chorarr FC )	", "round" => "	17	"},
  {"t1" => "	José Carlos ( Boa Viagem E. Clube )	", "t2" => "	Renan Benevides ( simple man )	", "round" => "	17	"},
  {"t1" => "	Vanduy Sales ( Vanduka FC )	", "t2" => "	Cleber Ramos ( 47 DO SEGUNDO TEMPO FC )	", "round" => "	17	"},
  {"t1" => "	Rafael Costa ( Ferrim Saint-Germain )	", "t2" => "	Fantasma ( Fantasma )	", "round" => "	17	"},
  {"t1" => "	Márcio Ayres ( Down Futball United )	", "t2" => "	Danielson Filho ( Raimundões FC )	", "round" => "	17	"},
  {"t1" => "	Felipe Phelype ( IslandOfCatsFootball )	", "t2" => "	Caio Batista ( Batista S.C )	", "round" => "	17	"},
  {"t1" => "	Bruno Dias ( Valério Central F. C )	", "t2" => "	Victor Santiago ( VBSantiago FC )	", "round" => "	17	"},
  {"t1" => "	Vladimir Gomes ( Emilly Acsa FC )	", "t2" => "	Felipe Parteira ( Cearamor Messejana )	", "round" => "	17	"},
  {"t1" => "	Matheus Batista ( orlof F.C )	", "t2" => "	Vanderson Cabral ( FC Cara Seca )	", "round" => "	17	"},
  {"t1" => "	Emival Queiroz ( Emival SCCP )	", "t2" => "	Rennan Batista ( Chico e Gunha FC )	", "round" => "	17	"},
  {"t1" => "	Marcelo Almeida ( Camisa10daGavea )	", "t2" => "	Felipe Batista ( Cachagol FC )	", "round" => "	17	"},
  {"t1" => "	Victor Gomes ( Victor Gomes CSC )	", "t2" => "	Marcelo Faustino ( Palestra Cangaceiro )	", "round" => "	17	"},
  {"t1" => "	Alberto Perdigão ( PerdiCartola F.C )	", "t2" => "	Reginaldo Ramos ( Hr Premoldados )	", "round" => "	17	"},
  {"t1" => "	Leonardo Brandão ( Guerreiros do Vila )	", "t2" => "	Jorge Pereira ( CARAI DEMAIS )	", "round" => "	17	"}
]

  battles.each do |battle|
    season = Api::V1::Season.last
    round = Api::V1::Round.find{|r| r.number == battle["round"].to_i}
    dispute = Api::V1::DisputeMonth.find{|d| d.season_id == season.id and d.dispute_rounds.include?(battle["round"].to_i)}
    round = Api::V1::Round.create(number: battle["round"].to_i, golden: Api::V1::Round.check_golden(battle["round"].to_i),
      season: Api::V1::Season.last, finished: true, dispute_month: dispute) if round.nil?
    first_team_name = battle["t1"][battle["t1"].rindex("(")+2..battle["t1"].rindex(")")-2]
    second_team_name = battle["t2"][battle["t2"].rindex("(")+2..battle["t2"].rindex(")")-2]
    first_team ||=  Api::V1::Team.where("name ilike '%#{first_team_name}%'").limit(1).first
    second_team ||= Api::V1::Team.where("name ilike '%#{second_team_name}%'").limit(1).first
    first_team.nil? ? first_id = nil : first_id = first_team.id
    second_team.nil? ? second_id = nil : second_id = second_team.id
    Api::V1::Battle.create( round_id: round.id, first_id: first_id, second_id: second_id )
  end

  # (1..26).to_a.each do |round_number|
  #   round = Api::V1::Round.find{|r| r.number == round_number}
  #   Api::V1::FinalScore.perform(round) unless round.nil?
  # end
end
